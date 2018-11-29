org=$1
peer=$2

export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org$org.example.com/users/Admin@org$org.example.com/msp
export CORE_PEER_ADDRESS=peer$peer.org$org.example.com:7051
export CORE_PEER_LOCALMSPID="Org${org}MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org$org.example.com/peers/peer$peer.org$org.example.com/tls/ca.crt
