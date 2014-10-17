class CreateYyys < ActiveRecord::Migration
  def change
    create_table :yyys do |t|
      t.string :www

      t.timestamps null: false
    end
  end
end
