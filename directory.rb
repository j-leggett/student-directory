def input_students
  month = { months: ["January", "February", "March", "April", "May", "June", "July", "August", "September",
  "October", "November", "December"]}

  puts "Please enter the names of students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp.capitalize

  puts "what is their hight in cm?"
  height = gets.chomp

  puts "What month did they start?"
  cohort = gets.chomp.capitalize
  until !cohort.empty? && month[:months].include?(cohort)
    puts "Thats not a month, what month did they start?"
    cohort = gets.chomp.capitalize
  end
  # while the name is not empty repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: cohort.to_sym, height: height}
    puts "Now we have #{students.count} students"
    # get another name from the user
    puts "name?"
    name = gets.chomp.capitalize
    if !name.empty?
      puts "height in cm?"
      height = gets.chomp
    
      puts "what month did they start?"
      cohort = gets.chomp.capitalize
      until !cohort.empty? && month[:months].include?(cohort)
        puts "Thats not a month, what month did they start?"
        cohort = gets.chomp.capitalize
      end
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

  p_cohort = {}
  students.map do |person|
    cohort = person[:cohort]

    if p_cohort[cohort] == nil
      p_cohort[cohort] = []
    end

    p_cohort[cohort].push(person[:name])

  end
  p_cohort.map do |month, names|
    puts "#{month}".center(50)
    names.each_with_index do |name, index|
    puts "#{index + 1}. #{name}".center(50)
    end
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

