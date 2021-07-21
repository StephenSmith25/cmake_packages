cmake_minimum_required(VERSION 3.18)
project(MathFunctions)

include(GNUInstallDirs)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

add_library(MathFunctions SHARED MathFunctions.cpp)

target_include_directories(MathFunctions
                           PUBLIC
                           "$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>"
                           "$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>"
)

add_executable(math main.cpp)
target_link_libraries(math MathFunctions)

include(CMakePackageConfigHelpers)


install(FILES MathFunctions.h DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

install(TARGETS MathFunctions
        EXPORT MathFunctionsTargets
        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
        ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
        RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
        INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
)


install(EXPORT MathFunctionsTargets
        FILE MathFunctionsTargets.cmake
        NAMESPACE MathFunctions::
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/MathFunctions
)


configure_package_config_file(${CMAKE_SOURCE_DIR}/cmake/Config.cmake.in
  ${CMAKE_CURRENT_BINARY_DIR}/MathFunctionsConfig.cmake
  INSTALL_DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/MathFunctions)

write_basic_package_version_file(  
  ${CMAKE_CURRENT_BINARY_DIR}/MathFunctionsConfigVersion.cmake
  VERSION 1.0.0
  COMPATIBILITY SameMajorVersion )

install(FILES
          "${CMAKE_CURRENT_BINARY_DIR}/MathFunctionsConfig.cmake"
          "${CMAKE_CURRENT_BINARY_DIR}/MathFunctionsConfigVersion.cmake"
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/MathFunctions
)



