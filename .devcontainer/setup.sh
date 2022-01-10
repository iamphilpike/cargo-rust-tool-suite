## update and install some things we should probably have
apt-get update
apt-get install -y \
  curl \
  git \
  gnupg2 \
  jq \
  sudo \
  zsh \
  vim \
  build-essential \
  openssl \
  zlib1g-dev  \
  pkg-config  \
  libssl-dev \
  libudev-dev

## Install rustup and common components##
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain nightly
source $HOME/.cargo/env
rustup install nightly
rustup component add rustfmt
rustup component add rustfmt --toolchain nightly
rustup component add clippy 
rustup component add clippy --toolchain nightly
cargo install cargo-expand
cargo install cargo-edit
cargo install spl-token-cli
#Solana Tools##

##Solana Release Installation v1.9.4##
sh -c "$(curl -sSfL https://release.solana.com/v1.9.4/install)"
export PATH="/root/.local/share/solana/install/active_release/bin:$PATH"

## setup and install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp -R /root/.oh-my-zsh /home/$USERNAME
cp /root/.zshrc /home/$USERNAME
sed -i -e "s/\/root\/.oh-my-zsh/\/home\/$USERNAME\/.oh-my-zsh/g" /home/$USERNAME/.zshrc
chown -R $USER_UID:$USER_GID /home/$USERNAME/.oh-my-zsh /home/$USERNAME/.zshrc



