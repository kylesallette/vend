describe "User visit snack  page" do
  it "they see snack name and price" do
    snack_1 = Snack.create(name: "snickers", price: 1.00)
    snack_2 = Snack.create(name: "nerds", price: 2.00)

    visit snack_path(snack_1)

    expect(page).to have_content(snack_1.name)
    expect(page).to have_content(snack_1.price)

  end
end

describe "user sees other locations that carry that snack" do
 it 'shows them what machines' do
  owner = Owner.create(name: "Fun time")
  machine = owner.machines.create(location: "Mars")
  snack = Snack.create(name: "nerds", price: "1.00")

  MachineSnack.create(snack: snack, machine: machine)

  visit snack_path(snack)

  expect(page).to have_content(machine.location)
  expect(page).to have_content(machine.average_price)
  expect(page).to have_content(machine.snacks.count)
 end
end
