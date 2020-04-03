hash -d confluent=$HOME/src/github.com/confluentinc

alias avro='java -jar /opt/avro/avro-tools-1.8.2.jar'

cdpath=(. $HOME/src/github.com/confluentinc)

ONELOGIN_DEVICE_ID=981044
OKTA_DEVICE_ID=uft126jr2ldaPMiqZ357
OKTA_LASTPASS=true

CC_DOTFILES_BETA=true
CC_DOTFILES_ALPHA=true
source ~confluent/cc-dotfiles/caas.sh

PREFERRED_BASTION=0