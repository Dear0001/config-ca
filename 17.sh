   export FABRIC_CA_CLIENT_HOME=${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/
  echo
  echo "## Generate the peer0-tls certificates"
  echo
   
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:8054 --caname ca.org2.example.com -M ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls --enrollment.profile tls --csr.hosts peer0.org2.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org2/tls-cert.pem
   

  cp ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/tlscacerts/* ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt
  cp ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/signcerts/* ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/server.crt
  cp ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/keystore/* ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/server.key

  mkdir ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/msp/tlscacerts
  cp ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/tlscacerts/* ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/msp/tlscacerts/ca.crt

  mkdir ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/tlsca
  cp ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/tlscacerts/* ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/tlsca/tlsca.org2.example.com-cert.pem

  mkdir ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/ca
  cp ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/msp/cacerts/* ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/ca/ca.org2.example.com-cert.pem
