class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :type
      t.string :name

      t.timestamps
    end
  end
end
