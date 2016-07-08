echo "Installing Ruby dependencies"
  sudo apt-get update
  sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev -y

echo "Installing Ruby 2.3.1 from source code"
  cd
  wget http://ftp.ruby-lang.org/pub/ruby/2.3/ruby-2.3.1.tar.gz
  tar -xzvf ruby-2.3.1.tar.gz
  cd ruby-2.3.1/
  ./configure
  make
  sudo make install

echo "Installing Bundler"
  sudo gem install bundler

echo "Installing Node.js"
  curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
  sudo apt-get install -y nodejs

echo "Installing Rails 4.2.6"
  sudo gem install rails -v 4.2.6
