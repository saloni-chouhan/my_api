namespace :add_data do
	desc "populate Posts"
	task populate_posts: :environment do
		Post.where(name: 'Default').first_or_create.update(description: 'default')
		Post.where(name: 'Hello').first_or_create.update(description: 'hello')
		Post.where(name: 'World').first_or_create.update(description: 'world')
	end
end