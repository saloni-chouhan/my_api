class CreateMeetings < ActiveRecord::Migration[6.1]
  def change
    create_table :meetings do |t|
      t.string :topic
      t.datetime :start_time
      t.datetime :end_time
      t.integer :duration
      t.string :host_name

      t.timestamps
    end
  end
end
