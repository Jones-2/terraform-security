package terraform.security

# Deny security groups that allow 0.0.0.0/0 for all ports
deny[msg] {
  resource := input.resource_changes[_]
  resource.type == "aws_security_group_rule"
  resource.change.after.cidr_blocks[_] == "0.0.0.0/0"
  msg = sprintf("Security rule allows 0.0.0.0/0: %v", [resource.address])
}
