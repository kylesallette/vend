describe "User visit specific machines page" do
  it "they see a all snacks and prices" do
    sam = Owner.create(name: "Sam's Snacks")
    machine = sam.machines.create(location: "Don's Mixed Drinks")
    snack_1 = machine.snacks.create(name: "snickers", price: 1.00)
    snack_2 = machine.snacks.create(name: "nerds", price: 2.00)

    visit machine_path(machine)

    expect(page).to have_content(snack_1.name)
    expect(page).to have_content(snack_1.price)
    expect(page).to have_content(snack_1.name)
    expect(page).to have_content(snack_1.price)
  end
end
