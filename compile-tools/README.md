# Compile Tools

1. Download the tools 

2. Copy the tools to your environment

	cp mipsel-openwrt-linux-4.8.3 /opt/ 

3. Add PATH

	sudo vi /etc/bash.bashrc 

At the end of the file, add this:	
	
![](https://github.com/RAKWireless/wiscore/raw/master/img/compile_path.png)

4. Restart service

	source /etc/bash.bashrc

5. Check your PATH

	echo $PATH

if print your path, prove it's OK
