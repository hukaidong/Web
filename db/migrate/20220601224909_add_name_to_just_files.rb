class AddNameToJustFiles < ActiveRecord::Migration[7.0]
  def change
    add_column :just_files, :name, :string
  end
end
