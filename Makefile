
#config = Release # Debug  RelWithDebInfo
#CMAKEFLAGS =  -DPK_ENABLE_MIMALLOC=ON -DPK_ENABLE_DETERMINISM=ON
CMAKEFLAGS = -DPK_BUILD_STATIC_LIB=ON -DCMAKE_BUILD_TYPE=Release


MS_INST ?= $(abspath ../../..)
msBilDir ?= $(MS_INST)/build

all:
	cmake -S${CURDIR} -B${msBilDir}/pocketpy ${CMAKEFLAGS}
	cmake --build   ${msBilDir}/pocketpy -j # --verbose
#	cmake --install ${msBilDir}/pocketpy --prefix ${MS_INST}
