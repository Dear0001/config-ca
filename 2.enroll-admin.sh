# fabric-ca-client enroll -u http://admin:adminpw@localhost:7054 --caname ca.example.com
export FABRIC_CA_CLIENT_HOME=${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/
echo
echo "Enroll the CA admin"
echo
mkdir -p crypto-config-ca/peerOrganizations/org1.example.com/


fabric-ca-client enroll -u https://admin:adminpw@localhost:7054 --caname ca.org1.example.com --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem
