# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "flying_gripper: 0 messages, 2 services")

set(MSG_I_FLAGS "-Iflying_gripper:/home/zhichao/catkin_ws/src/flying_gripper/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(flying_gripper_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zhichao/catkin_ws/src/flying_gripper/srv/empty.srv" NAME_WE)
add_custom_target(_flying_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "flying_gripper" "/home/zhichao/catkin_ws/src/flying_gripper/srv/empty.srv" ""
)

get_filename_component(_filename "/home/zhichao/catkin_ws/src/flying_gripper/srv/inflate.srv" NAME_WE)
add_custom_target(_flying_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "flying_gripper" "/home/zhichao/catkin_ws/src/flying_gripper/srv/inflate.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(flying_gripper
  "/home/zhichao/catkin_ws/src/flying_gripper/srv/empty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/flying_gripper
)
_generate_srv_cpp(flying_gripper
  "/home/zhichao/catkin_ws/src/flying_gripper/srv/inflate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/flying_gripper
)

### Generating Module File
_generate_module_cpp(flying_gripper
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/flying_gripper
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(flying_gripper_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(flying_gripper_generate_messages flying_gripper_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhichao/catkin_ws/src/flying_gripper/srv/empty.srv" NAME_WE)
add_dependencies(flying_gripper_generate_messages_cpp _flying_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhichao/catkin_ws/src/flying_gripper/srv/inflate.srv" NAME_WE)
add_dependencies(flying_gripper_generate_messages_cpp _flying_gripper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(flying_gripper_gencpp)
add_dependencies(flying_gripper_gencpp flying_gripper_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS flying_gripper_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(flying_gripper
  "/home/zhichao/catkin_ws/src/flying_gripper/srv/empty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/flying_gripper
)
_generate_srv_eus(flying_gripper
  "/home/zhichao/catkin_ws/src/flying_gripper/srv/inflate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/flying_gripper
)

### Generating Module File
_generate_module_eus(flying_gripper
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/flying_gripper
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(flying_gripper_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(flying_gripper_generate_messages flying_gripper_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhichao/catkin_ws/src/flying_gripper/srv/empty.srv" NAME_WE)
add_dependencies(flying_gripper_generate_messages_eus _flying_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhichao/catkin_ws/src/flying_gripper/srv/inflate.srv" NAME_WE)
add_dependencies(flying_gripper_generate_messages_eus _flying_gripper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(flying_gripper_geneus)
add_dependencies(flying_gripper_geneus flying_gripper_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS flying_gripper_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(flying_gripper
  "/home/zhichao/catkin_ws/src/flying_gripper/srv/empty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/flying_gripper
)
_generate_srv_lisp(flying_gripper
  "/home/zhichao/catkin_ws/src/flying_gripper/srv/inflate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/flying_gripper
)

### Generating Module File
_generate_module_lisp(flying_gripper
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/flying_gripper
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(flying_gripper_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(flying_gripper_generate_messages flying_gripper_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhichao/catkin_ws/src/flying_gripper/srv/empty.srv" NAME_WE)
add_dependencies(flying_gripper_generate_messages_lisp _flying_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhichao/catkin_ws/src/flying_gripper/srv/inflate.srv" NAME_WE)
add_dependencies(flying_gripper_generate_messages_lisp _flying_gripper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(flying_gripper_genlisp)
add_dependencies(flying_gripper_genlisp flying_gripper_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS flying_gripper_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(flying_gripper
  "/home/zhichao/catkin_ws/src/flying_gripper/srv/empty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/flying_gripper
)
_generate_srv_nodejs(flying_gripper
  "/home/zhichao/catkin_ws/src/flying_gripper/srv/inflate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/flying_gripper
)

### Generating Module File
_generate_module_nodejs(flying_gripper
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/flying_gripper
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(flying_gripper_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(flying_gripper_generate_messages flying_gripper_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhichao/catkin_ws/src/flying_gripper/srv/empty.srv" NAME_WE)
add_dependencies(flying_gripper_generate_messages_nodejs _flying_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhichao/catkin_ws/src/flying_gripper/srv/inflate.srv" NAME_WE)
add_dependencies(flying_gripper_generate_messages_nodejs _flying_gripper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(flying_gripper_gennodejs)
add_dependencies(flying_gripper_gennodejs flying_gripper_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS flying_gripper_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(flying_gripper
  "/home/zhichao/catkin_ws/src/flying_gripper/srv/empty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/flying_gripper
)
_generate_srv_py(flying_gripper
  "/home/zhichao/catkin_ws/src/flying_gripper/srv/inflate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/flying_gripper
)

### Generating Module File
_generate_module_py(flying_gripper
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/flying_gripper
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(flying_gripper_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(flying_gripper_generate_messages flying_gripper_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhichao/catkin_ws/src/flying_gripper/srv/empty.srv" NAME_WE)
add_dependencies(flying_gripper_generate_messages_py _flying_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhichao/catkin_ws/src/flying_gripper/srv/inflate.srv" NAME_WE)
add_dependencies(flying_gripper_generate_messages_py _flying_gripper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(flying_gripper_genpy)
add_dependencies(flying_gripper_genpy flying_gripper_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS flying_gripper_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/flying_gripper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/flying_gripper
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(flying_gripper_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(flying_gripper_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/flying_gripper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/flying_gripper
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(flying_gripper_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(flying_gripper_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/flying_gripper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/flying_gripper
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(flying_gripper_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(flying_gripper_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/flying_gripper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/flying_gripper
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(flying_gripper_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(flying_gripper_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/flying_gripper)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/flying_gripper\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/flying_gripper
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(flying_gripper_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(flying_gripper_generate_messages_py geometry_msgs_generate_messages_py)
endif()
