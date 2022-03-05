## RULES FOR ISTS 2022 COMPETITION
##Located at /etc/pf.conf
touch pf.conf
#Skip loopback
echo set skip on lo0 >> pf.conf

#Allow these ports in and out of Michael's box
echo pass in quick proto { udp tcp } from port { 5315 8003:8006 22000:25999 } to 10.1.1.6  >> pf.conf
echo pass out quick proto { udp tcp } from 10.1.1.6 to port { 5315 8003:8006 22000:25999 }  >> pf.conf

#Block all from out to in
echo block in proto { udp tcp } from any to any  >> pf.conf

#Allow SOME in to out, SSH, DNS, HTTP, HTTPS, NTP
echo pass out proto { tcp udp } to port { 22 53 80 123 443 }  >> pf.conf

####################################################
#Arboretum
#10.X.1.1
####################################################

#Allow LDAP(and LDAPS)
echo pass in quick proto { udp tcp } from any to 10.1.1.1 port { 389 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.1.1.1 to any port { 389 } >> pf.conf
echo pass in quick proto { udp tcp } from any to 10.1.1.1 port { 636 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.1.1.1 to any port { 636 } >> pf.conf

#Allow DNS
echo pass in quick proto { udp tcp } from any to 10.1.1.1 port { 53 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.1.1.1 to any port { 53 } >> pf.conf

####################################################
#Sternwood
#10.X.1.2
####################################################

#Allow LDAP(and LDAPS)
echo pass in quick proto { udp tcp } from any to 10.1.1.2 port { 389 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.1.1.2 to any port { 389 } >> pf.conf
echo pass in quick proto { udp tcp } from any to 10.1.1.2 port { 636 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.1.1.2 to any port { 636 } >> pf.conf

#Allow SMB
echo pass in quick proto { udp tcp } from any to 10.1.1.2 port { 139 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.1.1.2 to any port { 139 } >> pf.conf
echo pass in quick proto { udp tcp } from any to 10.1.1.2 port { 445 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.1.1.2 to any port { 445 } >> pf.conf

####################################################
#LimeSt
#10.X.1.3
####################################################

echo pass out quick proto { udp tcp } from 10.1.1.3 to any >> pf.conf
echo pass in quick proto { udp tcp } from any to 10.1.1.3 >> pf.conf

####################################################
#LauraSt
#10.X.1.4
####################################################

#Allow WinRM
echo pass in quick proto { udp tcp } from any to 10.1.1.4 port { 5985 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.1.1.4 to any port { 5985 } >> pf.conf
echo pass in quick proto { udp tcp } from any to 10.1.1.4 port { 5986 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.1.1.4 to any port { 5986 } >> pf.conf


####################################################
#FalconAve
#10.X.1.5
####################################################

#Allow ICMP
echo pass in quick proto { udp tcp } from any to 10.1.1.8 port { 7 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.1.1.8 to any port { 7 } >> pf.conf

####################################################
#KingsbyLake
#10.X.1.6
####################################################

#Allow SSH
echo pass in quick proto { udp tcp } from any to 10.1.1.6 port { 22 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.1.1.6 to any port { 22 } >> pf.conf



####################################################
#OldWarren
#10.X.1.7
####################################################

#Allow NTP
echo pass in quick proto { udp tcp } from any to 10.1.1.7 port { 123 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.1.1.7 to any port { 123 } >> pf.conf

####################################################
#Indemnity
#10.X.1.8
####################################################

#Allow ICMP
echo pass in quick proto { udp tcp } from any to 10.1.1.8 port { 7 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.1.1.8 to any port { 7 } >> pf.conf


####################################################
#DoubleIndemnity
#10.X.1.9
####################################################

#Allow ICMP
echo pass in quick proto { udp tcp } from any to 10.1.1.9 port { 7 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.1.1.9 to any port { 7 } >> pf.conf

#Allow some traffic outbound again
echo pass out proto { tcp udp } from any to port { 22 53 80 123 443 } >> pf.conf