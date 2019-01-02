class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :address
      t.datetime :datetime
      t.integer :points
      t.integer :host_id
      t.integer :interest_id

      t.timestamps
    end
  end
end
