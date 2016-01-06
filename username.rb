# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.

def format_name(first, last)
	if(first.empty? || last.empty?)
		return nil
	end
	first.gsub!(/\s|\W|\d/, "")
	last.gsub!(/\s|\W|\d/, "")
	return (first[0]<<last).downcase
end

def format_year(year)
	if(year.to_s.size != 4)
		return nil
	end
  	y = year.to_s 
  	return y[2]<<y[3]
end

def build_username(first, last, year)
  year.to_s!
  p year
  return (first[0]<<last).downcase<<year[2]<<year[3]
end
