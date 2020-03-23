echo -e "${YELLOW}Provisioning Google Compute${NOCOLOR} : "

cd ./my-Compute
terraform init
terraform plan -out gc.plan
terraform apply "gc.plan"  
cd ..