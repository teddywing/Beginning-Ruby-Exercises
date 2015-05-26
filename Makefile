pack: collect zip clean

collect:
	mkdir ruby-exercises
	cp -a exercises.rb exercises_solutions.rb exercises_spec.rb run_test.sh ruby-exercises

zip:
	zip ruby-exercises/exercises_solutions.rb.zip ruby-exercises/exercises_solutions.rb
	rm ruby-exercises/exercises_solutions.rb
	zip -r ruby-exercises.zip ruby-exercises

clean:
	rm -rf ruby-exercises

full_clean: clean
	rm ruby-exercises.zip
