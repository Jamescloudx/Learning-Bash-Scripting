# Get Resource Group Name
read -p "resource-group name: " resourceGroupName

#Get  VM name
read -p "VM name: " vmName

#Get username of operating system
read -p "username: " username

# Create Resource Group
az group create -n $resourceGroupName -l eastus

# Create Virtual Machine
az vm create \
  --resource-group $resourceGroupName \
  --name $vmName \
  --image UbuntuLTS \
  --admin-username $username \
  --ssh-key-values ~/.ssh/id_rsa.pub