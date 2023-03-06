# put all the students in an array
students = [
"Dr, Hannibal Lecter",
"Darth Vader",
"Nurse Ratched",
"michael Corleone",
"Aslec DeLarge",
"The Wicked Witch of the West",
"Terminator",
"Freddy Krueger",
"The Joker",
"Joffrey Baratheon",
"Norman Bates" ]


def print_header
  puts "The student of Villains Academy"
  puts "------------"
end
# print student list using iteration
def print(names)
  names.each do |name|
    puts name
  end
end

# finally we print the total number of students
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# nothing happens until we call the methods
print_header
print(students)
print_footer(students)

