# Docker image for compiling rust code to the RP 2040.

**Type this to build the docker image:**  
`docker build -t --build-arg now="$(date +%Y%m%d)" docker-rust-rp2040:latest .`

**Type this to use the docker image (mounting current folder as /workspace and using it as the docker workdir):**  
`docker run -it -v ${PWD}:/workspace -w /workspace docker-rust-rp2040`
