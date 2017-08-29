require '~/tools/BashProfile/ruby_utility/safe_load'

if defined?(PryDebugger) || defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end

#Pry Alias
if defined?(Pry)
  Pry.commands.alias_command 'll', 'ls'
  Pry.commands.alias_command 'sm', 'show-source -b ARGV[1]'
  Pry.commands.alias_command 'sl', 'show-source -l $1'
end


#easily load testing environment tools
def load_blueprints
  require "#{Rails.root}/test/load_blueprints.rb"
end

def load_factories
  %w{vcr factory_girl faker ffaker}.each{|gem| safe_load_gem(gem) }

  FactoryGirl.reload
end

def set_school(id=5)
  SchoolInstance.current_school = SchoolInstance.find(id)
end

#hack to clear the screen
def cls
  `reset`
end

def associated_with(object_or_class)
  klass = object_or_class.is_a?(ActiveRecord::Base) ? object_or_class.class : object_or_class

  klass.reflect_on_all_associations.map(&:name).sort
end

#Editor configuration
# Pry.config.editor = proc { |file, line| "nvim +#{line} #{file}" }

# Customer exit message
Pry.config.hooks.add_hook(:after_session, :say_bye) do
  puts "So Say We All"
end

# Prompt with ruby version
Pry.prompt = [proc { |obj, nest_level| "#{RUBY_VERSION} (#{obj}):#{nest_level} > " }, proc { |obj, nest_level| "#{RUBY_VERSION} (#{obj}):#{nest_level} * " }]

# Name is pwd
Pry.config.prompt_name = File.basename(Dir.pwd)

# Force `reload!` to work correctly
self.send(:include, Rails::ConsoleMethods)

def reload!
  FactoryGirl.reload if defined?(FactoryGirl)
  super
end
