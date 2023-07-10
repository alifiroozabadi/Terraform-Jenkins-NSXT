provider "nsxt" {
  host                 = "192.168.149.21"
  username             = "admin"
  password             = "nsx@password"
  allow_unverified_ssl = true
  max_retries          = 2
}

resource "nsxt_policy_group" "NSXT-AD-List-GP" {
  display_name = "NSXT-AD-List-GP"

  criteria {
    ipaddress_expression {
      ip_addresses = ["192.168.1.1", "192.168.1.2", "192.168.1.3", "192.168.1.4"]
    }
  }
}
