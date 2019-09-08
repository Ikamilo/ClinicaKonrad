class DeleteColumb < ActiveRecord::Migration[6.0]
  def change
    remove_column :patients, :identificacion
  end
end
