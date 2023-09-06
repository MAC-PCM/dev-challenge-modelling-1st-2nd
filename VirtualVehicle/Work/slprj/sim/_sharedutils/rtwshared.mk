###########################################################################
## Makefile generated for component 'rtwshared'. 
## 
## Makefile     : rtwshared.mk
## Generated on : Fri Jul 14 12:57:49 2023
## Final product: ./rtwshared.lib
## Product type : static library
## 
###########################################################################

###########################################################################
## MACROS
###########################################################################

# Macro Descriptions:
# PRODUCT_NAME            Name of the system to build
# MAKEFILE                Name of this makefile
# COMPILER_COMMAND_FILE   Compiler command listing model reference header paths
# CMD_FILE                Command file
# MODELLIB                Static library target

PRODUCT_NAME              = rtwshared
MAKEFILE                  = rtwshared.mk
MATLAB_ROOT               = C:/PROGRA~1/MATLAB/R2022b
MATLAB_BIN                = C:/PROGRA~1/MATLAB/R2022b/bin
MATLAB_ARCH_BIN           = $(MATLAB_BIN)/win64
START_DIR                 = C:/Users/Thomas/DOCUME~1/EcoCAR/DEVCHA~1/Model/1st-year/VIRTUA~1/Work
SOLVER                    = 
SOLVER_OBJ                = 
CLASSIC_INTERFACE         = 0
TGT_FCN_LIB               = ISO_C
MODEL_HAS_DYNAMICALLY_LOADED_SFCNS = 
RELATIVE_PATH_TO_ANCHOR   = ../../..
COMPILER_COMMAND_FILE     = rtwshared_comp.rsp
CMD_FILE                  = rtwshared.rsp
C_STANDARD_OPTS           = -fwrapv
CPP_STANDARD_OPTS         = -fwrapv
MODELLIB                  = rtwshared.lib

###########################################################################
## TOOLCHAIN SPECIFICATIONS
###########################################################################

# Toolchain Name:          MinGW64 | gmake (64-bit Windows)
# Supported Version(s):    6.x
# ToolchainInfo Version:   2022b
# Specification Revision:  1.0
# 
#-------------------------------------------
# Macros assumed to be defined elsewhere
#-------------------------------------------

# C_STANDARD_OPTS
# CPP_STANDARD_OPTS
# MINGW_ROOT
# MINGW_C_STANDARD_OPTS

#-----------
# MACROS
#-----------

WARN_FLAGS            = -Wall -W -Wwrite-strings -Winline -Wstrict-prototypes -Wnested-externs -Wpointer-arith -Wcast-align
WARN_FLAGS_MAX        = $(WARN_FLAGS) -Wcast-qual -Wshadow
CPP_WARN_FLAGS        = -Wall -W -Wwrite-strings -Winline -Wpointer-arith -Wcast-align
CPP_WARN_FLAGS_MAX    = $(CPP_WARN_FLAGS) -Wcast-qual -Wshadow
MW_EXTERNLIB_DIR      = $(MATLAB_ROOT)/extern/lib/win64/mingw64
SHELL                 = %SystemRoot%/system32/cmd.exe

TOOLCHAIN_SRCS = 
TOOLCHAIN_INCS = 
TOOLCHAIN_LIBS = -lws2_32

#------------------------
# BUILD TOOL COMMANDS
#------------------------

# C Compiler: GNU C Compiler
CC_PATH = $(MINGW_ROOT)
CC = "$(CC_PATH)/gcc"

# Linker: GNU Linker
LD_PATH = $(MINGW_ROOT)
LD = "$(LD_PATH)/g++"

# C++ Compiler: GNU C++ Compiler
CPP_PATH = $(MINGW_ROOT)
CPP = "$(CPP_PATH)/g++"

# C++ Linker: GNU C++ Linker
CPP_LD_PATH = $(MINGW_ROOT)
CPP_LD = "$(CPP_LD_PATH)/g++"

