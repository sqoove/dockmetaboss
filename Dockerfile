FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Setup Environment
RUN apt update && apt -y upgrade && apt -y dist-upgrade && \
    apt -y install build-essential curl git just \
    libclang-dev libssl-dev libudev-dev llvm protobuf-compiler \
    nano pkg-config sudo && \
    apt -y autoremove && apt -y clean && apt -y autoclean

# Install Rust (Latest)
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:$PATH"

# Install Solana CLI (Latest)
RUN sh -c "$(curl -sSfL https://release.anza.xyz/stable/install)" && \
    echo 'export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"' >> ~/.bashrc
ENV PATH="/root/.local/share/solana/install/active_release/bin:$PATH"

# Install SPL Token CLI
RUN cargo install spl-token-cli

# Install AVM + Anchor
RUN cargo install --git https://github.com/coral-xyz/anchor avm --force && \
    avm install latest && \
    avm use latest

# Install Metaboss
RUN cargo install metaboss --locked

CMD [ "bash" ]
