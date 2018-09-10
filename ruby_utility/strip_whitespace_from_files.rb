Dir['**/*.rb'].each{|f| x = File.read(f); File.write(f, x.gsub(/[ \t]+$/,"")) }
