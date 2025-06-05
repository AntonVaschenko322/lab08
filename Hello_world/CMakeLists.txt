add_executable(Hello_world Hello_world.cpp)  

target_link_libraries(Hello_world  formatter_ex_lib)  
install(TARGETS Hello_world DESTINATION bin)
