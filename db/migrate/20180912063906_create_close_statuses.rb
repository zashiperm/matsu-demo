class CreateCloseStatuses < ActiveRecord::Migration
  def change
    create_table :close_statuses do |t|
      t.string :close_id
      t.string :close_status

      t.timestamps null: false
    end
  end
end
