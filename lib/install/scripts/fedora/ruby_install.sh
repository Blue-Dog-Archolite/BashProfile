wget -q http://rubyforge.org/frs/download.php/55066/rubygems-1.3.2.tgz
tar xzf rubygems-1.3.2.tgz
cd rubygems-1.3.2
sudo ruby setup.rb
sudo gem install rails
sudo gem install mongrel mongrel_cluster
sudo gem install json
sudo gem install sqlite3-ruby

