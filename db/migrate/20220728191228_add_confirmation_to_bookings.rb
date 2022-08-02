class AddConfirmationToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :confirmation, :boolean, default: false
  end
end
