hash -d confluent=$HOME/src/confluentinc
hash -d ccloud=$HOME/go/src/github.com/confluentinc

alias avro='java -jar /opt/avro/avro-tools-1.8.2.jar'

source ~/src/confluentinc/cc-dotfiles/caas.sh

cdpath=(. $HOME/src/confluentinc $HOME/go/src/github.com/confluentinc)