export MAVEN_HOME=/opt/apache-maven-3.3.9
export PATH=$PATH:$MAVEN_HOME/bin

export ANT_HOME=/opt/apache-ant-1.9.4
export PATH=$PATH:$ANT_HOME/bin

export GRADLE_HOME=/opt/gradle-3.1
export PATH=$PATH:$GRADLE_HOME/bin

hash -d infosight=/home/esirianni/src/support/infosight
hash -d portal=~infosight/portal

alias pg='psql -h localhost -d portaldb'

alias sshpw='sshpass -f /home/esirianni/.ssh/nimble-password ssh'