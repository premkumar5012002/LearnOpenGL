cmake_minimum_required(VERSION 3.16)
project(LearnOpenGL LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 20)

# Dependencies
include(Dependencies.cmake)

add_compile_definitions(
        GLFW_INCLUDE_NONE
)

add_executable(${PROJECT_NAME}
        src/Main.cpp
        src/Shader.cpp
        src/Shader.h
)

target_link_libraries(${PROJECT_NAME} PRIVATE OpenGL::GL glfw glad glm)

target_include_directories(${PROJECT_NAME} PRIVATE vendor)
