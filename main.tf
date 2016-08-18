module "maps" {
  source = "./maps"
  input_aws_cidr_block 			= "${lookup(var.subnet_assignments, var.subnet_stack_name)}"

  ####################################################

  input_private_1              = "${cidrsubnet(module.maps.computed_aws, 6, 0)}"
  input_private_2              = "${cidrsubnet(module.maps.computed_aws, 6, 1)}"
  input_private_3              = "${cidrsubnet(module.maps.computed_aws, 6, 2)}"
  input_public_1               = "${cidrsubnet(module.maps.computed_aws, 6, 3)}"
  input_public_2               = "${cidrsubnet(module.maps.computed_aws, 6, 4)}"
  input_public_3               = "${cidrsubnet(module.maps.computed_aws, 6, 5)}"
  input_cache_1                = "${cidrsubnet(module.maps.computed_aws, 6, 6)}"
  input_cache_2                = "${cidrsubnet(module.maps.computed_aws, 6, 7)}"
  input_cache_3                = "${cidrsubnet(module.maps.computed_aws, 6, 8)}"
  input_db_1                   = "${cidrsubnet(module.maps.computed_aws, 6, 9)}"
  input_db_2                   = "${cidrsubnet(module.maps.computed_aws, 6, 10)}"
  input_db_3                   = "${cidrsubnet(module.maps.computed_aws, 6, 11)}"
  input_cassandra_1            = "${cidrsubnet(module.maps.computed_aws, 6, 12)}"
  input_cassandra_2            = "${cidrsubnet(module.maps.computed_aws, 6, 13)}"
  input_cassandra_3            = "${cidrsubnet(module.maps.computed_aws, 6, 14)}"
  input_elasticsearch_1        = "${cidrsubnet(module.maps.computed_aws, 6, 15)}"
  input_elasticsearch_2        = "${cidrsubnet(module.maps.computed_aws, 6, 16)}"
  input_elasticsearch_3        = "${cidrsubnet(module.maps.computed_aws, 6, 17)}"
}
