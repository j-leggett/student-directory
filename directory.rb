# put all the students in an array
students = []

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
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

# finally we print the total number of students
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

# nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)

