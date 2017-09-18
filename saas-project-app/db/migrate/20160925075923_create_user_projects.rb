class CreateUserProjects < ActiveRecord::Migration
  def change
    create_table :user_projects do |t|
      t.belongs_to :project, index: true
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :user_projects, :projects
    add_foreign_key :user_projects, :users
  end
end
