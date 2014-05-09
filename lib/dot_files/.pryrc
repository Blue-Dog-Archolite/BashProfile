if defined?(PryDebugger)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
  Pry.commands.alias_command 'll', 'ls'
end

Pry.config.editor = "vim"

def load_blueprints
  require "#{Rails.root}/test/load_blueprints.rb"
end

def clear
  `reset`
end
