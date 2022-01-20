# Step 1:
# This is your Docker ID/path
$dockerpath="pkrzysztoff/projecttag"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity `
    --image=$dockerpath `
    --port=80 --labels app=udacity
Read-Host

# Step 3:
# List kubernetes pods
kubectl get pods
Read-Host

# Step 4:
# Forward the container port to a host
kubectl port-forward udacity 8000:80
