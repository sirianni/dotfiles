export MAVEN_HOME=/opt/maven
export PATH=$PATH:$MAVEN_HOME/bin

hash -d infosight=/home/esirianni/src/infosight
hash -d portal=~infosight/portal
hash -d stairway=~/go/src/infosight/stairway

alias pg='psql -h localhost -d portaldb'

alias sshpw='sshpass -f /home/esirianni/.ssh/nimble-password ssh'

export GITHUB_URL=https://github.rtplab.nimblestorage.com/