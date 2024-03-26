cmake_minimum_required(VERSION 3.20)

project(NixCMakePyTest)

find_package(Python3 REQUIRED COMPONENTS Interpreter Development.Module)

message(STATUS "Python3 executable: ${Python3_EXECUTABLE}")
message(STATUS "Python3 version: ${Python3_VERSION}")
message(STATUS "Python3 interpreter ID: ${Python3_INTERPRETER_ID}")
message(STATUS "Python3 SOABI: ${Python3_SOABI}")
message(STATUS "Python3 include dirs: ${Python3_INCLUDE_DIRS}")
message(STATUS "Python3 libraries: ${Python3_LIBRARIES}")
