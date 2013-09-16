class Person
  def initialize(name, age)
   self.name = name
    @age = age
  end



  def name=(new_name)
    if new_name =~ /^[A-Z][a-z]+ [A-Z][a-z]+$/
      @name = new_name
    else
      puts "'#{new_name}' is not a valid name!"
    end
  end

  def have_birthday
    puts "Happy birthday #{@name}!"
    @age += 1
  end

  def whoami
    puts "You are #{@name}, age #{@age}"
  end
end
p = Person.new("Alice Smith", 23)
p.whoami
p.name = "Alice Brown"
p.name = "A"
p.have_birthday
p.whoami

