locals = {
  cluster_name                 = "apsouth1.kopstest.ml"
  master_autoscaling_group_ids = ["${aws_autoscaling_group.master-ap-south-1a-masters-apsouth1-kopstest-ml.id}"]
  master_security_group_ids    = ["${aws_security_group.masters-apsouth1-kopstest-ml.id}"]
  masters_role_arn             = "${aws_iam_role.masters-apsouth1-kopstest-ml.arn}"
  masters_role_name            = "${aws_iam_role.masters-apsouth1-kopstest-ml.name}"
  node_autoscaling_group_ids   = ["${aws_autoscaling_group.nodes-apsouth1-kopstest-ml.id}"]
  node_security_group_ids      = ["${aws_security_group.nodes-apsouth1-kopstest-ml.id}"]
  node_subnet_ids              = ["${aws_subnet.ap-south-1a-apsouth1-kopstest-ml.id}"]
  nodes_role_arn               = "${aws_iam_role.nodes-apsouth1-kopstest-ml.arn}"
  nodes_role_name              = "${aws_iam_role.nodes-apsouth1-kopstest-ml.name}"
  region                       = "ap-south-1"
  route_table_public_id        = "${aws_route_table.apsouth1-kopstest-ml.id}"
  subnet_ap-south-1a_id        = "${aws_subnet.ap-south-1a-apsouth1-kopstest-ml.id}"
  vpc_cidr_block               = "${aws_vpc.apsouth1-kopstest-ml.cidr_block}"
  vpc_id                       = "${aws_vpc.apsouth1-kopstest-ml.id}"
}

output "cluster_name" {
  value = "apsouth1.kopstest.ml"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-ap-south-1a-masters-apsouth1-kopstest-ml.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-apsouth1-kopstest-ml.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-apsouth1-kopstest-ml.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-apsouth1-kopstest-ml.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-apsouth1-kopstest-ml.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-apsouth1-kopstest-ml.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.ap-south-1a-apsouth1-kopstest-ml.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-apsouth1-kopstest-ml.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-apsouth1-kopstest-ml.name}"
}

output "region" {
  value = "ap-south-1"
}

output "route_table_public_id" {
  value = "${aws_route_table.apsouth1-kopstest-ml.id}"
}

output "subnet_ap-south-1a_id" {
  value = "${aws_subnet.ap-south-1a-apsouth1-kopstest-ml.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.apsouth1-kopstest-ml.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.apsouth1-kopstest-ml.id}"
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_autoscaling_group" "master-ap-south-1a-masters-apsouth1-kopstest-ml" {
  name                 = "master-ap-south-1a.masters.apsouth1.kopstest.ml"
  launch_configuration = "${aws_launch_configuration.master-ap-south-1a-masters-apsouth1-kopstest-ml.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.ap-south-1a-apsouth1-kopstest-ml.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "apsouth1.kopstest.ml"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-ap-south-1a.masters.apsouth1.kopstest.ml"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-ap-south-1a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-apsouth1-kopstest-ml" {
  name                 = "nodes.apsouth1.kopstest.ml"
  launch_configuration = "${aws_launch_configuration.nodes-apsouth1-kopstest-ml.id}"
  max_size             = 2
  min_size             = 2
  vpc_zone_identifier  = ["${aws_subnet.ap-south-1a-apsouth1-kopstest-ml.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "apsouth1.kopstest.ml"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.apsouth1.kopstest.ml"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_ebs_volume" "a-etcd-events-apsouth1-kopstest-ml" {
  availability_zone = "ap-south-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                            = "apsouth1.kopstest.ml"
    Name                                         = "a.etcd-events.apsouth1.kopstest.ml"
    "k8s.io/etcd/events"                         = "a/a"
    "k8s.io/role/master"                         = "1"
    "kubernetes.io/cluster/apsouth1.kopstest.ml" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-apsouth1-kopstest-ml" {
  availability_zone = "ap-south-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                            = "apsouth1.kopstest.ml"
    Name                                         = "a.etcd-main.apsouth1.kopstest.ml"
    "k8s.io/etcd/main"                           = "a/a"
    "k8s.io/role/master"                         = "1"
    "kubernetes.io/cluster/apsouth1.kopstest.ml" = "owned"
  }
}

