class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.text :why
      t.integer :how_year
      t.string :locale
      t.string :languages
      t.text :free_comment
      t.string :app_name

      t.timestamps
    end
  end
end
