1) Get the token from one of the admin users in the customer account. Please ensure the customer does not have restrictions about impersonation.

2) Run the container: 
    
    `podman run -it --rm -p 3000:3000 igoreulalio/agent-metrics:<TAG>`

3) Open a browser and go to http://localhost:3000

4) You will need to change the default password (admin:admin) on your first login. 