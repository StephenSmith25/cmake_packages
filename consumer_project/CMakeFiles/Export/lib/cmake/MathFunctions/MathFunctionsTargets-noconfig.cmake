#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "MathFunctions::MathFunctions" for configuration ""
set_property(TARGET MathFunctions::MathFunctions APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(MathFunctions::MathFunctions PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libMathFunctions.so"
  IMPORTED_SONAME_NOCONFIG "libMathFunctions.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS MathFunctions::MathFunctions )
list(APPEND _IMPORT_CHECK_FILES_FOR_MathFunctions::MathFunctions "${_IMPORT_PREFIX}/lib/libMathFunctions.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
