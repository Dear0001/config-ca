  echo
  echo "Enroll the CA admin"
  echo
  mkdir -p /crypto-config-ca/peerOrganizations/org2.example.com/

  export FABRIC_CA_CLIENT_HOME=${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/

   
  fabric-ca-client enroll -u https://admin:adminpw@localhost:8054 --caname ca.org2.example.com --tls.certfiles ${PWD}/fabric-ca/org2/tls-cert.pem
   