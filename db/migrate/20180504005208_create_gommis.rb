class CreateGommis < ActiveRecord::Migration[5.2]
  def change
    create_table :gommis do |t|
      t.string :title
      t.string :explanation
      t.string :kind

      t.timestamps
    end
  end
end
