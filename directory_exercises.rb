# let's put all the students  into an array
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  #while the name is not empty, repeat thus code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
    # return the array of students
    students
end

def print_header
  puts "The students of Villains Academy"
  puts "___________"
end

def print(students)
  if !students.empty?
    students.each.with_index(1) { |student, index|
    puts "#{index}. #{student[:name].center(20, "--")} (#{student[:cohort]} cohort)" }
  else
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
#nothing happens until we call the methods
students = input_students
print_header if students != []
print(students)
print_footer(students)
