require '~/tools/BashProfile/safe_load'

#Pry Debugger alias definitions
safe_load_gem('pry-stack_explorer')
safe_load_gem('pry-debugger')
safe_load_gem('pry-rails')
safe_load_gem('byebug')
safe_load_gem('pry-byebug')

if defined?(PryDebugger)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end

#Pry Alias
Pry.commands.alias_command 'll', 'ls'
Pry.commands.alias_command 'sm', 'show-source -b ARGV[1]'
Pry.commands.alias_command 'sl', 'show-source -l $1'


#easily load testing environment tools
def load_blueprints
  require "#{Rails.root}/test/load_blueprints.rb"
end

def load_factories
  %w{vcr factory_girl faker}.each{|gem| safe_load_gem(gem) }

  FactoryGirl.reload
end

#hack to clear the screen
def clear
  `reset`
end

#Editor configuration
Pry.config.editor = proc { |file, line| "gvim +#{line} #{file}" }

# Customer exit message
Pry.config.hooks.add_hook(:after_session, :say_bye) do
  puts "bye-bye"
end

# Prompt with ruby version
Pry.prompt = [proc { |obj, nest_level| "#{RUBY_VERSION} (#{obj}):#{nest_level} > " }, proc { |obj, nest_level| "#{RUBY_VERSION} (#{obj}):#{nest_level} * " }]


# Toys methods
# Stealed from https://gist.github.com/807492
class Array
  def self.toy(n=10, &block)
    block_given? ? Array.new(n,&block) : Array.new(n) {|i| i+1}
  end
end

class Hash
  def self.toy(n=10)
    Hash[Array.toy(n).zip(Array.toy(n){|c| (96+(c+1)).chr})]
  end
end
