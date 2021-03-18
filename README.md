# WebApp-ChristmasSoda

Christmas Soda University was a joint project that required a web application that can run on any TOMCAT Server be built with many other conditions.
We built a secure web application that requires log in information to access protected web pages. 
The website uses Java Servlets and JSPs to implement a prototypes of secure web information system.

Installation

Using UNIX, upload the java files folder, jsp files folder, WEB-INF folder (which includes the java folder, classes folder, lib folder, and web.xml file), from the ChristmasSoda folder to your root directory /website folder.

scp -r .../xmasSoda/WEB-INF itec4020grp3@sit.itec.yorku.ca:/home/itec4020grp3/website
scp -r .../xmasSoda/jsp itec4020grp3@sit.itec.yorku.ca:/home/itec4020grp3/website
scp -r .../xmasSoda/java itec4020grp3@sit.itec.yorku.ca:/home/itec4020grp3/website

log into your web server and compile the java classes

ssh itec4020grp3@sit.itec.yorku.ca
cd website/java
javac -cp /home/itec4020grp3/website/WEB-INF/lib/servlet-api.jar -d /home/itec4020grp3/website/WEB-INF/classes *.java

Delete the Java folder located in the webpage directory

cd /home/itec4020grp3/website
rm -r java

Move the jsp files from the jsp folder to the website folder and erase the jsp folder.

cd /home/itec4020grp3/website/jsp
mv *.jsp /home/itec4020grp3/website
cd /home/itec4020grp3/website
rm -r jsp

Usage

Once you follow all the steps for uploading your Christmas Soda University web application, you should be able to access the working web page on http:/sit.itec.yorku.ca:8080/itec4020grp3/

Authors and acknowledgment

Created by Matteo Piazza, Daniel Popovic and Matthew Lanteigne
