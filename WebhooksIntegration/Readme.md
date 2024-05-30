# Payload URL

Connect Azure DevOps Pipeline with GitHub webhook

To trigger your pipeline using the webhook, you need to make a POST request to

Add the following URL in GitHub Webhook.
```bash
  https://dev.azure.com/<org_name>/_apis/public/distributedtask/webhooks/<webhook_connection_name>?api-version=6.0-preview
```
