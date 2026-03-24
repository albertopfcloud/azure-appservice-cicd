az group create --name rg-azure-cicd --location swedencentral

az appservice plan create --name plan-azure-cicd --resource-group rg-azure-cicd --sku F1 --is-linux

az webapp create --resource-group rg-azure-cicd --plan plan-azure-cicd --name alberto-api-2026 --deployment-container-image-name mcr.microsoft.com/azuredocs/container-apps-helloworld:latest