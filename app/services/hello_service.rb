# frozen_string_literal: true

# app > services > hello_service
class HelloService
  def initialize(name)
    @name = name || 'world'
  end

  def call
    p "hello #{@name}"
  end
end
