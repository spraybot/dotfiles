# Device specific zshrc file (Not to be tracked on git)

# Source environment variables
source ${ZDOTDIR:-$HOME}/spraybot_env

if [[ "${USER}" != "spraybot" ]]; then
    export CYCLONEDDS_URI="/home/${USER}/.config/dds/dev.xml"
fi

# Spraybot
export SPRAYBOT_IP="192.168.0.5"

alias ssh-spraybot="ssh -X spraybot@${SPRAYBOT_IP}"

# Spraybot Rsync
# spraybot2local
alias spraybot2local="rsync -r -t -v --progress -u -z -b -s spraybot@${SPRAYBOT_IP}:/home/spraybot/spraybot_ws/src/ /home/${USER}/remote_spraybot_ws/src/"
# local2spraybot
alias local2spraybot="rsync -r -t -v --progress -u -z -b -s /home/${USER}/remote_spraybot_ws/src/ spraybot@${SPRAYBOT_IP}:/home/spraybot/spraybot_ws/src/"

alias zenoh="zenoh-bridge-dds -d ${ROS_DOMAIN_ID} --fwd-discovery"