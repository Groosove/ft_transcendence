puts "Hello World!' + 'My name is Artur"
# $a - глобальная переменная

def print_word(name: "Anonymous")
  puts "Hello, #{name.capitalize}!"
end

print_word(name: "Flavon")
print_word()

# Greeter
class Greeter
  attr_accessor :name
  def initialize(name = 'Anonymous')
    @name = name
  end

  def hello
  if @name.nil?
    p "Hi, Anonymous!"
    elsif @name.respond_to?("each")
      @name.each do |name|
        p "Hi, #{name}"
      end
    end
  end

  def goodbye
    if @name.nil?
      puts "Bye, Anonymous!"
    elsif @name.respond_to?("each") 
      @name.each do |name|
        p "Bye, #{name}!"
      end
    end
  end

end

greeter = Greeter.new('Flavon')
greeter.hello
greeter.goodbye

greeter.name = ["Artur","Sjakku", "Fkathryn"]
greeter.hello
greeter.goodbye

x = 10
y = 11
X = 15
#X = 20 С большой буквы пишутся константы

z =  x < y ? true : false
puts z
z = if x > y
      true 
    else 
      false
    end
puts z