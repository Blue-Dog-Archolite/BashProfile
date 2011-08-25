class BashProfile
  def self.install(args = {})
    gem_saved_to = File.expand_path(File.dirname(__FILE__))

    puts "Installing dot files"
    files_to_install = args.has_key?(:files) ? args[:files] : %w(.bash_aliases .bash_path .bash_profile .bashrc .irbrc .vimrc)

    files_to_install.each do |file|
      puts "Removing ~/#{file}"
      `rm ~/#{file}`

      puts "Creating sym link to gem specified #{file}"
      `ln -s #{gem_saved_to}/dot_files/#{file} ~/#{file}`
    end

    puts "Setting up your vim directory"
    `rm -rf ~/.vim`
    puts "ln -s #{gem_saved_to}/dot_files/vim .vim"
    `ln -s #{gem_saved_to}/dot_files/vim .vim`
  end
end
