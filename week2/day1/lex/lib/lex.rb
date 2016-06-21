class Lexiconomitron
	def eat_t(string)
		string
			.tr("tT","")
	end

	def shazzam(string)
		eat_t(string)
			.split(" ")
			.map{|char| char.reverse}
			.join(" ")

	end

	def oompa_loompa(string)
		eat_t(string)
			.split(" ")
			.select{|word| word.length <= 3}
			.join(" ")
	end
end



# the_lexi = Lexiconomitron.new

# puts the_lexi.eat_t("great scott!")