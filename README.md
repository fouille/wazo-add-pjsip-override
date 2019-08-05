# wazo-add-pjsip-override
Add a template "wazo-general-endpoint-override" in 01-wazo.conf<br>
For add addtional options in Asterisk :<br>
rtp_symmetric=yes<br>
force_rport=yes<br>
rewrite_contact=yes<br>
<br>
--- only necessary when the endpoint is in a NAT environment ---<br>
<br>
# INSTALL<br>
<br>
``` 
cd /tmp/
wget https://raw.githubusercontent.com/fouille/wazo-add-pjsip-override/master/add-override.sh
chmod +x add-override.sh
./add-override.sh
``` 
