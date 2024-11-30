resource "local_file" "server_config" {
  content = <<EOT
  Server Name: ${var.name}
  CPU Cores: ${var.cpu}
  RAM: ${var.ram} GB
  Storage: ${jsonencode(var.storage)}
  Operating System: ${var.os}
  Database Type: ${var.db_type}
  EOT
  filename = "${var.name}_config.txt"
}
