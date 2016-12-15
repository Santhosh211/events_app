class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.datetime :created_at
      t.string :hostname
      t.references :organization, foreign_key: true
    end

    add_index :events, [:organization_id, :created_at]
    add_index :events, [:organization_id, :hostname, :created_at]

  end
end
