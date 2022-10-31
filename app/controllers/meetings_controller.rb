class MeetingsController < ApplicationController
	# def create
	# 	@meeting = Meeting.new(meetings_params)
	# 	@meeting.save_zoom_link(@meeting.name)
	# 	@meeting.save
	# 	redirect_to meeting_path(@meeting)
	# end

	# def zoom_api
 #        # params_hash = {}
 #        # params_hash[:topic] = "Java"
 #        # params_hash[:type] = 2
 #        # params_hash[:start_time] = "12:30:00"
 #        # params_hash[:duration] = "1"
	# 	response = HTTParty.post("https://api.zoom.us/v2/users/me/meetings")
	# 	# byebug
	# 	# # puts response.body, response.code, response.message, response.headers.inspect
	# 	# JSON.parse(response.body)
	# 	# render json: response
	# 	# puts response.body

	# 	# puts response.code
	# 	# puts response.message
	# 	puts response.headers
	# end

	def zoom_api
	 #    params = {
	 #      "topic" => "Java",
	 #      "type" => 2,
	 #      "start_time" => "02:00:00",
	 #      "duration" => "2"
	 #    }

  #     headers = {
  #       "Content-Type" => "Application/json"
  #     }

		# response = HTTParty.post("https://api.zoom.us/v2/users/me/meetings/",
  #   :params => params,
  #   :headers => headers
  #   )
  response = HTTParty.get("https://api.zoom.us/v2/users/me/meetings", :headers => {
  "Api-Key" => "ZOOM_US_API_KEY",
  "Content-Type" => "application/json",
  "Authorization" => "Bearer eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiJhMDI2NWRiMi0wNDAzLTQxNzUtYmQwOC01ZGE1OGIyZjI3MDcifQ.eyJ2ZXIiOjcsImF1aWQiOiJmMmY5NzNlZjBkMzAyODNiZGFjZmY2YzM0MjE0ZDgwMSIsImNvZGUiOiJIMEZPRmZ5SHdvcEpMR0lEMEZ1UmF1bVk3UEZOa1JLY2ciLCJpc3MiOiJ6bTpjaWQ6UnpzYXFUWm9RZWFxd0cwa2h6UEt2ZyIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiIxNWswM210aFRMZWZxM1o5SFNCY2xBIiwibmJmIjoxNjY3MTkzMjIzLCJleHAiOjE2NjcxOTY4MjMsImlhdCI6MTY2NzE5MzIyMywiYWlkIjoiWi1mRXB5SENRVFdBR0VlYUdkdkl4QSIsImp0aSI6IjI4MTJiYjA0LTA5ZDYtNGQyYi1hZDJlLWQ5MzhiN2JjNWZhMyJ9.Te0301IU4bvjLnxRdt6iGaDGnQqUp4zB1Pew87qVXhVhuqcbdoO5L65YrExr45KSstUZNQBVocFmewmS46kfRQ"
})
		# redirect_to :posts_path
    puts response
	end

	# private 
	# def meetings_params
	# 	params.require(:meeting).permit(:topic, :start_time, :end_time, :duration, :host_name, :zoom_link)
	# end  
end
