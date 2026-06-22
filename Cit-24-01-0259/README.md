```markdown
# Docker-Based Multi-Container Web Application

## Deployment Requirements
* Docker Engine installed on Linux/Ubuntu
* Bash shell terminal execution privileges

## Application Description
This deployment provisions a two-tier architectural stack consisting of an **Nginx Web Server** frontend acting as the primary entry point, coupled with a highly scalable **Redis Key-Value Data Store** database backend.

## Network and Volume Details
* **Network (`app_network`):** An isolated, user-defined Docker bridge network that permits seamless container-to-container communication via DNS service names.
* **Volume (`redis_data`):** A named persistent storage volume mapped directly to the database layer to safely preserve application states across lifecycles.

## Container Configuration
* **app_web (Nginx):** Listens on port `80` internally, mapped to host port `8080`. Configured with an automatic restart policy on failure.
* **app_db (Redis):** Listens on port `6379` internally. Mounts the persistent volume to `/data` to store data state and operates with a restart policy on failure.

## Example Workflow
To manage this application deployment stack, run the scripts in sequence:

```bash
# 1. Create application resources
./prepare-app.sh

# 2. Run the application
./start-app.sh

# 3. Pause the application (Preserves State)
./stop-app.sh

# 4. Delete all application resources
./remove-app.sh
