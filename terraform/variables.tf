variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "The AWS CLI profile to use"
  type        = string
  default     = "bode_profile"
}

variable "account_id" {
  description = "AWS Account ID"
  type        = string
  default     = "933071741192"
}

variable "ecs_cluster_name" {
  description = "Name of the ECS Cluster"
  type        = string
  default     = "simpsons-cluster"
}

variable "ecs_task_family" {
  description = "ECS Task Definition Family"
  type        = string
  default     = "simpsons-simulator-task"
}

variable "ecs_service_name" {
  description = "ECS Service Name"
  type        = string
  default     = "simpsons-simulator-service"
}

variable "container_name" {
  description = "Container Name"
  type        = string
  default     = "simpsons-container"
}

variable "image_tag" {
  description = "Docker image tag for ECR"
  type        = string
  default     = "latest"
}

variable "subnets" {
  description = "Subnets for ECS Service"
  type        = list(string)
}

variable "security_groups" {
  description = "Security groups for ECS tasks"
  type        = list(string)
}
