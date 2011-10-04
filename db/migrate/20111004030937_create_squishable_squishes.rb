class CreateSquishableSquishes < ActiveRecord::Migration
  def change
    create_table :squishable_squishes do |t|
      t.string :squash

      t.timestamps
    end
  end
end
