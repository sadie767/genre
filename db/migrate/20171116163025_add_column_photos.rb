class AddColumnPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column(:photos, :title, :string)

    t.timestamps
  end
end
