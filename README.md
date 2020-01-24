# quorum500

Easily manage your platform across different cloud providers (and bare metal) from a centralized place.

# Idea

Getting reliable software in front of your users is key for your company's success and reputation.

**quorum500** is designed to make your life easier when it comes to:
* Deploying applications, by enabling you to deploy in multiple regions in different cloud providers in VMs or containers.
* Troubleshooting issues, by having the information you need in a centralized place (logs/metrics/alerts/infrastructure usage)

Following best practices should not be a challenge. Platform should give you right tools that lead towards better architecture and design choices.

# Goals:

The project is under development and ultimately we aspire of giving you the following under [MIT licence](https://github.com/advanced-research/quorum500/blob/master/LICENSE).

- Have full control over your platform with default options that work
- Easy to use
- Combines open source products in a way that works
- Self healing platform and applications
- Scalable platform
- Multi cloud support (Azure/Google Cloud/AWS/AliCloud)
- Big data processing (Hadoop/Spark)
- Extensible

# Feedback

We'd love your feedback, ideas and to hear how we can help solve the challenges you're facing! Feel free to [create a GitHub issue](https://github.com/advanced-research/quorum500/issues/new) and get the conversation started!

# Focus

There's a lot of things to do, and initally the focus will be on providing the following products:

- Run tests for your software
	- [Beaver CI](https://github.com/BeaverCI)/SaaS CI/CD
- Store software artifacts (docker images, archives)
	- Cloud/Bare metal blob storage/[Artifactory](https://jfrog.com/artifactory/)
- Have a secrets engine to safely store secrets on
	- [Hashicorp Vault](https://www.vaultproject.io/)
- Deploy software in multiple regions and AZs that scales (VMs/containers)
	- different cloud providers/bare metal
- Have a dashboard that shows logs/metrics/alerts, infra usage (CPU/memory/etc)
	- different backends: own software, [Prometheus](https://prometheus.io/), [NewRelic](https://newrelic.com/), [PagerDuty](pagerduty.com), [Sumologic](https://www.sumologic.com/)
