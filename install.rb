#!/usr/bin/env ruby

dot_files_to_copy = %w{floorc pryrc bash_path floorc.json nvimrc vimrc guardrc bashrc bash_profile
gitignore_global git-completion.bash synergy.conf bash_env bash_aliases ackrc irbrc}
puts "Removing Old Files"
dot_files_to_copy.each do |r|
  puts `rm ~/.#{r}`
end

puts "Clear vim Directory"
puts `rm -rf ~/.vim`

puts "Creating Symlinks"
dir_location = File.expand_path(File.dirname(__FILE__))

dot_locations = dir_location + '/dot_files/'


dot_files_to_copy.each do |f|
  file_name = ".#{f}"
  path = dot_locations + file_name
  command = "ln -s #{path} ~/#{file_name}"
  puts `#{command}`
end

puts "setup Vim"
puts `ln -s #{dot_locations + ".vim/"} ~/.vim`
