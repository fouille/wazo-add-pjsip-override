# wazo-add-pjsip-override
Add a template "wazo-general-endpoint-override" in 01-wazo.conf<br>
For add addtional options in Asterisk :<br>
<code>rtp_symmetric=yes</code> <br>
<code>force_rport=yes</code> <br>
<code>rewrite_contact=yes</code> <br>
<br>
<b>--- only necessary when the endpoint is in a NAT environment ---<br></b>
<br>
# INSTALL<br>
<br>

```console
foo@bar:~$  cd /tmp/
foo@bar:/tmp$  wget https://raw.githubusercontent.com/fouille/wazo-add-pjsip-override/master/add-override.sh
foo@bar:/tmp$  chmod +x add-override.sh
foo@bar:/tmp$  ./add-override.sh
```
