class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.string :notification_type
      t.string :template
      t.string :identifier

      t.timestamps
    end
  end
end
