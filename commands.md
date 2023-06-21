terraform console


> aws_instance.web
{
  "ami" = "ami-07dfed28fcf95241c"
  "arn" = "arn:aws:ec2:us-west-2:624414827467:instance/i-063b4148baab01e1e"
  "associate_public_ip_address" = true
  "availability_zone" = "us-west-2a"
  "capacity_reservation_specification" = tolist([
    {
      "capacity_reservation_preference" = "open"
      "capacity_reservation_target" = tolist([])
    },
  ])
  "cpu_core_count" = 1
  "cpu_options" = tolist([
    {
      "amd_sev_snp" = ""
      "core_count" = 1
      "threads_per_core" = 1
    },
  ])
  "cpu_threads_per_core" = 1
  "credit_specification" = tolist([
    {
      "cpu_credits" = "standard"
    },
  ])
  "disable_api_stop" = false
  "disable_api_termination" = false
  "ebs_block_device" = toset([])
  "ebs_optimized" = false
  "enclave_options" = tolist([
    {
      "enabled" = false
    },
  ])
  "ephemeral_block_device" = toset([])
  "get_password_data" = false
  "hibernation" = false
  "host_id" = ""
  "host_resource_group_arn" = tostring(null)
  "iam_instance_profile" = ""
  "id" = "i-063b4148baab01e1e"
  "instance_initiated_shutdown_behavior" = "stop"
  "instance_lifecycle" = ""
  "instance_market_options" = tolist([])
  "instance_state" = "running"
  "instance_type" = "t2.micro"
  "ipv6_address_count" = 0
  "ipv6_addresses" = tolist([])
  "key_name" = ""
  "launch_template" = tolist([])
  "maintenance_options" = tolist([
    {
      "auto_recovery" = "default"
    },
  ])
  "metadata_options" = tolist([
    {
      "http_endpoint" = "enabled"
      "http_put_response_hop_limit" = 2
      "http_tokens" = "required"
      "instance_metadata_tags" = "disabled"
    },
  ])
  "monitoring" = false
  "network_interface" = toset([])
  "outpost_arn" = ""
  "password_data" = ""
  "placement_group" = ""
  "placement_partition_number" = 0
  "primary_network_interface_id" = "eni-089d6066e261e2675"
  "private_dns" = "ip-172-31-20-181.us-west-2.compute.internal"
  "private_dns_name_options" = tolist([
    {
      "enable_resource_name_dns_a_record" = false
      "enable_resource_name_dns_aaaa_record" = false
      "hostname_type" = "ip-name"
    },
  ])
  "private_ip" = "172.31.20.181"
  "public_dns" = "ec2-34-219-116-208.us-west-2.compute.amazonaws.com"
  "public_ip" = "34.219.116.208"
  "root_block_device" = tolist([
    {
      "delete_on_termination" = true
      "device_name" = "/dev/xvda"
      "encrypted" = false
      "iops" = 3000
      "kms_key_id" = ""
      "tags" = tomap({})
      "throughput" = 125
      "volume_id" = "vol-0da3b413eee644794"
      "volume_size" = 8
  })
  "tenancy" = "default"
  "timeouts" = null /* object */
  "user_data" = tostring(null)
  "user_data_base64" = tostring(null)
  "user_data_replace_on_change" = false
  "volume_tags" = tomap(null) /* of string */
  "vpc_security_group_ids" = toset([
    "sg-0f0a47ca0388730fd",
  ])
}

--
Terraform init


-------------------------------------------------------------
Terraform plan


-------------------------------------------------------------
Terraform apply —auto-approve 

terraform apply -refresh=false

terraform apply -target= <resource type >

terraform plan -out rg.tfplan

terraform destroy 

terraform fmt

terraform validate

terraform sh