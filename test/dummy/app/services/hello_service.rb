# frozen_string_literal: true

# app > services > hello_service
class HelloService
  def initialize(name = 'world')
    @name = name
  end

  def call
    p "hello #{@name}"
  end
end
