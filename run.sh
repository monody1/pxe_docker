docker run -d \
  --net=host  \
  --cap-add=NET_ADMIN \
  -v ./dnsmasq.conf:/etc/dnsmasq.conf \
  -v ./apache2.conf:/etc/apache2/apache2.conf \
  -v ./squid.conf:/etc/squid/squid.conf \
  -v ./tftp:/srv/tftp \
  -v ./www:/var/www \
  --name pxe \
  pxe

