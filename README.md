# Sherpa
Robomo's club project. A guide bot.
Requires Ubuntu 14.04. Has been partially tested on 16.04.

Issue tracker https://robomo.atlassian.net

#**** Anything Past Here is just Notes ****
# Ros Tests

The networking between containers is handled by Weave<br>
sudo -s<br>
curl -L git.io/weave -o /usr/local/bin/weave<br>
chmod a+x /usr/local/bin/weave<br>
weave launch<br>
eval "$(weave env)"<br>


/docker - contains Docker build files

//Follow the post to get docker running on raspberry pi<br>
http://blog.hypriot.com/post/your-number-one-source-for-docker-on-arm/<br>
//If docker doesn't start<br>
systemctl unmask docker.service<br>
systemctl unmask docker.socket<br>
systemctl start docker.service<br>
