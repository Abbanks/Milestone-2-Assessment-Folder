# Questions
**What is the Terraform state file used for?**

The state file (terraform.tfstate) acts as the "Source of Truth." It maps your configuration files to the real-world resources actually sitting in your cloud provider. Terraform uses it to calculate the "delta" (the difference) between what you have and what you want, determining which resources need to be created, updated, or destroyed.


**Why is storing state locally risky in a team environment?**

- Merge Conflicts & Corruption: If two teammates run terraform apply simultaneously, they might overwrite each other's changes, leading to state corruption.

- Security: State files often contain sensitive information in plain text (like database passwords or API keys). Local files are harder to secure and encrypt properly.

- Access: If the team member with the state file on their laptop goes on vacation or loses their hardware, no one else can update the infrastructure.


** What is a remote backend? **

A remote backend is a configuration that tells Terraform to store its state file in a shared, remote location (like AWS S3, Azure Blob Storage, or Terraform Cloud) rather than on your local disk. It often includes locking capabilities to prevent concurrent changes.
