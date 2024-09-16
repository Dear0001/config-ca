echo
echo "## Generate the peer1-tls certificates"
echo
fabric-ca-client enroll -u https://peer1:peer1pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls --enrollment.profile tls --csr.hosts peer1.org1.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/tlscacerts/* ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/ca.crt
cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/signcerts/* ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/server.crt
cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/keystore/* ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/server.key

# --------------------------------------------------------------------------------------------------

mkdir -p crypto-config-ca/peerOrganizations/org1.example.com/users
mkdir -p crypto-config-ca/peerOrganizations/org1.example.com/users/User1@org1.example.com

echo
echo "## Generate the user msp"
echo
fabric-ca-client enroll -u https://user1:user1pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/users/User1@org1.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

mkdir -p crypto-config-ca/peerOrganizations/org1.example.com/users/Admin@org1.example.com

echo
echo "## Generate the org admin msp"
echo
fabric-ca-client enroll -u https://org1admin:org1adminpw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp/config.yaml