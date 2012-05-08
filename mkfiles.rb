`fortune`.split.each do |word|
	`touch #{word}` unless word.match /[^a-z]/i
end
