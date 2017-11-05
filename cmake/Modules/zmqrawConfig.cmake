INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_ZMQRAW zmqraw)

FIND_PATH(
    ZMQRAW_INCLUDE_DIRS
    NAMES zmqraw/api.h
    HINTS $ENV{ZMQRAW_DIR}/include
        ${PC_ZMQRAW_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    ZMQRAW_LIBRARIES
    NAMES gnuradio-zmqraw
    HINTS $ENV{ZMQRAW_DIR}/lib
        ${PC_ZMQRAW_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(ZMQRAW DEFAULT_MSG ZMQRAW_LIBRARIES ZMQRAW_INCLUDE_DIRS)
MARK_AS_ADVANCED(ZMQRAW_LIBRARIES ZMQRAW_INCLUDE_DIRS)

