# Define your list of images
IMAGES=(
    "capstonenrwcregistry.azurecr.io/optum-azure-capstone-express-server"
    "capstonenrwcregistry.azurecr.io/optum-azure-capstone-angular-app"
    "capstonenrwcregistry.azurecr.io/optum-azure-capstone-flask-api"
)

# Loop through each image and push it to ACR
for image in "${IMAGES[@]}"; do
    docker push "${image}:${IMAGE_TAG}"
done