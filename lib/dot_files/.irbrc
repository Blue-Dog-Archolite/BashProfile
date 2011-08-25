require 'rubygems'
require 'pp'
require 'bond'
require 'bond/completion'
require 'map_by_method'
require 'what_methods'
require 'wirble'

IRB.conf[:AUTO_INDENT]=true

if rails_env = ENV['RAILS_ENV']
  rails_root = File.basename(Dir.pwd)
  IRB.conf[:PROMPT] ||= {}
  IRB.conf[:PROMPT][:RAILS] = {
    :PROMPT_I => "#{rails_root}(#{ENV['RAILS_ENV'].capitalize})> ",
    :PROMPT_S => "#{rails_root}(#{ENV['RAILS_ENV'].capitalize})* ",
    :PROMPT_C => "#{rails_root}(#{ENV['RAILS_ENV'].capitalize})? ",
    :RETURN   => "=> %s\n"
  }
  IRB.conf[:PROMPT_MODE] = :RAILS

  # Called after the irb session is initialized and Rails has
  # been loaded (props: Mike Clark).
  IRB.conf[:IRB_RC] = Proc.new do
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    ActiveRecord::Base.instance_eval { alias :[] :find }
    begin
      #console helper in rails project
      require 'console_helper'
    rescue Exception => e
      puts e
    end
  end
end
Wirble.init
Wirble.colorize
