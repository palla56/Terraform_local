# main.tf

# Define the provider configuration for Docker
provider "docker" {
  # Specify the source address for the Docker provider
  source = "kreuzwerker/docker"
  
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
  #   external = 8080
  # }

  # volumes {
  #   container_path = "/app"
  #   host_path      = "/data"
  # }
}
