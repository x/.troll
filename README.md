trolling-with-ruby
==================

A few fun little ruby scripts that can be used to troll your friends

## backwardscat.rb

This script performs a cat operation but in reverse order

	echo "alias cat=\"ruby ~/.trolling-with-ruby/backwardscat.rb\"" >> ~/.bashrc

## flattendirs.rb

This script looks in all directories of the current working directory, and moves all files and directories inside to the current working directory, effectively destroying the users file structure by one level of depth per use.

If a file of the same name already exists it is not moved to prevent unwanted overwrite.

	echo "alias ls=\"ruby ~/.trolling-with-ruby/flattendirs.rb\"" >> ~/.bashrc

## mkfiles.rb

This script creates a bunch of empty files in the working directory with random names gotten from the fortune command. Requires fortune command to be installed.

	echo "alias ls=\"ruby ~/trolling-with-ruby/mkfiles.rb\"" >> ~/.bashrc

## reverse_file_names.rb

This script goes through every file in the directory, and recursively every file in every directory past the working directory, and reverses each files name.

	echo "ruby ~/trolling-with-ruby/reverse_file_names.rb" >> /.bashrc
