
SERVER=192.168.223.125
dir=arch-install
path=$SERVER/$dir
IP=192.168.1.11
BR=255.255.0.0
GW=192.168.223.1
INTERFACE=enp1s2

echo $IP $BR $GW $SERVER

ip addr flush dev $INTERFACE
ip link set $INTERFACE up
echo "ip addr add $IP/$BR  dev $INTERFACE"

ip addr add $IP/$BR  dev $INTERFACE
ip route add default via $GW 

ip -4 addr 





