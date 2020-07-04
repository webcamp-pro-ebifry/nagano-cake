class CreateClientUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :client_users do |t|

      t.timestamps
    end
  end
end
