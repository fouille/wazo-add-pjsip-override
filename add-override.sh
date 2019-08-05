#!/bin/bash

echo "1/3 - Add template in 01-wazo.conf"
 > /etc/asterisk/pjsip.d/01-wazo.conf

cat >> /etc/asterisk/pjsip.d/01-wazo.conf <<'EOF'
; autogenerated from xivo-confgend
#exec /usr/bin/xivo-confgen asterisk/pjsip.conf --cached | sed 's/(wazo-general-endpoint)/(wazo-general-endpoint,wazo-general-endpoint-override)/'
EOF

echo "2/3 - create file 'override'"

touch /etc/asterisk/pjsip.d/001-reg.conf
cat >> /etc/asterisk/pjsip.d/001-reg.conf <<'EOF'
[wazo-general-endpoint-override](!)
rtp_symmetric=yes
force_rport=yes
rewrite_contact=yes
EOF

echo "3/3 - reload asterisk"
#asterisk -r 'core reload'

echo "End"
