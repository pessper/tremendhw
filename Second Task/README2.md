https://hub.docker.com/repository/docker/pessper/tremend/general

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

