class CreateJustFiles < ActiveRecord::Migration[7.0]
  def change
    create_table :just_files do |t|

      t.timestamps
    end
  end
end
