`cat #{ARGV.join(' ')}`.split("\n").reverse!.each do |line|
	puts line
end
