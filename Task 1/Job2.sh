sudo cp ./* /root/github/prod
if sudo docker container ps -a| grep "prodenv"
then
echo "Prodenv is already running , So stopping the prodenv"
sudo docker stop prodenv
echo "Removing prodenv"
sudo docker rm prodenv
echo "Reinitializing prodenv"
sudo docker run -dt -v /root/github/prod:/usr/local/apache2/htdocs -p 8083:80 --name prodenv httpd:latest
else
echo "Hello master Developer "
sudo docker run -dt -v /root/github/prod:/usr/local/apache2/htdocs -p 8083:80 --name prodenv httpd:latest
fi