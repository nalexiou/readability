module ApplicationHelper

	# def initialize(text) 
	# 	#strip extra whitespace
	# 	text = text.gsub(/\s+/," ") 
	# end

	#split with periods followed by space and uppercase letter to count sentences

	def sentencecount(text)
		text.split(/[\.](?=\s[A-Z])/).count 
	end

	def wordcount(text)
		
		text.gsub(/\s+/," ") .gsub(/[^\w\s]|_/, "").split(" ").count
	end	

	def lettercount(text)
		text.gsub(/\s+/," ") .gsub(/[\W]/, "").length
	end

	#Coleman-Liau Index:

	def cli_score(text)
		'%.2f' % ((0.0588*(lettercount(text)/wordcount(text))*100) - (0.296*(sentencecount(text)/wordcount(text))*100) - 15.8)
	end
	

end
