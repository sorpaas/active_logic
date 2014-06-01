class CreateDeclarations < ActiveRecord::Migration
  def change
    create_table :declarations do |t|
      t.string :prefix
      t.text :parameters

      t.timestamps
    end
  end
end
