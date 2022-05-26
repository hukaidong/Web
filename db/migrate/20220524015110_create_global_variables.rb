class CreateGlobalVariables < ActiveRecord::Migration[7.0]
  def change
    create_table :global_variables do |t|
      t.string :name, limit:50, null: false
      t.integer :as_integer
      t.float :as_float
      t.string :as_string

      t.timestamps
    end
  end
end
