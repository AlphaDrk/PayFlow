-- Create databases
CREATE DATABASE IF NOT EXISTS auth_db;
CREATE DATABASE IF NOT EXISTS client_db;
CREATE DATABASE IF NOT EXISTS product_db;
CREATE DATABASE IF NOT EXISTS invoice_db;
CREATE DATABASE IF NOT EXISTS payment_db;

-- Create users and grant privileges
CREATE USER IF NOT EXISTS 'payflow_user'@'%' IDENTIFIED BY 'payflow_password';

-- Grant privileges for each database
GRANT ALL PRIVILEGES ON auth_db.* TO 'payflow_user'@'%';
GRANT ALL PRIVILEGES ON client_db.* TO 'payflow_user'@'%';
GRANT ALL PRIVILEGES ON product_db.* TO 'payflow_user'@'%';
GRANT ALL PRIVILEGES ON invoice_db.* TO 'payflow_user'@'%';
GRANT ALL PRIVILEGES ON payment_db.* TO 'payflow_user'@'%';

-- Apply privileges
FLUSH PRIVILEGES;
