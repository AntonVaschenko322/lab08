cmake_minimum_required(VERSION 3.10)  
project(Task2)  


set(CPACK_PACKAGE_NAME "lab08")
set(CPACK_PACKAGE_VERSION "1.0.0")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Anton Vaschenko")
set(CPACK_GENERATOR DEB)
include(CPack)
 
add_subdirectory(formatter_lib)  
add_subdirectory(formatter_ex_lib) 
add_subdirectory(Hello_world)

