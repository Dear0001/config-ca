    export FABRIC_CA_CLIENT_HOME=${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/
 echo
  echo "## Generate the peer1-tls certificates"
  echo
   
  fabric-ca-client enroll -u https://peer1:peer1pw@localhost:8054 --caname ca.org2.example.com -M ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/tls --enrollment.profile tls --csr.hosts peer1.org2.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org2/tls-cert.pem
   

  cp ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/tls/tlscacerts/* ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/tls/ca.crt
  cp ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/tls/signcerts/* ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/tls/server.crt
  cp ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/tls/keystore/* ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/tls/server.key
  # -----------------------------------------------------------------------------------

  mkdir -p crypto-config-ca/peerOrganizations/org2.example.com/users
  mkdir -p crypto-config-ca/peerOrganizations/org2.example.com/users/User1@org2.example.com