docker rm -f jenkins_server 2>/dev/null || true

docker run --rm -u root \
  --security-opt seccomp=unconfined \
  --pids-limit=-1 --ulimit nproc=8192:8192 \
  -p 8080:8080 -v jenkins-data:/var/jenkins_home \
  -v $(which docker):/usr/bin/docker -v /var/run/docker.sock:/var/run/docker.sock \
  -v "$HOME":/home --name jenkins_server jenkins/jenkins:lts