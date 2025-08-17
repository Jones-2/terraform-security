# Policy Enforcement Summary

This folder shows examples for:
- Azure Policy definition (deny public blob access)
- AWS OPA/Rego example for detecting public security group rules
- GCP constraint template skeleton for policy controller

Recommendation: integrate these checks in CI (shift-left) and also enforce at the cloud control plane (Azure Policy, GCP Org Policies, AWS Config / SCPs).
