# IaC Scanning

This folder contains:
- insecure-main.tf: a deliberately insecure example
- secure-main.tf: a corrected example
- github-actions-scan.yml: a GitHub Actions workflow that runs Checkov on each PR

Tools to try locally:
- Checkov: `pip install checkov` then `checkov -d .`
- TFSec: `curl -sSL https://raw.githubusercontent.com/aquasecurity/tfsec/master/scripts/install_linux.sh | bash` then `tfsec .`
