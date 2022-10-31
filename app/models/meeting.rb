class Meeting < ApplicationRecord


	# private 
	# def create_zoom_meeting(topic)
	# 	zoom_client = Zoom.new
	# 	response = zoom_client.meeting_create(topic: "java", user_id: ENV['ZOOM_USER_ID'])
	# 	response['join_url']
	# end

	# def save_zoom_link(meeting_topic)
	# 	return if zoom_link.present?
	# 	_zoom_link = create_zoom_meeting(meeting_topic)
	# 	update(zoom_link: zoom_link)
	# end

end
