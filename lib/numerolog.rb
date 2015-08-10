NUMEROLOGY = { A: 1, J: 1, S: 1, B: 2, K: 2, T: 2, C: 3, L: 3, U: 3, D: 4, M: 4, V:4, E: 5, N: 5, W: 5, F: 6, O: 6, X: 6, G: 7, P: 7, Y: 7, H: 8, Q: 8, Z:8, I: 9, R: 9}
class String	
	# brings numerical sum of all characters based on their position (numerology)
	attr_accessor :sum
	def numerolog
		@sum = 0
		self.each_char do |c|
			if c.upcase! =~ /[[:alpha:]]/
				@sum +=  NUMEROLOGY[c.to_sym]
			elsif c =~ /[[:digit:]]/
				@sum += c.to_i
			end
		end
		sum_digits
		return @sum
	end

	def numerolog!
		replace numerolog
	end

	def sum_digits
		until @sum < 10
			@sum = @sum.to_s.split('').map(&:to_i).reduce(&:+)
		end
	end
end