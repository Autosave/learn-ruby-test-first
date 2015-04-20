require "spec_helper"

def hello
  "Hello!"
end

def greet(name)
  @name = name
  "Hello, #{@name}!"
end
