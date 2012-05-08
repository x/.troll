def reverse current
	Dir.chdir current
	folders = Dir["*/"].each {|s| s.chop!}
	files = Dir["*"] - folders
	files.each do |file|
		unless files.include? file.reverse or folders.include? file.reverse
			`mv #{current}/#{file} #{current}/#{file.reverse}`
		end
	end
	folders.each do |folder|
		reverse "#{current}/#{folder}"
		unless folders.include? folder.reverse or files.include? folder.reverse
			`mv #{current}/#{folder} #{current}/#{folder.reverse}`
		end
	end
end

reverse Dir.pwd