resource "aws_iam_instance_profile" "masters-apsouth1-kopstest-ml" {
  name = "masters.apsouth1.kopstest.ml"
  role = "${aws_iam_role.masters-apsouth1-kopstest-ml.name}"
}

resource "aws_iam_instance_profile" "nodes-apsouth1-kopstest-ml" {
  name = "nodes.apsouth1.kopstest.ml"
  role = "${aws_iam_role.nodes-apsouth1-kopstest-ml.name}"
}

resource "aws_iam_role" "masters-apsouth1-kopstest-ml" {
  name               = "masters.apsouth1.kopstest.ml"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.apsouth1.kopstest.ml_policy")}"
}

resource "aws_iam_role" "nodes-apsouth1-kopstest-ml" {
  name               = "nodes.apsouth1.kopstest.ml"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.apsouth1.kopstest.ml_policy")}"
}

resource "aws_iam_role_policy" "masters-apsouth1-kopstest-ml" {
  name   = "masters.apsouth1.kopstest.ml"
  role   = "${aws_iam_role.masters-apsouth1-kopstest-ml.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.apsouth1.kopstest.ml_policy")}"
}

resource "aws_iam_role_policy" "nodes-apsouth1-kopstest-ml" {
  name   = "nodes.apsouth1.kopstest.ml"
  role   = "${aws_iam_role.nodes-apsouth1-kopstest-ml.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.apsouth1.kopstest.ml_policy")}"
}

resource "aws_internet_gateway" "apsouth1-kopstest-ml" {
  vpc_id = "${aws_vpc.apsouth1-kopstest-ml.id}"

  tags = {
    KubernetesCluster                            = "apsouth1.kopstest.ml"
    Name                                         = "apsouth1.kopstest.ml"
    "kubernetes.io/cluster/apsouth1.kopstest.ml" = "owned"
  }
}

resource "aws_key_pair" "kubernetes-apsouth1-kopstest-ml-4b0aec59deefd8c8f4f99bd3d5b40287" {
  key_name   = "kubernetes.apsouth1.kopstest.ml-4b:0a:ec:59:de:ef:d8:c8:f4:f9:9b:d3:d5:b4:02:87"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.apsouth1.kopstest.ml-4b0aec59deefd8c8f4f99bd3d5b40287_public_key")}"
}

resource "aws_launch_configuration" "master-ap-south-1a-masters-apsouth1-kopstest-ml" {
  name_prefix                 = "master-ap-south-1a.masters.apsouth1.kopstest.ml-"
  image_id                    = "ami-02fd6d56f7a385576"
  instance_type               = "c4.large"
  key_name                    = "${aws_key_pair.kubernetes-apsouth1-kopstest-ml-4b0aec59deefd8c8f4f99bd3d5b40287.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-apsouth1-kopstest-ml.id}"
  security_groups             = ["${aws_security_group.masters-apsouth1-kopstest-ml.id}"]
  associate_public_ip_address = true
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-ap-south-1a.masters.apsouth1.kopstest.ml_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-apsouth1-kopstest-ml" {
  name_prefix                 = "nodes.apsouth1.kopstest.ml-"
  image_id                    = "ami-02fd6d56f7a385576"
  instance_type               = "t2.medium"
  key_name                    = "${aws_key_pair.kubernetes-apsouth1-kopstest-ml-4b0aec59deefd8c8f4f99bd3d5b40287.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-apsouth1-kopstest-ml.id}"
  security_groups             = ["${aws_security_group.nodes-apsouth1-kopstest-ml.id}"]
  associate_public_ip_address = true
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.apsouth1.kopstest.ml_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.apsouth1-kopstest-ml.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.apsouth1-kopstest-ml.id}"
}

