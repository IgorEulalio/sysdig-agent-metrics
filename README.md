**Agent Metrics for Secure customers**

For Secure only customers, we have limited visibility when troubleshooting agent issues, relying on screenshots and other customer provided information. This tool allows you to use Grafana to view some agent metrics available in the backend.

Steps to use it:

1) Make sure you are logged into the internal registry docker.internal.sysdig.com. Link to [doc](https://sysdig.atlassian.net/wiki/spaces/DEVOPS/pages/856948754/Artifactory+Login)

2) Get the token from one of the admin users in the customer account. Please ensure the customer does not have restrictions about impersonation.

3) Run the container: 
    
    `podman run -it --rm -p 3000:3000 igoreulalio/agent-metrics:<TAG>`

4) Open a browser and go to http://localhost:3000

5) You will need to change the default password (admin:admin) on your first login. 

6) Go to dashboards and open the troubleshooting dashboard


When you are done using it, please control+c to stop the container and remove all data.