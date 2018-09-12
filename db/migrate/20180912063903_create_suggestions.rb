class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :user_id
      t.string :client_name
      t.datetime :movie_date
      t.datetime :estimates_date
      t.datetime :ai_estimates_date
      t.string :close_status
      t.string :memo
      t.boolean :flag

      t.timestamps null: false
    end
  end
end
