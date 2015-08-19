NUMEROLOGY = { A: 1, J: 1, S: 1, B: 2, K: 2, T: 2, C: 3, L: 3, U: 3, D: 4, M: 4, V:4, E: 5, N: 5, W: 5, F: 6, O: 6, X: 6, G: 7, P: 7, Y: 7, H: 8, Q: 8, Z:8, I: 9, R: 9}
module Numerolog	
	# brings numerical sum of all characters based on their position (numerology)
	
	class << self
		
		private
		attr_accessor :sum
		
		public
		def gematria(str)
			@sum = 0
			str.each_char do |c|
				if c.upcase! =~ /[[:alpha:]]/
					@sum +=  NUMEROLOGY[c.to_sym]
				elsif c =~ /[[:digit:]]/
					@sum += c.to_i
				end
			end
			sum_of_digits
			return @sum
		end

		def gematria!
			replace gematria
		end

		private
		def sum_of_digits
			until @sum < 10
				@sum = @sum.to_s.split('').map(&:to_i).reduce(&:+)
			end
		end
	end
end