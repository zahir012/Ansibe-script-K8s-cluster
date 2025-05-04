#### Shell script to restart all deployments/services in the Kubernetes cluster

#!/bin/bash

# Retrieve all namespaces and save them in an array
namespaces=($(kubectl get namespaces -o jsonpath='{.items[*].metadata.name}'))

# Loop through each namespace
for namespace in "${namespaces[@]}"
do
    echo "Restarting deployment in namespace $namespace..."

    # Get the list of deployments in the namespace
    deployments=$(kubectl get deployment -n $namespace --no-headers=true | awk '{print $1}')

    # Loop through each service and restart it
    for deployment in $deployments
    do
        echo "Restarting deployment $deployment in namespace $namespace..."
        kubectl rollout restart deployment $deployment -n $namespace
    done

    echo "deployment restarted in namespace $namespace."
done

echo "All deployment restarted in all namespaces."


-------------

###Shell script to get all namespace in eks cluster


#!/bin/bash

# Retrieve all namespaces and save them in an array
namespaces=($(kubectl get namespaces -o jsonpath='{.items[*].metadata.name}'))

# Print the namespaces
for namespace in "${namespaces[@]}"
  do
    echo "$namespace"
  done