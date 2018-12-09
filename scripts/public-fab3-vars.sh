USER_ID=$1
ORG_NUMBER=$2
CHANNEL=$3

export FABPROXY_CONFIG="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"/../configs/fab3.yaml
export FABPROXY_CHANNEL=$CHANNEL
export FABPROXY_CCID=evmcc
export FABPROXY_ORG=Org${ORG_NUMBER}
export FABPROXY_USER=${USER_ID}
