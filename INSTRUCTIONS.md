Instructions
------------------

Given time I will try and include a comprehensive screen-shotted or video tutorial, but for now here are some basic instructions.  

Install a LAMP server, I prefer the TurnkeyLinux LAMP distribuation at http://turnkeylinux.org/lamp as it comes ready to un out of the box with phpMyAdmin already installed

Using PHPMyAdmin or the MySQL Command Line Interface, setup the database "beer" and load the information by loading the sql/beer.sql script.  This will setup a new database and the data tables for you as well as some dummy data.  Refer to the instructions provided by each application on how to do this.  Once loaded, you can adjust the Beer information, or just leave it as is for testing.

Load the keg directory into the /var/www folder of your LAMP server and make sure the permissions are set correctly (for TurnkeyLinux, the files should be owned by www-data:www-data). You should now be able to open a browser to http://<ipaddress>/keg

