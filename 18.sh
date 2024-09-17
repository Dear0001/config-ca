     export FABRIC_CA_CLIENT_HOME=${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/
  # --------------------------------------------------------------------------------
  #  Peer 1
  echo
  echo "## Generate the peer1 msp"
  echo
   
  fabric-ca-client enroll -u https://peer1:peer1pw@localhost:8054 --caname ca.org2.example.com -M ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/msp --csr.hosts peer1.org2.example.com --tls.certfiles ${PWD}/fabric-ca/org2/tls-cert.pem
   

  cp ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/msp/config.yaml ${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/msp/config.yaml
