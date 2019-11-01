# Generic IBM Cloud Service Template

An [IBM Cloud Schematics](https://console.bluemix.net/docs/services/schematics/index.html) template that allows creation of any of the available services in the IBM Cloud catalog.

Schematics uses [Terraform](https://www.terraform.io/) as the infrastructure as code engine. With this template, you can provision and manage infrastructure as a single unit.

See the [Terraform provider docs](https://ibm-bluemix.github.io/tf-ibm-docs/) for available resources for the IBM Cloud.

## Create an environment with this template

Environments can be used to separate software components into development tiers (e.g. staging, QA, and production).

1. In IBM Cloud, go to the menu and select the [Schematics dashboard](https://console.bluemix.net/schematics).
2. In the left navigation menu, select **Templates** to access the template catalog.
3. Click **Create** on the `cloud-service` template. You are taken to a configuration page where you can define metadata about your environment.
4. In the **Variables** section:
  a. Set the value of `servicename` to the service type you want to create. You can run `bx cf marketplace` in the IBM Cloud CLI for a list of available services.
  b. Set the value of `plan` to the service plan for the service you want to create. Service plans are often unique for a service, so you can run `bx cf marketplace -s <servicename>` to look up the plan.
5. Define values for your [variables](#variables).
6. This template generates a service key, which you need to access your new service. This key is generated and you can see it in your service details on your dashboard on https://console.bluemix.net/dashboard/apps.
## Variables

|Variable Name|Description|Default Value|
|-------------|-----------|-------------|
|ibm_bmx_api_key|Your IBM Cloud API key. You can run `bx iam api-key-create <key name>` to create a key.| |
|org|Your IBM Cloud organization.||
|space|Your IBM Cloud space.||
|servicename|The name of the service type, see `bx cf marketplace`.||
|plan|The plan for the service that you want to create.||

## Next steps

After setting up your environment with this template, you can run **Plan** to preview how Schematics will deploy resources to your environment. When you are ready to deploy the cluster, run **Apply**.
