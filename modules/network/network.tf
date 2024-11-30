resource "local_file" "network_config" {
  content = <<EOT
  MPLS Bandwidth: ${var.mpls_bandwidth}
  VPN Connections: ${join(", ", var.vpn_connections)}
  Internet Speed: ${var.internet_speed}
  EOT
  filename = "network_config.txt"
}
