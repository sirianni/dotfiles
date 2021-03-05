if [[ -e ~/.confluent ]] ; then
  hash -d confluent=$HOME/src/github.com/confluentinc
  hash -d gh=$HOME/src/github.com

  cdpath=(. $HOME/src/github.com/confluentinc $HOME/src/github.com)

  OKTA_DEVICE_ID=uft5bzxqejuwiD1dl357
  OKTA_LASTPASS=true
  export VAULT_ADDR=https://vault.cireops.gcp.internal.confluent.cloud

  CC_DOTFILES_BETA=true
  CC_DOTFILES_ALPHA=true
  [ -f ~confluent/cc-dotfiles/caas.sh ] && source ~confluent/cc-dotfiles/caas.sh

  export PREFERRED_BASTION=0

  # Workaround for librdkafka hardcoding CA cert path
  # https://github.com/confluentinc/confluent-kafka-python/issues/527
  [[ -f /etc/ssl/cert.pem ]] && export SSL_CERT_FILE=/etc/ssl/cert.pem

  export CONFLUENT_HOME=/opt/confluent
  [[ -d $CONFLUENT_HOME/bin ]] && export PATH=$PATH:$CONFLUENT_HOME/bin
fi
