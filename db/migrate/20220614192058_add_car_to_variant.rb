class AddCarToVariant < ActiveRecord::Migration[7.0]
  def change
    add_reference :variants, :car, foreign_key: true, index: true
  end
end
