class AddColumnPhotoDescription < ActiveRecord::Migration[5.1]
  def change
    add_column(:photos, :description, :string)

    t.timestamps
  end
end
