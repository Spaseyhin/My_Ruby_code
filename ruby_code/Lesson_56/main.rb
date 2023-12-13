question_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/lesson_56/data/question.txt"
answer_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/lesson_56/data/answer.txt"

system ('clear')

question = File.new(question_path,'r').readlines.map {|element| element.chomp} #.join(', ')
answer = File.new(answer_path,'r').readlines.map {|element| element.chomp} #.join(', ')

a = [1, 2, 3, 4]
count_in_array = 0
right_answer = 0

question.each do |x|
	puts x
	ans = gets.chomp
	if ans == answer[count_in_array]
		puts "Верный ответ!"
		right_answer += 1
	else
		puts "Неправильный ответ. Верный #{answer[count_in_array]}"
		
	end
	count_in_array += 1
end 

puts "Правильных ответов #{right_answer}"

