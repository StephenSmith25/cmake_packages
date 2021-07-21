project(consumer)
cmake_minimum_required(VERSION 3.18)


find_package(MathFunctions)


add_executable(main main.cpp)
target_link_libraries(main MathFunctions::MathFunctions)