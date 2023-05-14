#yum install -y httpd
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
base       | 3.6 kB  00:00:00                   
bjhl       | 2.9 kB  00:00:00           
Not using downloaded bjhl/repomd.xml because it is older than what we have:
  Current   : Fri Jan 29 16:44:01 2021
  Downloaded: Fri Jan 29 16:38:53 2021
Resolving Dependencies
--> Running transaction check
---> Package httpd.x86_64 0:2.4.6-97.el7.centos will be installed
--> Processing Dependency: httpd-tools = 2.4.6-97.el7.centos for package: httpd-2.4.6-97.el7.centos.x86_64
--> Processing Dependency: /etc/mime.types 
--> Processing Dependency: libaprutil-1.so.0()(64bit) 
--> Processing Dependency: libapr-1.so.0()(64bit)
--> Running transaction check
---> Package apr.x86_64 0:1.4.8-7.el7 will be installed
---> Package apr-util.x86_64 0:1.5.2-6.el7 will be installed
---> Package httpd-tools.x86_64 0:2.4.6-97.el7.centos will be installed
---> Package mailcap.noarch 0:2.1.41-2.el7 will be installed
--> Finished Dependency Resolution

Install  1 Package (+4 Dependent packages)

Total download size: 3.0 M
Installed size: 10 M

Complete!
#yum list httpd
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
   @updates
#yum remove httpd
Loaded plugins: fastestmirror
Resolving Dependencies
--> Running transaction check
---> Package httpd.x86_64 0:2.4.6-97.el7.centos will be erased
--> Finished Dependency Resolution

Dependencies Resolved

Remove  1 Package

Installed size: 9.4 M
Is this ok [y/N]: y
Downloading packages:
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Erasing:httpd-2.4.6-97.el7.centos.x86_64     1/1     
  Verifying:httpd-2.4.6-97.el7.centos.x86_64      1/1     

Removed:
  httpd.x86_64 0:2.4.6-97.el7.centos

Complete!
