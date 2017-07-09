def calculate_total (prices)
	amount = 0 
	index = 0

	while index < prices.length
		amount += prices[index]
		index += 1;

	end

	return amount

end

prices = [3.99,25.00,8.99]

puts format("%.2f", calculate_total(prices))