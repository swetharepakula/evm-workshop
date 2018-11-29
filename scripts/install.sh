for org in 1 2; do
  for peer in 0 1; do

  CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org$org.example.com/users/Admin@org$org.example.com/msp
  CORE_PEER_ADDRESS=peer$peer.org$org.example.com:7051
  CORE_PEER_LOCALMSPID="Org${org}MSP"
  CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org$org.example.com/peers/peer$peer.org$org.example.com/tls/ca.crt

  peer chaincode install -n evmcc -v $1 -p github.com/hyperledger/fabric-chaincode-evm/evmcc
  done
done
