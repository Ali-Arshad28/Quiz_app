require 'csv'
require 'timeout'
#CSV.foreach(('problems.csv'), headers: true, col_sep: ",")do |row|
#ilename = File.
#file = file.open("problems.csv")
#file.readlines.each do |row|
#puts row[0,]
#end
#CSV.foreach("problems.csv", quote_char: '"', col_sep: ',', row_sep: :auto, headers: true) do |col|
  #puts col[0]
# end
table = CSV.parse(File.read("problems.csv"), headers: true)
begin
status = Timeout::timeout(30) {
 no_correct = 0
 no_incorrect = 0
 for i in 0..12 do
  puts "What is "+table[i]["QUESTION"]
  ans= gets.chomp()
  if ans == table[i]["ANSWER"]
   no_correct.to_i
   no_correct+=1
  else
   no_incorrect.to_i
   no_incorrect+=1
  end
end

 puts "The number of correct answers are #{no_correct}"
 puts "The number of incorrect answers are #{no_incorrect}"

}
rescue Timeout::Error
  puts "\nTime is out ! "
end