resource "aws_route_table" "apsouth1-kopstest-ml" {
  vpc_id = "${aws_vpc.apsouth1-kopstest-ml.id}"

  tags = {
    KubernetesCluster                            = "apsouth1.kopstest.ml"
    Name                                         = "apsouth1.kopstest.ml"
    "kubernetes.io/cluster/apsouth1.kopstest.ml" = "owned"
    "kubernetes.io/kops/role"                    = "public"
  }
}

resource "aws_route_table_association" "ap-south-1a-apsouth1-kopstest-ml" {
  subnet_id      = "${aws_subnet.ap-south-1a-apsouth1-kopstest-ml.id}"
  route_table_id = "${aws_route_table.apsouth1-kopstest-ml.id}"
}

resource "aws_security_group" "masters-apsouth1-kopstest-ml" {
  name        = "masters.apsouth1.kopstest.ml"
  vpc_id      = "${aws_vpc.apsouth1-kopstest-ml.id}"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                            = "apsouth1.kopstest.ml"
    Name                                         = "masters.apsouth1.kopstest.ml"
    "kubernetes.io/cluster/apsouth1.kopstest.ml" = "owned"
  }
}

resource "aws_security_group" "nodes-apsouth1-kopstest-ml" {
  name        = "nodes.apsouth1.kopstest.ml"
  vpc_id      = "${aws_vpc.apsouth1-kopstest-ml.id}"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                            = "apsouth1.kopstest.ml"
    Name                                         = "nodes.apsouth1.kopstest.ml"
    "kubernetes.io/cluster/apsouth1.kopstest.ml" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-apsouth1-kopstest-ml.id}"
  source_security_group_id = "${aws_security_group.masters-apsouth1-kopstest-ml.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-apsouth1-kopstest-ml.id}"
  source_security_group_id = "${aws_security_group.masters-apsouth1-kopstest-ml.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-apsouth1-kopstest-ml.id}"
  source_security_group_id = "${aws_security_group.nodes-apsouth1-kopstest-ml.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "https-external-to-master-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.masters-apsouth1-kopstest-ml.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-apsouth1-kopstest-ml.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-apsouth1-kopstest-ml.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-apsouth1-kopstest-ml.id}"
  source_security_group_id = "${aws_security_group.nodes-apsouth1-kopstest-ml.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-apsouth1-kopstest-ml.id}"
  source_security_group_id = "${aws_security_group.nodes-apsouth1-kopstest-ml.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-apsouth1-kopstest-ml.id}"
  source_security_group_id = "${aws_security_group.nodes-apsouth1-kopstest-ml.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-apsouth1-kopstest-ml.id}"
  source_security_group_id = "${aws_security_group.nodes-apsouth1-kopstest-ml.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-external-to-master-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.masters-apsouth1-kopstest-ml.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "ssh-external-to-node-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.nodes-apsouth1-kopstest-ml.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_subnet" "ap-south-1a-apsouth1-kopstest-ml" {
  vpc_id            = "${aws_vpc.apsouth1-kopstest-ml.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "ap-south-1a"

  tags = {
    KubernetesCluster                            = "apsouth1.kopstest.ml"
    Name                                         = "ap-south-1a.apsouth1.kopstest.ml"
    SubnetType                                   = "Public"
    "kubernetes.io/cluster/apsouth1.kopstest.ml" = "owned"
    "kubernetes.io/role/elb"                     = "1"
  }
}

resource "aws_vpc" "apsouth1-kopstest-ml" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                            = "apsouth1.kopstest.ml"
    Name                                         = "apsouth1.kopstest.ml"
    "kubernetes.io/cluster/apsouth1.kopstest.ml" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "apsouth1-kopstest-ml" {
  domain_name         = "ap-south-1.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                            = "apsouth1.kopstest.ml"
    Name                                         = "apsouth1.kopstest.ml"
    "kubernetes.io/cluster/apsouth1.kopstest.ml" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "apsouth1-kopstest-ml" {
  vpc_id          = "${aws_vpc.apsouth1-kopstest-ml.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.apsouth1-kopstest-ml.id}"
}

terraform = {
  required_version = ">= 0.9.3"
}
