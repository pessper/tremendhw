## Steps

1. Create MySQL Container:
   - Run the following command to create a MySQL container:
     ```
     docker run --name mysql-container -e MYSQL_ROOT_PASSWORD=password -d mysql:latest
     ```

2. Create Database:
   - Enter the MySQL container and create a database named "company":
     ```
     docker exec -it mysql-container mysql -u root -ppassword -e "CREATE DATABASE company;"
     ```

3. Import Data:
   - Copy the company.sql file into the container:
     ```
     docker cp /path/to/company.sql mysql-container:/company.sql
     ```
   - Import the SQL dump into the company database:
     ```
     docker exec -i mysql-container mysql -u root -ppassword company < /company.sql
     ```

4. Create User and Assign Permissions:
   - Create a new user and grant permissions for the "company" database:
     ```
     docker exec -it mysql-container mysql -u root -ppassword -e "CREATE USER 'newuser'@'%' IDENTIFIED BY 'password';"
     docker exec -it mysql-container mysql -u root -ppassword -e "GRANT ALL PRIVILEGES ON company.* TO 'newuser'@'%';"
     docker exec -it mysql-container mysql -u root -ppassword -e "FLUSH PRIVILEGES;"
     ```

5. Find Average Salary by Department:
   - Run the following SQL query to find the average salary for each department:
     ```sql
     SELECT d.department_name, AVG(e.salary) AS average_salary
     FROM employees e
     INNER JOIN departments d ON e.department = d.department_id
     GROUP BY e.department;
     ```
  ## Bonus/Nice-to-have
  docker run --name mysql-container -v /path/on/host:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=password -d mysql:latest
  `/path/to/company.sql` -> actual path to the `company.sql` file on your host machine for the volume mount.
