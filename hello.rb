puts "Hello World!' + 'My name is Artur"

def print_word(name = 'Anonymous')
  puts "Hello, #{name.capitalize}!"
end

print_word('FLAVON')

# Greeter
class Greeter
  def initialize(name = 'Anonymous')
    @name = name
  end

  def hello
    p "Hi, #{@name}!"
  end

  def goodbye
    puts "Bye, #{@name}!"
  end
end

greeter = Greeter.new('Flavon')
greeter.hello
greeter.goodbye
