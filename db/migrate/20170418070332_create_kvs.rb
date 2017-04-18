class CreateKvs < ActiveRecord::Migration[5.0]
  def change
    create_table :kvs do |t|
      t.string :key
      t.text :val

      t.timestamps
    end
  end
end
