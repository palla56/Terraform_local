# main.tf

# Declare required providers
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = ">= 2.0.0"
    }
  }
}

# Define the provider configuration for Docker
provider "docker" {
  # Docker connection details
  host = "tcp://localhost:2375"  # Specify the address of the Docker daemon
}

# Define a Docker container resource
resource "docker_container" "example" {
  # Specify the name of the Docker container
  name = "my-container"

  # Define the container configuration
  image = "nginx:latest"  # Specify the Docker image to pull from the registry

  # Optionally, define additional container settings such as ports, volumes, environment variables, etc.
  # Example:
  # ports {
  #   internal = 80
  #  
