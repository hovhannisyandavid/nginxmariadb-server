nginx-mariadb-server
Project Overview
This project simulates a small-scale production-like web infrastructure using Ubuntu Server, Nginx, and MariaDB.
The objective is to demonstrate:
•	Linux server administration
•	Web service configuration
•	Database deployment
•	Basic security hardening
•	Operational troubleshooting in a controlled lab environment
The environment was built to replicate real-world infrastructure scenarios commonly found in hosting, NOC, or Linux support environments.
________________________________________
Architecture
The lab environment consists of:
•	Ubuntu Server (main host)
•	Nginx (web server)
•	MariaDB (database server)
Services
•	Nginx listening on port 80
•	MariaDB listening on port 3306 (local access only)
•	SSH secured with key-based authentication
•	UFW firewall configured with restricted access rules
Network Model
Single-node server simulating production stack separation:
•	Web layer
•	Database layer
•	System services layer
Firewall rules ensure only necessary ports are exposed.
________________________________________
Deployment Process
1. Base System Preparation
•	Updated package repositories
•	Installed essential utilities
•	Created non-root user with sudo privileges
•	Disabled root SSH login
•	Enabled SSH key-based authentication
2. Nginx Configuration
•	Installed Nginx
•	Configured server block
•	Set correct file permissions
•	Verified service status with:
o	systemctl status nginx
o	journalctl -xe
3. MariaDB Setup
•	Installed MariaDB
•	Secured installation (removed anonymous users, disabled remote root login)
•	Created test database and user
•	Verified DB service health
4. Firewall Configuration
Configured UFW rules:
•	Allow SSH
•	Allow HTTP
•	Deny all other incoming traffic
________________________________________
Security Hardening Measures
•	SSH key-based authentication
•	Disabled password authentication (optional if implemented)
•	Disabled root login
•	Basic UFW firewall configuration
•	Restricted database access to localhost
•	Service verification via logs
________________________________________
Backup & Automation
Implemented basic backup strategy:
•	Bash script for database dump
•	Timestamped backup files
•	Cron job scheduling
•	Logging of execution status
This demonstrates automation capability and operational maintenance mindset.
________________________________________
Monitoring & Troubleshooting
Operational checks performed using:
•	systemctl
•	journalctl
•	top / htop
•	/var/log/nginx/error.log
•	/var/log/syslog
Example Troubleshooting Scenario
Issue: Nginx service not responding
Diagnosis:
•	Checked service status with systemctl status nginx
•	Reviewed error logs
•	Identified misconfigured server block
Resolution:
•	Corrected configuration file
•	Tested config with nginx -t
•	Restarted service
________________________________________
Skills Demonstrated
•	Linux server administration
•	Service management with systemctl
•	Log analysis
•	Network and port awareness
•	Security-first configuration mindset
•	Bash scripting for maintenance tasks
•	Structured troubleshooting approach
________________________________________
Future Improvements
•	TLS certificate integration (Let’s Encrypt)
•	Centralized logging solution
•	Basic monitoring stack (Prometheus / Grafana)
•	Containerized deployment alternative
•	Separation of web and database into different nodes
