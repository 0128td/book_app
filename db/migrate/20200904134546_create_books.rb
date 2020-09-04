class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string    :title
      t.string    :image
      t.string    :author
      t.integer   :publisher_id
      t.integer   :genre1_id
      t.integer   :genre2_id
      t.integer   :genre3_id
      t.text      :Impression
      t.timestamps
    end
  end
end
