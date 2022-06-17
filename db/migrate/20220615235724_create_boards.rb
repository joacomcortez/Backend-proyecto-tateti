class CreateBoards < ActiveRecord::Migration[7.0]
  def change
    create_table :boards do |t|
      t.string :status
      t.integer :turn
      t.string :array, :default => '[0,0,0,0,0,0,0,0,0]'
      t.timestamps
    end
  end
end