# Archiver: GNU Archiver
AR_PATH = $(MINGW_ROOT)
AR = "$(AR_PATH)/ar"

# MEX Tool: MEX Tool
MEX_PATH = $(MATLAB_ARCH_BIN)
MEX = "$(MEX_PATH)/mex"

# Download: Download
DOWNLOAD =

# Execute: Execute
EXECUTE = $(PRODUCT)

# Builder: GMAKE Utility
MAKE_PATH = %MATLAB%/bin/win64
MAKE = "$(MAKE_PATH)/gmake"


#-------------------------
# Directives/Utilities
#-------------------------

CDEBUG              = -g
C_OUTPUT_FLAG       = -o
LDDEBUG             = -g
OUTPUT_FLAG         = -o
CPPDEBUG            = -g
CPP_OUTPUT_FLAG     = -o
CPPLDDEBUG          = -g
OUTPUT_FLAG         = -o
ARDEBUG             =
STATICLIB_OUTPUT_FLAG =
MEX_DEBUG           = -g
RM                  = @del
ECHO                = @echo
MV                  = @move
RUN                 =

#----------------------------------------
# "Faster Builds" Build Configuration
#----------------------------------------

ARFLAGS              = ruvs
CFLAGS               = -c $(MINGW_C_STANDARD_OPTS) -m64 \
                       -O0
CPPFLAGS             = -c $(CPP_STANDARD_OPTS) -m64 \
                       -O0
CPP_LDFLAGS          =  -static -m64
CPP_SHAREDLIB_LDFLAGS  = -shared -Wl,--no-undefined \
                         -Wl,--out-implib,$(notdir $(basename $(PRODUCT))).lib
DOWNLOAD_FLAGS       =
EXECUTE_FLAGS        =
LDFLAGS              =  -static -m64
MEX_CPPFLAGS         =
MEX_CPPLDFLAGS       =
MEX_CFLAGS           =
MEX_LDFLAGS          =
MAKE_FLAGS           = -f $(MAKEFILE)
SHAREDLIB_LDFLAGS    = -shared -Wl,--no-undefined \
                       -Wl,--out-implib,$(notdir $(basename $(PRODUCT))).lib



###########################################################################
## OUTPUT INFO
###########################################################################

PRODUCT = ./rtwshared.lib
PRODUCT_TYPE = "static library"
BUILD_TYPE = "Model Reference Library"

###########################################################################
## INCLUDE PATHS
###########################################################################

INCLUDES_BUILDINFO = 

INCLUDES = $(INCLUDES_BUILDINFO)

###########################################################################
## DEFINES
###########################################################################

DEFINES_BUILD_ARGS = -DINTEGER_CODE=0
DEFINES_CUSTOM = -DEXT_MODE -DIS_RAPID_ACCEL -DRACCEL_ENABLE_PARALLEL_EXECUTION -DRACCEL_PARALLEL_EXECUTION_NUM_THREADS=6 -DRACCEL_NUM_PARALLEL_NODES=1 -DRACCEL_PARALLEL_SIMULATOR_TYPE=0
DEFINES_OPTS = -DNRT -DIS_SIM_TARGET -DTGTCONN -DRSIM_PARAMETER_LOADING -DRSIM_WITH_SL_SOLVER -DENABLE_SLEXEC_SSBRIDGE=1 -DON_TARGET_WAIT_FOR_START=0

DEFINES = $(DEFINES_BUILD_ARGS) $(DEFINES_CUSTOM) $(DEFINES_OPTS)

###########################################################################
## SOURCE FILES
###########################################################################

