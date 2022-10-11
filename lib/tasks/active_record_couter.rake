namespace :active_record_couter do
  desc "TODO"
  task posts_count: :environment do
    puts "Posts Count = #{Post.count}"
  end
end
