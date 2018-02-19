require 'rails_helper'

describe "User visit specific machines page" do
  it "they see average price for of all snacks" do
    sam = Owner.create(name: "Sam's Snacks")
    machine = sam.machines.create(location: "Don's Mixed Drinks")
    snack_1 = machine.snacks.create(name: "snickers", price: 1.00)
    snack_2 = machine.snacks.create(name: "nerds", price: 2.00)

    visit machine_path(machine)

    expect(page).to have_content("Average Price: 1.50")
  end
end 
