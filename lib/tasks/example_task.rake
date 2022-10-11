namespace :example_task do
	desc 'Greeting Message task'

	task greet_the_user: :environment do
		puts 'Hello User! Welcome to the rake World!!'
	end

	task say_bye_to_user: :environment do
		puts "Hello User it is the time to sign off now.Please try this rake task at your end,!!"
	end
end


# rails db:migrate

