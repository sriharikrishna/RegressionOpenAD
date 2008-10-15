#################################################################
# This file is part of the RegressionTests suite for OpenAD/F,	#
# which is distributed under the BSD license as detailed in the	#
# COPYRIGHT file in the top level directory of this package.	#
#################################################################

######################################################
# pick your compiler
######################################################
ifndef F90C
F90C=ifort
endif

ifeq ($(F90C),g95)
FIXEDFORMAT=-ffixed-form
FREEFORMAT=-ffree-form
F90FLAGS=-g -O0 
CC=gcc
endif

ifeq ($(F90C),gfortran)
FIXEDFORMAT=-ffixed-form
FREEFORMAT=-ffree-form
F90FLAGS=-g -O0 
CC=gcc
endif


ifeq ($(F90C),ifort)
FIXEDFORMAT=-fixed
FREEFORMAT=-free
F90FLAGS=-check all -g -fpe0 -O0 -traceback 
CC=icc
endif

ifeq ($(F90C),f95)
FIXEDFORMAT=-fixed
FREEFORMAT=-free -132
F90FLAGS=-g -w=unused
CC=gcc
endif

ifeq ($(F90C),openf95)
FIXEDFORMAT=-fixedform
FREEFORMAT=-freeform
F90FLAGS=-g 
CC=opencc
endif

######################################################

MODULES= w2f__types.o OAD_active.o

ifeq ($(MAJOR_MODE),adm)
MODULES+=		\
OAD_cp.o		\
OAD_dct.o		\
OAD_graph.o		\
OAD_rev.o		\
OAD_tape.o		\
iaddr.o                         
PP_FLAGS=
ifeq ($(MINOR_MODE),joint)
CP_FLAG=-I
else
CP_FLAG=
endif
endif

ifeq ($(MAJOR_MODE),tlm)
PP_FLAGS=-f
endif

ifeq ($(MAJOR_MODE),trace)
PP_FLAGS=
MODULES+=OAD_rev.o OAD_trace.o                   
endif

MODULES+= all_globals_mod.xb.x2w.w2f.pp.o 

all: head.xb.x2w.w2f.pp.f

ifndef OPENADROOT
  $(error "Error:  environment variable OPENADROOT not defined!")
endif

ifndef OPEN64ROOT
  $(error "Error:  environment variable OPEN64ROOT not defined!")
endif

ifndef OPENADFORTTKROOT
  $(error "Error:  environment variable OPENADFORTTKROOT not defined!")
endif

ifndef XAIFSCHEMAROOT
  $(error "Error:  environment variable XAIFSCHEMAROOT not defined!")
endif

ifndef XAIFBOOSTERROOT
  $(error "Error:  environment variable XAIFBOOSTERROOT not defined!")
endif

LN=ln -sf

RM=rm -rf

######################################################
# transformation
######################################################

# paste the globals module into the head file 
# so we can do the single file transformation
head_sf.f : all_globals_mod.f head.f 
	cat $^ > $@

# F -> WHIRL
head_sf.B: head_sf.f mfef90
	./mfef90 -z -F -N132 $<

# WHIRL -> XAIF
head_sf.xaif : head_sf.B whirl2xaif
	./whirl2xaif -N -n -o $@ $<

# XAIF -> XAIF'
head_sf.xb.xaif : head_sf.xaif xaif.xsd xaif_base.xsd xaif_inlinable_intrinsics.xsd xaif_derivative_propagator.xsd xaif_output.xsd xaifBooster
	./xaifBooster -v -V -i $< -c ${XAIFSCHEMAROOT}/schema/examples/inlinable_intrinsics.xaif -o $@ $(CP_FLAG)

# XAIF' -> WHIRL'
head_sf.xb.x2w.B : head_sf.xb.xaif xaif2whirl
	./xaif2whirl --structured head_sf.B $<

# WHIRL' -> F'
head_sf.xb.x2w.w2f.f: head_sf.xb.x2w.B whirl2f whirl2f_be
	./whirl2f -openad $<

# postprocess F'
head_sf.xb.x2w.w2f.pp.f: head_sf.xb.x2w.w2f.f multi-pp.pl ad_inline.f
	perl multi-pp.pl $(PP_FLAGS) $<

# extract the transformed globals module so we the right order of 
# compilation with respect to the globals checkpoint module
all_globals_mod.xb.x2w.w2f.pp.f: head_sf.xb.x2w.w2f.pp.f
	cat $< | sed -n '/MODULE all_globals_mod/,/END MODULE/p' > $@

# remove the transformed globals module from the transformed head file
head.xb.x2w.w2f.pp.f: head_sf.xb.x2w.w2f.pp.f
	cat $< | sed '/MODULE all_globals_mod/,/END MODULE/d' > $@

# setup some links
%.xsd:
	@$(LN) ${XAIFSCHEMAROOT}/schema/$@ .

mfef90: 
	@$(LN) ${OPEN64ROOT}/crayf90/sgi/mfef90 .

whirl2xaif xaif2whirl whirl2sexp sexp2whirl: 
	@$(LN) ${OPENADFORTTKROOT}/bin/$@ .

%.pl: 
	@$(LN) ${OPENADFORTTKROOT}/bin/$@ .

whirl2f whirl2f_be:
	@$(LN) ${OPEN64ROOT}/whirl2f/$@ .

ir_b2a: 
	@$(LN) ${OPEN64ROOT}/ir_tools/ir_b2a

w2f__types.f90 iaddr.c:
	@$(LN) ${OPENADROOT}/runTimeSupport/all/$@ .

ad_inline.f OAD_cp.f90 OAD_dct.f90 OAD_graph.f90 OAD_rev.f90 OAD_tape.f90 OAD_trace.f90:
	@$(LN) ${OPENADROOT}/runTimeSupport/simple/$@ .

OAD_active.f90:
	@$(LN) ${OPENADROOT}/runTimeSupport/${SCALAR_OR_VECTOR}/$@ .

######################################################
# compilation
######################################################

# make the driver
driver: $(MODULES) head.xb.x2w.w2f.pp.o driver.o 
	$(F90C) $(F90FLAGS) $^ -o $@ 

run: params.conf tmpOutput driver 
	./driver

%.o:%.f
	$(F90C) $(F90FLAGS) $(FIXEDFORMAT) -c $<

%.o:%.f90
	$(F90C) $(F90FLAGS) $(FREEFORMAT) -c $<

%.o:%.c
	$(CC) -c $<

######################################################
# miscellaneous
######################################################

tmpOutput: 
	@mkdir -p $@

testAllclean:
	@$(RM) head_sf.* head.* driver* params.conf all_globals_* ad_template.f *mod-whirl tmpOutput data.tmp OAD_active.*

clean: testAllclean
	$(RM) *.xsd 
	$(RM) mfef90 whirl2xaif whirl2sexp sexp2whirl ir_b2a xaif2whirl whirl2f_be whirl2f *.pl xaifBooster .lastRun w2f__types.f90 iaddr.c ad_inline.f OAD_cp.f90 OAD_dct.f90 OAD_graph.f90 OAD_rev.f90 OAD_tape.f90 OAD_trace.f90 oad_tr_*.xml
	$(RM) *.mod *.o

objs test : 

.PHONY: all objs test clean testAllclean run
