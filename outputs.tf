output "ip_list_json" {
  value = jsonencode({
    for region, instance in aws_instance.ghosts :
    region => instance.public_ip
  })
  description = "A JSON-encoded map of region to instance public IP."
}
