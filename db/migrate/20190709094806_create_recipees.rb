class CreateRecipees < ActiveRecord::Migration[5.2]
  def change
    create_table :recipees do |t|

      t.timestamps
    end
  end
end
