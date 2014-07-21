puts "ENTER THE STUDENT NAMES"
sname =[ ]
sub= [ ]
large = { }
for i in 1..3
 name=gets.chomp
 sname << name
end
puts "\n\nENTER THE SUBJECTS"
for i in 1..2
 var=gets.chomp
 sub << var
end
sname.each do |stname|
 large[stname] = {}
 puts "\n\nENTER THE MARK FOR STUDENT--> #{stname}"
  sub.each do |subname|
    p "subject name : #{subname}"
    large[stname][subname] = {}
     mark=gets.chomp.to_i
     large[stname][subname] = mark
  end
  puts "\n\nlarge : #{large.inspect}"
end
sum =0
large.each do |key,value|
   value.each do |k,v|
    sum = sum + v
   end
 large[key]["total"] = sum
 sum = 0
end
  puts "\n\nlarge : #{large.inspect}"



puts "\n\nENTER A NAME OF STUDENT TO KNOW THEIR MARKS"
find = gets.chomp
puts "subject and mark of #{find}"
p large[find]


puts "\n\nENTER A SUBJECT TO KNOW MARKS SCORED BY EACH STUDENTS"
find1 = gets.chomp
puts "marks of students for #{find1}"
large.each do |key,value|
puts "student :: #{key}---> mark #{large[key][find1]}"
end

puts "\n\nDATA IN ALPHABETICAL ORDER\n"
sorted_keys = large.keys.sort
sorted_hash = { }
sorted_keys.each do |k|
  sorted_hash[k] = large[k]
end
p sorted_hash
puts "\n\nDATA IN THE ORDER OF HIGHEST MARK\n"
puts Hash[large.sort_by{ |k,v| v['total'] }.to_a.reverse]

