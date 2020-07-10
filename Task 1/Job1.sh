sudo cp ./* /root/github/test
if sudo docker container ps -a| grep "testenv"
then
echo "Testenv is already running , So stopping the testenv"
sudo docker stop testenv
echo "Removing testenv"
sudo docker rm testenv
echo "Reinitializing testenv"
sudo docker run -dt -v /root/github/test:/usr/local/apache2/htdocs -p 8082:80 --name testenv httpd:latest
else
echo "Hello Developer Dev1"
sudo docker run -dt -v /root/github/test:/usr/local/apache2/htdocs -p 8082:80 --name testenv httpd:latest
fi