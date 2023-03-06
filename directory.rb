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

# print student list using iteration
puts "The student of Villains Academy"
puts "------------"
students.each do |student|
  puts student
end
# finally we print the total number of students
puts "Overall, we have #{students.count} great students"