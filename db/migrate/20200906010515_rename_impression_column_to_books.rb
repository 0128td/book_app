class RenameImpressionColumnToBooks < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :Impression, :impression

  end
end
