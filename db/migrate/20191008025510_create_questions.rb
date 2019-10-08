class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :pregunta
      t.boolean :estado

      t.timestamps
    end
  end
end
