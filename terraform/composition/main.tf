locals {
  resource_query  = {
  "ResourceTypeFilters": [
    "AWS::AllSupported"
  ],
  "TagFilters": [
    {
      "Key": "Project-Code",
      "Values": ["test"]
    }
  ]
 
}
}
 

resource "random_id" "resource_group" {
  # example: 175c5e77
  byte_length = 4
  
 
 

  lifecycle {
    create_before_destroy = true
  }
}

 resource "aws_resourcegroups_group" "this" {
  name           = "rsce_grp_${random_id.resource_group.hex}"
  description    = "aws layer 0"

  resource_query {
    query = jsonencode(local.resource_query)
  }

 
 
}