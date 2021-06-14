message("External project: abseil")

ExternalProject_Add(abseil
    BUILD_IN_SOURCE 1
    GIT_REPOSITORY https://github.com/abseil/abseil-cpp.git
    GIT_TAG "20210324.2"
    GIT_SHALLOW 1
    CMAKE_ARGS += -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR>
    -DCMAKE_SYSTEM_PROCESSOR=arm
    -DCMAKE_CXX_COMPILER_ID=GNU
    -DCMAKE_CXX_STANDARD=11
    -DABSL_ENABLE_INSTALL=ON
    -DABSL_USE_GOOGLETEST_HEAD=OFF
    -DABSL_RUN_TESTS=OFF
    -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER} 
    -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
)

# maybe cmake has a bug. project() will motify value of CMAKE_SYSTEM_PROCESSOR
#