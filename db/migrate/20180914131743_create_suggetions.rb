class CreateSuggetions < ActiveRecord::Migration[5.2]
  def change
    create_table :suggetions do |t|
      t.string :username
      t.string :customername
      t.datetime :moviedate
      t.datetime :estimatedate
      t.string :closestatus
      t.string :memo
      t.boolean :flag

      t.timestamps
    end
  end
end
