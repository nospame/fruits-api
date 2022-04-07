class AddImageUrlToFruit < ActiveRecord::Migration[7.0]
  def change
    add_column :fruits, :image_url, :string
  end
end
