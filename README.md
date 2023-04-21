# 404WebMail
# How to run Project
    1. Copy all the source code to the htdocs folder of your XAMPP installation.
    2. Open the Apache configuration file (httpd.conf) located in the apache/conf folder of your XAMPP installation.
    3. Edit the following lines:
        # DocumentRoot "<yourpath_xampp_installed>/htdocs/public"
        # <Directory "<yourpath_xampp_installed>/htdocs/public">
        # Replace <yourpath_xampp_installed> with the actual path where XAMPP is installed on your system.
    4. In the Core/ folder, you will find two SQL files: 404webmai.sql and database.sql. These files contain the necessary SQL statements to create the required database tables. The 404webmai.sql file only contains the table structure, while the database.sql file contains both the table structure and some initial data that can be used for testing purposes. Import these files into phpMyAdmin to create the database tables.
    5. Import the above sql file to PHPMYADMIN
    6. If you have set a password for your phpMyAdmin in XAMPP, you will need to modify the configuration file of the project to include the correct login credentials:
        # Open the Database.php file located in the Core/ directory of our project.
        # Look for the constructor method of the class
        # Update the password parameter accordingly.
    6. Once the SQL files have been imported, you can test the project by opening the following URL in your web browser: http://localhost/
    7. To log in as an administrator, use the following credentials:
        username: admin
        password: 123456
    8. To log in as a regular user, use the following credentials:
        email: christelle34@example.org
        password: abc
    9. To log in as a locked user, use the following credentials (locked user is not allowed to log in our application):
        email: ahaag@example.net
        password: abc
