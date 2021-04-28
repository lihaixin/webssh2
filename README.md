# webssh2
Web SSH Client using WebSSH2 (ssh2, socket.io, xterm.js) on Alpline docker


# webssh2 new

docker run -d \
-p 5032:5032 \
--restart always \
--name webssh \
jrohy/webssh
