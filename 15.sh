   export FABRIC_CA_CLIENT_HOME=${PWD}/crypto-config-ca/peerOrganizations/org2.example.com/
 echo
  echo "Register peer0"
  echo
   
  fabric-ca-client register --caname ca.org2.example.com --id.name peer0 --id.secret peer0pw --id.type peer --tls.certfiles ${PWD}/fabric-ca/org2/tls-cert.pem
   

  echo
  echo "Register peer1"
  echo
   
  fabric-ca-client register --caname ca.org2.example.com --id.name peer1 --id.secret peer1pw --id.type peer --tls.certfiles ${PWD}/fabric-ca/org2/tls-cert.pem
   

  echo
  echo "Register user"
  echo
   
  fabric-ca-client register --caname ca.org2.example.com --id.name user1 --id.secret user1pw --id.type client --tls.certfiles ${PWD}/fabric-ca/org2/tls-cert.pem
   

  echo
  echo "Register the org admin"
  echo
   
  fabric-ca-client register --caname ca.org2.example.com --id.name org2admin --id.secret org2adminpw --id.type admin --tls.certfiles ${PWD}/fabric-ca/org2/tls-cert.pem
   

  mkdir -p crypto-config-ca/peerOrganizations/org2.example.com/peers
  mkdir -p crypto-config-ca/peerOrganizations/org2.example.com/peers/peer0.org2.example.com