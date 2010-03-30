class CreateOccupancies < ActiveRecord::Migration
  def self.up
    create_table :occupancies do |t|
      t.string :shelf_id
      t.string :book_id

      t.timestamps
    end
  end

  def self.down
    drop_table :occupancies
  end
end
