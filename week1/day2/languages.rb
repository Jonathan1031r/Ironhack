class ProgrammingLanguage
 attr_accessor :name, :age, :type
 def initialize(name, age, type)
   @name = name
   @age = age
   @type = type
 end
end

def array_printer(array)
 array.each do |language|
   puts "language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
 end
end

 ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
 python = ProgrammingLanguage.new("Python", 24, "Dynamic")
 javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
 go = ProgrammingLanguage.new("Go", 6, "Static")
 rust = ProgrammingLanguage.new("Rust", 5, "Static")
 swift = ProgrammingLanguage.new("Swift", 2, "Static")
 java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java]

#array_printer(array_of_languages)

aged_languages = array_of_languages.map do |lang|
    ProgrammingLanguage.new(lang.name, lang.age + 1, lang.type) 
end


order_languages = array_of_languages.sort{|lang1, lang2| lang2.age <=> lang1.age}

delete_lang = array_of_languages.delete_if{|lang| lang == java}

shuffle_lang = array_of_languages.shuffle


#array_printer(order_languages)
array_printer(shuffle_lang)


