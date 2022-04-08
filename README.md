# Ansible Role to provision Graylog on debian hosts


After job has been ran successfully you will need to create password for the Graylog server. The server will not start without: 
- Run ```pwgen -N 1 -s 96 <br>```
- Copy the output to: ```sudo nano /etc/graylog/server/server.conf``` --- password_secret = "the password" <br>
- Save and close <br>
- Run ```echo -n password | sha256sum``` (change the password, to your own password. This is the login for the web!) <br>
- Copy the output to: ```sudo nano /etc/graylog/server/server.conf``` ---- root_password_sha2 = "the hashed password" <br>
- Change the **http_bind** address: <br>
    - ```sudo nano /etc/graylog/server/server.conf``` <br>
    - http_bind_address = server-ip-address:9000 <br>
<br>
<br>

Read more: <br>
https://docs.graylog.org/docs/ubuntu

