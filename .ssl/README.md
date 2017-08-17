Generate a self-signed root CA like so:

`cfssl genkey -initca ca-csr.json | cfssljson -bare ca`

Generate a key pair, with a cert valid for `*.secure.jro` and signed by that root CA:

`cfssl gencert -ca ca.pem -ca-key ca-key.pem -hostname=*.secure.jro secure-jro-csr.json | cfssljson -bare secure-jro`

Add `ca.pem` to your trusted root certificates.

You can now serve HTTPS using the `secure-jro.pem` cert and the `secure-jro-key.pem` private key at `*.secure.jro`.
