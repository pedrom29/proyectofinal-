class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.boolean :pregunta
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
