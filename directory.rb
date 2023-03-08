def input_students
  puts "Please enter the names of students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  students 
end

def print_header
  puts "The student of Villains Academy"
  puts "------------"
end
# print student list using iteration
def print(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}.#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

# finally we print the total number of students
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

def interactice_menu
  students = []
   # 4. repeat from step 1
  loop do
  # 1. print the menu and ask the user what to do
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
  # 2. read the input and save it in to a variable
  selection = gets.chomp
  # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit
    else
      puts "i don't know what you meant, try again"
    end
  end
end

# nothing happens until we call the methods
interactice_menu
