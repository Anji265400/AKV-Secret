# DevSecOps End-to-End Python Flask Project

This repository contains a complete DevSecOps pipeline:

- Python Flask web app in `app/`
- Container image build with `Dockerfile`
- Terraform infra for Azure resource group in `infra/main.tf`
- GitHub Actions pipeline in `.github/workflows/pipeline.yml`

## Run locally

```bash
py app/app.py
```

## Run Docker

```bash
docker build -t devsecops-app .
docker run -p 5000:5000 devsecops-app
```

## GitHub Secrets required

- `AZURE_CLIENT_ID`
- `AZURE_CLIENT_SECRET`
- `AZURE_TENANT_ID`
- `AZURE_SUBSCRIPTION_ID`
- `KEYVAULT_NAME`

## Notes

Replace `<your-acr-name>` and `<your-resource-group>` in `.github/workflows/pipeline.yml` and `infra/main.tf` before first run.
