def safe_load_gem(gem_name, silent: true)
  require gem_name
rescue LoadError => e
  puts "Can't load #{gem_name}, #{e.inspect}" unless silent
end

