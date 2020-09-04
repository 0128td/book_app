class CreateSummaries < ActiveRecord::Migration[5.2]
  def change
    create_table :summaries do |t|
      t.integer    :book_id
      t.string     :section
      t.string     :summary
      t.timestamps
    end
  end
end
