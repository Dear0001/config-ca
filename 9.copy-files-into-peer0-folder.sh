 echo
echo "## Generate the peer0 msp"
echo
fabric-ca-client enroll -u https://peer0:peer0pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/msp --csr.hosts peer0.org1.example.com --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/msp/config.yaml

echo
echo "## Generate the peer0-tls certificates"
echo
fabric-ca-client enroll -u https://peer0:peer0pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls --enrollment.profile tls --csr.hosts peer0.org1.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/tlscacerts/* ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/signcerts/* ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.crt
cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/keystore/* ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.key

mkdir ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/msp/tlscacerts
cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/tlscacerts/* ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/msp/tlscacerts/ca.crt

mkdir ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/tlsca
cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/tlscacerts/* ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/tlsca/tlsca.org1.example.com-cert.pem

mkdir ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/ca
cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/msp/cacerts/* ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/ca/ca.org1.example.com-cert.pem

  # ------------------------------------------------------------------------------------------------