def input_students
  puts "Please enter the names of students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  puts "what is their hight in cm?"
  height = gets.chomp
  # while the name is not empty repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november, height: height}
    puts "Now we have #{students.count} students"
    # get another name from the user
    puts "name?"
    name = gets.chomp
    if !name.empty?
    puts "height in cm?"
    height = gets.chomp
    end
  end
  students
end

def print_header
  puts "The student of Villains Academy".center(50)
  puts "------------".center(50)
end
# print student list using iteration
def print(students)
  counter = 0
  while students.length > counter
  puts "#{counter + 1}.#{students[counter][:name]}, #{students[counter][:height]} cm tall, (#{students[counter][:cohort]} cohort)".center(50)
  counter += 1
  end
end

# finally we print the total number of students
def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(50)
end

# nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)

