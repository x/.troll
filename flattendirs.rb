root = Dir.pwd
root_files = Dir["*"]
Dir["*/"].each do |directory|
	Dir.chdir "#{root}/#{directory}"
	Dir["*"].each do |file|
		unless root_files.include? file
			`mv #{root}/#{directory}/#{file} #{root}/`
			root_files.push file
		end
	end
end
