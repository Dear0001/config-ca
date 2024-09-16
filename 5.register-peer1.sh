export FABRIC_CA_CLIENT_HOME=${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/
echo
echo "Register peer1"
echo
fabric-ca-client register --caname ca.org1.example.com --id.name peer1 --id.secret peer1pw --id.type peer --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem