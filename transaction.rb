def get_transactions_data (round)

	transactions_block ||= []

	loop do
		puts "" 
		puts "Enter movement #{round}:"
		move = gets.chomp

		transaction = Hash[round: "#{round}", move: "#{move}"]
		transactions_block << transaction

		puts "" 
		return transactions_block
	end
end

def get_first_block_data
	transactions_block ||= []
	puts "" 
	puts "Enter your name for the event"
	event = gets.chomp
	puts "" 
	puts "Enter the date"
	date = gets.chomp
	puts "" 
	puts "Enter white player name:"
	white  = gets.chomp
	puts "" 
	puts "Enter black player name:"
	black = gets.chomp
	puts "" 
	puts "Enter the result:"
	result = gets.chomp

	transaction = Hash[event: "#{event}", date: "#{date}", white: "#{white}", black: "#{black}",
			round: "-", result: "#{result}"]
	transactions_block << transaction
	return transactions_block
end
