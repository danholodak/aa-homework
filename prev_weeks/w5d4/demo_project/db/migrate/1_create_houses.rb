class CreateHouses < ActiveRecord::Migration[7.0]
    def change
        create_table :houses do |p|
            p.string :address
        end
    end
end

