FROM rust:latest AS docker-rust-rp2040

# Install APT dependencies
RUN apt update -y && apt install \
	libudev-dev gdb-multiarch iproute2 iputils-ping -y

# Install rust tools for ARM MCU's
RUN rustup target install thumbv6m-none-eabi
RUN cargo install probe-rs --features cli
RUN cargo install flip-link

# Add Build time to image
ARG now
ENV BUILD_DATE=$now
