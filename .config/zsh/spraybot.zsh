# Device specific zshrc file (Not to be tracked on git)

# FastDDS Config
export RMW_IMPLEMENTATION=rmw_fastrtps_cpp

if [[ "${USER}" == "spraybot" ]]; then
    export FASTRTPS_DEFAULT_PROFILES_FILE="/home/${USER}/.config/fastdds/spraybot_server_profile.xml"
else
    export FASTRTPS_DEFAULT_PROFILES_FILE="/home/${USER}/.config/fastdds/spraybot_client_profile.xml"
fi

# ROS1 Husky Config
export HUSKY_LOGITECH=1
export HUSKY_JOY_DEVICE="/dev/input/f710"

# base_link -> top_plate_rear_link
# Translation: [-0.285, 0.000, 0.251]
export HUSKY_IMU_XYZ="-0.135 0.0 0.251"
export HUSKY_IMU_RPY="-3.14 0.0 0.0"
export HUSKY_LARGE_TOP_PLATE="true"

# Spraybot
export SPRAYBOT_IP="192.168.0.5"

alias ssh-spraybot="ssh -X spraybot@${SPRAYBOT_IP}"

# Spraybot Rsync
# spraybot2local
alias spraybot2local="rsync -r -t -v --progress -u -z -b -s spraybot@${SPRAYBOT_IP}:/home/spraybot/spraybot_ws/src/ /home/${USER}/remote_spraybot_ws/src/"
# local2spraybot
alias local2spraybot="rsync -r -t -v --progress -u -z -b -s /home/${USER}/remote_spraybot_ws/src/ spraybot@${SPRAYBOT_IP}:/home/spraybot/spraybot_ws/src/"
