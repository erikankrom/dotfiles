# Install Homebrew
if [ ! -f /usr/local/bin/brew ]; then
  /usr/bin/ruby -e "$(/usr/bin/curl -fsSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install essential packages
brew install wget --enable-iri
brew install bash-completion rename tree 

# Install and link libevent, pkg-config, jpeg
brew install libevent pkg-config jpeg
brew link libevent pkg-config jpeg

# Install development environment essential packages
brew install git bzr
brew install mysql postgresql sqlite mongodb
brew install redis memcached
#brew install imagemagick
brew install solr

# Install node and npm
brew install node
if [ ! -f /usr/local/bin/npm ]; then
    curl http://npmjs.org/install.sh | sh
else
    echo "npm already installed"
fi

# Enable Brew bash completion
if [ ! -f /usr/local/etc/bash_completion.d/brew_bash_completion.sh ]; then
  ln -s "/usr/local/Library/Contributions/brew_bash_completion.sh" "/usr/local/etc/bash_completion.d"
fi