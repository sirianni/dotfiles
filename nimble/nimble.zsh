export MAVEN_HOME=/opt/apache-maven-3.2.3
export PATH=$PATH:$MAVEN_HOME/bin

export ANT_HOME=/opt/apache-ant-1.9.4
export PATH=$PATH:$ANT_HOME/bin

hash -d infosight=/home/esirianni/src/support/infosight
hash -d portal=~infosight/portal

alias pg='psql -h localhost -d portaldb'