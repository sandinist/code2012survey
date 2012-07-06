class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.text :why
      t.integer :how_long
      t.string :app_name
      t.string :language
      t.text :free

      t.timestamps
    end
  end
end
