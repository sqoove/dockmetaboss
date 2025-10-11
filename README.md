# DockMetaboss - Ready to use Solana Metaboss Docker Image

![Docker Version](https://img.shields.io/badge/docker-2.37.1%2B-blue)
![License](https://img.shields.io/badge/license-MIT-green)

Docker image providing a comprehensive and ready-to-use Solana smart contract development environment built on **Ubuntu 24.04**. It's designed for developers working with the Solana blockchain using **Rust**, **Anchor**, **SPL Token CLI**, and **Metaboss**.

* * *

## Included Tools & Dependencies

| Tool               | Version            | Notes                                               |
|--------------------|--------------------|-----------------------------------------------------|
| **Ubuntu**         | 24.04              | Base OS                                             |
| **Rust**           | Latest via rustup  | Full toolchain support                              |
| **Solana CLI**     | Latest stable      | Via Anza installer                                  |
| **SPL Token CLI**  | Latest             | Installed via Cargo                                 |
| **Anchor**         | Latest via AVM     | Anchor Version Manager used                         |
| **Metaboss**       | Latest             | NFT utility tool                                    |
| **Others**         | `git`, `curl`, `just`, `nano`, etc. | Build tools, editors, and helpers  | 

* * *

## How to Use

### Build the Docker Image

```bash
docker build -t solana-rust-dev .
````

### Run the Container

```bash
docker run -it --rm solana-rust-dev
```

This will open a Bash shell in a clean Solana development environment.

* * *

## Commands Overview

Once inside the container, you can immediately start working:

```bash
# Rust compiler
rustc --version

# Solana CLI
solana --version

# Anchor CLI (via AVM)
anchor --version

# SPL Token CLI
spl-token --help

# Metaboss NFT utility
metaboss --help
```

You can also manage Anchor versions using AVM:

```bash
avm ls-remote
avm install 0.29.0
avm use 0.29.0
```

* * *

## Docker Hub Usage

To publish your image to Docker Hub and use it from anywhere:

### Create Dockerfile

Write your build instructions:

```bash
nano Dockerfile
```

### Build Docker Image

```bash
sudo docker build -f Dockerfile -t yourdockerhubuser/image-name .
```

### Login to Docker Hub

```bash
sudo docker login -u <username>
```

### Push the Image

```bash
sudo docker push yourdockerhubuser/image-name
```

### Pull the Image

```bash
sudo docker pull yourdockerhubuser/image-name
```

### Start the Container

```bash
sudo docker run -it yourdockerhubuser/image-name bash
```

* * *

## Cleanup & Optimization

* The image is configured with `noninteractive` frontend to avoid manual prompts during package installation.
* `apt clean`, `autoremove`, and `autoclean` help reduce the image size.

* * *

## Credits

* [Solana Labs](https://solana.com/)
* [Coral Anchor](https://github.com/coral-xyz/anchor)
* [Metaboss CLI](https://github.com/samuelvanderwaal/metaboss)
* [AVM](https://github.com/coral-xyz/anchor)

* * *

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Make your changes and commit them (`git commit -m "Add your feature"`).
4. Push to your branch (`git push origin feature/your-feature`).
5. Open a pull request with a clear description of your changes.

Ensure your code follows PEP 8 style guidelines and includes appropriate tests.

* * *

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

* * *

## Contact

For any issues, suggestions, or questions regarding the project, please open a new issue on the official GitHub repository or reach out directly to the maintainer through the [GitHub Issues](issues) page for further assistance and follow-up.