scripts_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# import utils
. $scripts_dir/utils.sh

export CC_SRC_PATH=github.com/hyperledger/fabric-chaincode-evm/evmcc
export CHANNEL_NAME=mychannel
export VERSION=1.0
export LANGUAGE=golang

installChaincode 1 1
installChaincode 0 2
installChaincode 1 2
