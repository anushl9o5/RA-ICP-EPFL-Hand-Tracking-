set(WITH_SYNTHGEN TRUE)
LIST(APPEND SRC_OPENGL2 "opengl/Cylinders_renderer.cpp" "opengl/Renderer_interface.cpp")
add_executable(synthgen apps/synthgen.cpp ${SRC_MATH} ${SRC_UTIL} ${SRC_GEOMETRY} ${SRC_OPENGL2} ${MATH} ${UTIL} ${GEOMETRY} ${QT_RESOURCES})
target_link_libraries(synthgen ${LIBRARIES})
qt5_use_modules(synthgen OpenGL Xml)
