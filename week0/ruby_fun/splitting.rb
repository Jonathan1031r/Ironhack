def org(ph)
	x = ph.split(" ")
	print x.sort_by{ |a| a.downcase }
end

org("I like to walk down the beach.")