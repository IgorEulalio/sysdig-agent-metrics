**Making changes to the dashboards**

You won't be able to make changes and save them directly when running this image.

One way to make changes is to run the plain Grafana container 
`podman run --rm -p 3000:3000 --name grafana grafana/grafana`

Then set up the data source (should be called "sysdig").

Import the current dashboard in this directory.

You can then make changes and save them. 

When you are done you can export the dashboard json.

Move the new dashboard json to this directory and rename accordingly.

Modify the Dockerfile to reference the new dashboard.

Build the image:
`podman build -t docker.internal.sysdig.com/agent-metrics:0.1 .`

Push to the private registry:
`podman push docker.internal.sysdig.com/agent-metrics:0.1`