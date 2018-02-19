describe "User visit snack  page" do
  it "they see snack name and price" do
    snack_1 = Snack.create(name: "snickers", price: 1.00)
    snack_2 = Snack.create(name: "nerds", price: 2.00)

    visit snack_path(snack_1)

    expect(page).to have_content(snack_1.name)
    expect(page).to have_content(snack_1.price)

  end
end
