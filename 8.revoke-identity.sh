# fabric-ca-client revoke --revoke SERIAL_NUMBER --caname ca.example.com
# fabric-ca-client updatecrl --caname ca.example.com

fabric-ca-client revoke --revoke.name USER_NAME --caname ca.example.com

fabric-ca-client gencrl --caname ca.example.com