SRCS = $(START_DIR)/slprj/sim/_sharedutils/rtGetInf.c $(START_DIR)/slprj/sim/_sharedutils/rtGetNaN.c $(START_DIR)/slprj/sim/_sharedutils/rt_nonfinite.c $(START_DIR)/slprj/sim/_sharedutils/look1_binlcapw.c $(START_DIR)/slprj/sim/_sharedutils/look2_binlcapw.c $(START_DIR)/slprj/sim/_sharedutils/automldiffopen_wAtp5Ifz.c $(START_DIR)/slprj/sim/_sharedutils/automltirelongMy_f1emABMi.c $(START_DIR)/slprj/sim/_sharedutils/interp2_0XbyHNhZ.c $(START_DIR)/slprj/sim/_sharedutils/log2_DgASG5hL.c $(START_DIR)/slprj/sim/_sharedutils/look1_binlcpw.c $(START_DIR)/slprj/sim/_sharedutils/look1_binlxpw.c $(START_DIR)/slprj/sim/_sharedutils/look1_pbinlcapw.c $(START_DIR)/slprj/sim/_sharedutils/norm_CF3EtBNC.c $(START_DIR)/slprj/sim/_sharedutils/recomputeBlockDiag_gs6kEciD.c $(START_DIR)/slprj/sim/_sharedutils/rt_zcfcn.c $(START_DIR)/slprj/sim/_sharedutils/xhseqr_H6eRN0gF.c $(START_DIR)/slprj/sim/_sharedutils/binsearch_u32d.c $(START_DIR)/slprj/sim/_sharedutils/intrp_NSplcd.c $(START_DIR)/slprj/sim/_sharedutils/look_SplNBinCZcd.c $(START_DIR)/slprj/sim/_sharedutils/plook_binc.c $(START_DIR)/slprj/sim/_sharedutils/rt_Spline2Derivd.c

ALL_SRCS = $(SRCS)

###########################################################################
## OBJECTS
###########################################################################

OBJS = rtGetInf.obj rtGetNaN.obj rt_nonfinite.obj look1_binlcapw.obj look2_binlcapw.obj automldiffopen_wAtp5Ifz.obj automltirelongMy_f1emABMi.obj interp2_0XbyHNhZ.obj log2_DgASG5hL.obj look1_binlcpw.obj look1_binlxpw.obj look1_pbinlcapw.obj norm_CF3EtBNC.obj recomputeBlockDiag_gs6kEciD.obj rt_zcfcn.obj xhseqr_H6eRN0gF.obj binsearch_u32d.obj intrp_NSplcd.obj look_SplNBinCZcd.obj plook_binc.obj rt_Spline2Derivd.obj

ALL_OBJS = $(OBJS)

###########################################################################
## PREBUILT OBJECT FILES
###########################################################################

PREBUILT_OBJS = 

###########################################################################
## LIBRARIES
###########################################################################

LIBS = 

###########################################################################
## SYSTEM LIBRARIES
###########################################################################

SYSTEM_LIBS = 

###########################################################################
## ADDITIONAL TOOLCHAIN FLAGS
###########################################################################

#---------------
# C Compiler
#---------------

CFLAGS_ = -mcmodel=medium
CFLAGS_TFL = -msse2
CFLAGS_BASIC = $(DEFINES) $(INCLUDES) @$(COMPILER_COMMAND_FILE)

CFLAGS += $(CFLAGS_) $(CFLAGS_TFL) $(CFLAGS_BASIC)

#-----------------
# C++ Compiler
#-----------------

CPPFLAGS_ = -mcmodel=medium
CPPFLAGS_TFL = -msse2
CPPFLAGS_BASIC = $(DEFINES) $(INCLUDES) @$(COMPILER_COMMAND_FILE)

CPPFLAGS += $(CPPFLAGS_) $(CPPFLAGS_TFL) $(CPPFLAGS_BASIC)

#---------------------
# MEX C++ Compiler
#---------------------

MEX_CPP_Compiler_BASIC =  @$(COMPILER_COMMAND_FILE)

MEX_CPPFLAGS += $(MEX_CPP_Compiler_BASIC)

#-----------------
# MEX Compiler
#-----------------

MEX_Compiler_BASIC =  @$(COMPILER_COMMAND_FILE)

MEX_CFLAGS += $(MEX_Compiler_BASIC)

###########################################################################
## INLINED COMMANDS
###########################################################################


MINGW_C_STANDARD_OPTS = $(C_STANDARD_OPTS)


###########################################################################
## PHONY TARGETS
###########################################################################

.PHONY : all build clean info prebuild download execute


all : build
	@echo "### Successfully generated all binary outputs."


build : prebuild $(PRODUCT)


prebuild : 


download : $(PRODUCT)


execute : download


###########################################################################
## FINAL TARGET
###########################################################################

#---------------------------------
# Create a static library         
#---------------------------------

$(PRODUCT) : $(OBJS) $(PREBUILT_OBJS)
	@echo "### Creating static library "$(PRODUCT)" ..."
	$(AR) $(ARFLAGS)  $(PRODUCT) @$(CMD_FILE)
	@echo "### Created: $(PRODUCT)"


###########################################################################
## INTERMEDIATE TARGETS
###########################################################################

#---------------------
# SOURCE-TO-OBJECT
#---------------------

%.obj : %.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.obj : %.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.obj : $(RELATIVE_PATH_TO_ANCHOR)/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.obj : $(RELATIVE_PATH_TO_ANCHOR)/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.obj : $(START_DIR)/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.obj : $(START_DIR)/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


rtGetInf.obj : $(START_DIR)/slprj/sim/_sharedutils/rtGetInf.c
	$(CC) $(CFLAGS) -o "$@" "$<"


rtGetNaN.obj : $(START_DIR)/slprj/sim/_sharedutils/rtGetNaN.c
	$(CC) $(CFLAGS) -o "$@" "$<"


rt_nonfinite.obj : $(START_DIR)/slprj/sim/_sharedutils/rt_nonfinite.c
	$(CC) $(CFLAGS) -o "$@" "$<"


look1_binlcapw.obj : $(START_DIR)/slprj/sim/_sharedutils/look1_binlcapw.c
	$(CC) $(CFLAGS) -o "$@" "$<"


look2_binlcapw.obj : $(START_DIR)/slprj/sim/_sharedutils/look2_binlcapw.c
	$(CC) $(CFLAGS) -o "$@" "$<"


automldiffopen_wAtp5Ifz.obj : $(START_DIR)/slprj/sim/_sharedutils/automldiffopen_wAtp5Ifz.c
	$(CC) $(CFLAGS) -o "$@" "$<"


automltirelongMy_f1emABMi.obj : $(START_DIR)/slprj/sim/_sharedutils/automltirelongMy_f1emABMi.c
	$(CC) $(CFLAGS) -o "$@" "$<"


interp2_0XbyHNhZ.obj : $(START_DIR)/slprj/sim/_sharedutils/interp2_0XbyHNhZ.c
	$(CC) $(CFLAGS) -o "$@" "$<"


log2_DgASG5hL.obj : $(START_DIR)/slprj/sim/_sharedutils/log2_DgASG5hL.c
	$(CC) $(CFLAGS) -o "$@" "$<"


look1_binlcpw.obj : $(START_DIR)/slprj/sim/_sharedutils/look1_binlcpw.c
	$(CC) $(CFLAGS) -o "$@" "$<"


look1_binlxpw.obj : $(START_DIR)/slprj/sim/_sharedutils/look1_binlxpw.c
	$(CC) $(CFLAGS) -o "$@" "$<"


look1_pbinlcapw.obj : $(START_DIR)/slprj/sim/_sharedutils/look1_pbinlcapw.c
	$(CC) $(CFLAGS) -o "$@" "$<"


norm_CF3EtBNC.obj : $(START_DIR)/slprj/sim/_sharedutils/norm_CF3EtBNC.c
	$(CC) $(CFLAGS) -o "$@" "$<"


recomputeBlockDiag_gs6kEciD.obj : $(START_DIR)/slprj/sim/_sharedutils/recomputeBlockDiag_gs6kEciD.c
	$(CC) $(CFLAGS) -o "$@" "$<"


rt_zcfcn.obj : $(START_DIR)/slprj/sim/_sharedutils/rt_zcfcn.c
	$(CC) $(CFLAGS) -o "$@" "$<"


xhseqr_H6eRN0gF.obj : $(START_DIR)/slprj/sim/_sharedutils/xhseqr_H6eRN0gF.c
	$(CC) $(CFLAGS) -o "$@" "$<"


binsearch_u32d.obj : $(START_DIR)/slprj/sim/_sharedutils/binsearch_u32d.c
	$(CC) $(CFLAGS) -o "$@" "$<"


intrp_NSplcd.obj : $(START_DIR)/slprj/sim/_sharedutils/intrp_NSplcd.c
	$(CC) $(CFLAGS) -o "$@" "$<"


look_SplNBinCZcd.obj : $(START_DIR)/slprj/sim/_sharedutils/look_SplNBinCZcd.c
	$(CC) $(CFLAGS) -o "$@" "$<"


plook_binc.obj : $(START_DIR)/slprj/sim/_sharedutils/plook_binc.c
	$(CC) $(CFLAGS) -o "$@" "$<"


rt_Spline2Derivd.obj : $(START_DIR)/slprj/sim/_sharedutils/rt_Spline2Derivd.c
	$(CC) $(CFLAGS) -o "$@" "$<"


###########################################################################
## DEPENDENCIES
###########################################################################

$(ALL_OBJS) : rtw_proj.tmw


###########################################################################
## MISCELLANEOUS TARGETS
###########################################################################

info : 
	@echo "### PRODUCT = $(PRODUCT)"
	@echo "### PRODUCT_TYPE = $(PRODUCT_TYPE)"
	@echo "### BUILD_TYPE = $(BUILD_TYPE)"
	@echo "### INCLUDES = $(INCLUDES)"
	@echo "### DEFINES = $(DEFINES)"
	@echo "### ALL_SRCS = $(ALL_SRCS)"
	@echo "### ALL_OBJS = $(ALL_OBJS)"
	@echo "### LIBS = $(LIBS)"
	@echo "### MODELREF_LIBS = $(MODELREF_LIBS)"
	@echo "### SYSTEM_LIBS = $(SYSTEM_LIBS)"
	@echo "### TOOLCHAIN_LIBS = $(TOOLCHAIN_LIBS)"
	@echo "### CFLAGS = $(CFLAGS)"
	@echo "### LDFLAGS = $(LDFLAGS)"
	@echo "### SHAREDLIB_LDFLAGS = $(SHAREDLIB_LDFLAGS)"
	@echo "### CPPFLAGS = $(CPPFLAGS)"
	@echo "### CPP_LDFLAGS = $(CPP_LDFLAGS)"
	@echo "### CPP_SHAREDLIB_LDFLAGS = $(CPP_SHAREDLIB_LDFLAGS)"
	@echo "### ARFLAGS = $(ARFLAGS)"
	@echo "### MEX_CFLAGS = $(MEX_CFLAGS)"
	@echo "### MEX_CPPFLAGS = $(MEX_CPPFLAGS)"
	@echo "### MEX_LDFLAGS = $(MEX_LDFLAGS)"
	@echo "### MEX_CPPLDFLAGS = $(MEX_CPPLDFLAGS)"
	@echo "### DOWNLOAD_FLAGS = $(DOWNLOAD_FLAGS)"
	@echo "### EXECUTE_FLAGS = $(EXECUTE_FLAGS)"
	@echo "### MAKE_FLAGS = $(MAKE_FLAGS)"


clean : 
	$(ECHO) "### Deleting all derived files..."
	$(RM) $(subst /,\,$(PRODUCT))
	$(RM) $(subst /,\,$(ALL_OBJS))
	$(ECHO) "### Deleted all derived files."


