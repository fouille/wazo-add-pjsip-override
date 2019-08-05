# wazo-add-pjsip-override
Add a template "wazo-general-endpoint-override" in 01-wazo.conf
For add addtional options in Asterisk :
rtp_symmetric=yes
force_rport=yes
rewrite_contact=yes

--- only necessary when the endpoint is in a NAT environment ---

# INSTALL

> cd /tmp/
> wget https://raw.githubusercontent.com/fouille/wazo-add-pjsip-override/master/add-override.sh
> chmod +x add-override.sh
> ./add-override.sh
