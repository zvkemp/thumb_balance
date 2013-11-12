class AddReferencesIdsToTransaction < ActiveRecord::Migration
  def change
    change_table :transactions do |t|
      t.references :place
      t.references :category
    end

    create_table :categories_places, id: false do |t|
      t.references :category
      t.references :place
    end
  end
end
