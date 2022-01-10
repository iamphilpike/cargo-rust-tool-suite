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
curl https://sh.rustup.rs -sSf | sh
cargo install spl-token-cli
cargo install cargo-expand
cargo install cargo-edit
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



