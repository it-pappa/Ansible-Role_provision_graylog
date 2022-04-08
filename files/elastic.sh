echo "Installing Elastic search..."

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/oss-6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list
apt update
apt install -y elasticsearch-oss

tee -a /etc/elasticsearch/elasticsearch.yml > /dev/null <<EOT
cluster.name: graylog
EOT

systemctl daemon-reload
systemctl enable elasticsearch.service
systemctl restart elasticsearch.service

echo "Elastic will be up and running in about 1 min!"