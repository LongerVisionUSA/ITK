#
# This file can be included by other projects that use or depend on Insight.
# It sets up many default parameters and include paths.
#

# set project include directories
INCLUDE_DIRECTORIES(
${ITK_BINARY_DIR} 
${ITK_SOURCE_DIR}/Code/Numerics
${ITK_SOURCE_DIR}/Code/Common 
${ITK_BINARY_DIR}/Code/Numerics/vxl 
${ITK_SOURCE_DIR}/Code/Numerics/vxl 
${ITK_BINARY_DIR}/Code/Numerics/vxl/vcl 
${ITK_SOURCE_DIR}/Code/Numerics/vxl/vcl 
${ITK_SOURCE_DIR}/Utilities/png
${ITK_SOURCE_DIR}/Utilities/zlib
)

# set link libraries
LINK_DIRECTORIES(
${ITK_BINARY_DIR}/Code/Common 
${ITK_BINARY_DIR}/Code/Numerics/vxl )

# set link libraries for project
IF(UNIX)
  LINK_LIBRARIES(${CMAKE_THREAD_LIBS} ${CMAKE_DL_LIBS})
ENDIF(UNIX)

IF(CMAKE_COMPILER_IS_GNUCXX)
        SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -ftemplate-depth-50")
ENDIF(CMAKE_COMPILER_IS_GNUCXX)

# force the use of ansi cxx flags (i.e. -LANG:std on sgi )
IF (CMAKE_ANSI_CXXFLAGS)
  SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${CMAKE_ANSI_CXXFLAGS}")  
ENDIF (CMAKE_ANSI_CXXFLAGS)
IF (CMAKE_ANSI_CFLAGS)
  SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${CMAKE_ANSI_CFLAGS}")  
ENDIF (CMAKE_ANSI_CFLAGS)

IF(CMAKE_TEMPLATE_FLAGS)
  SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${CMAKE_TEMPLATE_FLAGS}")  
ENDIF(CMAKE_TEMPLATE_FLAGS)
