azurerm_firewalls = {
  fw_re1 = {
    name               = "egress"
    resource_group_key = "vnet_hub_re1"
    vnet_key           = "vnet_hub_re1"
    sku_tier           = "Basic"
    # public_ip_key      = "firewall_re1"  # if this is defined, public_ip_keys is ignored
    public_ip_keys = ["firewall_re1", "firewall_pip2_re1"]
    management_ip_configuration = {
       firewall_pip3_re1 = {
         name          = "2"
         public_ip_key = "firewall_pip3_re1"
         #         # public_ip_address_id = "/subscriptions/xxxx/resourceGroups/xxxx/providers/Microsoft.Network/publicIPAddresses/xxxx"
         vnet_key   = "vnet_hub_re1"
         subnet_key = "AzureFirewallManagementSubnet"
       }
     }

    azurerm_firewall_network_rule_collections = [
      "aks"
    ]

    azurerm_firewall_application_rule_collections = [
      "aks",
      "packages"
    ]
  }
}



# azurerm_firewalls = {
#   fw_re1 = {
#     name               = "egress"
#     resource_group_key = "vnet_hub_re1"
#     vnet_key           = "vnet_hub_re1"
#     sku_tier           = "Basic"
#     # zones              = ["1", "2", "3"]
#     public_ips = {
#       firewall_re1 = {
#         name          = "egress-pip1"
#         public_ip_key = "firewall_re1"
#         vnet_key      = "vnet_hub_re1"
#         bnet_key      = "AzureFirewallSubnet"
#         #         # lz_key = "lz_key"
#       }
#       firewall_pip2_re1 = {
#         name          = "egress-pip2"
#         public_ip_key = "firewall_pip2_re1"
#         vnet_key      = "vnet_hub_re1"
#         #         # subnet_key    = "AzureFirewallSubnet"
#         #         # lz_key = "lz_key"
#       }

#     }
#     management_ip_configuration = {
#       firewall_pip3_re1 = {
#         name          = "egress-pip3"
#         public_ip_key = "firewall_pip3_re1"
#         #         # public_ip_address_id = "/subscriptions/xxxx/resourceGroups/xxxx/providers/Microsoft.Network/publicIPAddresses/xxxx"
#         vnet_key   = "vnet_hub_re1"
#         subnet_key = "AzureFirewallManagementSubnet"
#       }
#     }
#     azurerm_firewall_network_rule_collections = [
#       "aks"
#     ]

#     azurerm_firewall_application_rule_collections = [
#       "aks",
#       "packages"
#     ]
#   }
# }



