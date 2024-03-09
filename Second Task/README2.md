https://hub.docker.com/repository/docker/pessper/tremend/general

In this project, we containerize a simple Python application (`app.py`) with Docker and automate the build and push processes using GitHub Actions. The steps involved include:

1. Choosing the Python application (`app.py`) to containerize.
2. Creating a Dockerfile to define the environment and dependencies for the application.
3. Testing the Dockerized application locally to ensure it functions correctly within the container.
4. Setting up a Docker registry (e.g., Docker Hub) and creating a repository.
5. Automating the build and push processes using GitHub Actions:
   - Triggering the build whenever changes are pushed to the main/master branch.
   - Building the Docker image using the Dockerfile.
   - Tagging the Docker image with a version or commit hash and the latest tag.
   - Pushing the Docker image to the Docker registry.

## Steps Taken

1. Choosing the Python Application: The `app.py` file was selected as the Python application to containerize.

2. Creating the Dockerfile: A Dockerfile (`Dockerfile`) was created in the project root directory to define the Docker image for the application.

3. Local Testing**: The Docker image was built locally using the Dockerfile, and the Dockerized application was tested to ensure it functions correctly within the container.

4. Setting Up Docker Registry: Docker Hub was chosen as the Docker registry service. An account was created on Docker Hub, and a repository was created to store the Docker image.

5. Automation with GitHub Actions: A GitHub Actions workflow (`docker-build-push.yml`) was created to automate the build and push processes:
   - The workflow triggers whenever changes are pushed to the main/master branch.
   - It builds the Docker image using the Dockerfile.
   - Tags the Docker image with a version or commit hash and the latest tag.
   - Pushes the Docker image to the Docker registry.

