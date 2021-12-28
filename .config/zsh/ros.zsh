if [[ $OSTYPE = linux* ]]; then
	
	# Source ROS2 (Bug if not sourced: https://github.com/ros2/ros2cli/issues/534)
	source /opt/ros/${CONFIG_ROS_DISTRO}/setup.zsh
	autoload -U bashcompinit
	bashcompinit
	eval "$(register-python-argcomplete3 ros2)"
	eval "$(register-python-argcomplete3 colcon)"

fi
