class CreateCrews < ActiveRecord::Migration[5.2]
  def change
    create_table :crews do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
