class CreateArtifacts < ActiveRecord::Migration
  def change
    create_table :artifacts do |t|
      t.string :name
      t.string :key
      t.belongs_to :project, index: true

      t.timestamps null: false
    end
    add_foreign_key :artifacts, :projects
  end
end
