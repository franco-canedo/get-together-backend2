class CreateMeetups < ActiveRecord::Migration[6.0]
  def change
    create_table :meetups do |t|
      t.string :title
      t.string :date
      t.string :time
      t.string :location
      t.integer :topic_id
      t.string :image

      t.timestamps
    end
  end
end
