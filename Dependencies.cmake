include(FetchContent)

# -------------------------------------------------------
# GLFW
# -------------------------------------------------------
find_package(glfw3 3.4 QUIET)
if (NOT glfw3_FOUND)
    message(STATUS "Fetching GLFW 3.4 ...")
    FetchContent_Declare(
            glfw
            DOWNLOAD_EXTRACT_TIMESTAMP OFF
            URL https://github.com/glfw/glfw/releases/download/3.4/glfw-3.4.zip
    )
    FetchContent_MakeAvailable(glfw)
endif()
set_target_properties(glfw PROPERTIES FOLDER "Dependencies")

# -------------------------------------------------------
# OpenGL
# -------------------------------------------------------
find_package(OpenGL REQUIRED)

# -------------------------------------------------------
# GLM
# -------------------------------------------------------
find_package(glm 1.0.1 QUIET)
if (NOT glm_FOUND)
    message(STATUS "Fetching GLM 1.0.1 ...")
    FetchContent_Declare(
            glm
            DOWNLOAD_EXTRACT_TIMESTAMP OFF
            URL https://github.com/g-truc/glm/archive/refs/tags/1.0.1.zip
    )
    FetchContent_MakeAvailable(glm)
endif()
set_target_properties(glm PROPERTIES FOLDER "Dependencies")

# -------------------------------------------------------
# GLAD (local)
# -------------------------------------------------------
add_library(glad vendor/glad/src/glad.c)
target_include_directories(glad PUBLIC vendor/glad/include)
set_target_properties(glad PROPERTIES FOLDER "Dependencies")

