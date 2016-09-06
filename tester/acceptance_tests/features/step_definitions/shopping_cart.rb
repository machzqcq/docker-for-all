When(/^I open automationpractice website$/) do
  visit AutomationHomePage
end

And(/^I login using data from yml$/) do
  on(AutomationHomePage).sign_in.when_present(10).click
  on(LoginPage).login_yml
end

And(/^I login with username "([^"]*)" and password "([^"]*)"$/) do |username, password|
  on(AutomationHomePage).sign_in.when_present(10).click
  on(LoginPage).login(username,password)
end

Then(/^I verify that I successfully logged in by logging out$/) do
  on(AutomationHomePage).sign_out.when_present(10).click
end

Then(/^I hover on women menu item and click summer dresses$/) do
  expect(on(AutomationHomePage).sign_out.present?).to be_truthy
  on(AutomationHomePage::HeaderPage).menu_women.when_present(10).hover
  on(AutomationHomePage::HeaderPage::DressesPage).summer_dresses.when_present(10).click
  expect(on(SummerDressesCatalogPage).category_name.text.strip).to eql("SUMMER DRESSES")
end

Then(/^I add a summer dress to cart$/) do
  on(SummerDressesCatalogPage::PrintedSummerDress1).img_dress1.when_present(10).hover
  @unit_price = on(SummerDressesCatalogPage::PrintedSummerDress1).product_price.text
  on(SummerDressesCatalogPage::PrintedSummerDress1).add_cart_dress1.when_present(10).click
  on(SummerDressesCatalogPage::CartPopup).proceed_to_checkout.when_present(10).click

end

Then(/^verify the item and price$/) do
  expect(@unit_price).to eql(on(ShoppingCartSummaryPage).unit_price.text)
  on(ShoppingCartSummaryPage).proceed_to_checkout.click
end

Then(/^I verify the address and proceed$/) do
  expect(on(AddressPage).page_heading.when_present(10).text).to eql("ADDRESSES")
  on(AddressPage).message.set "Test message"
  on(AddressPage).proceed_to_checkout.click
end

Then(/^I verify shipping address and proceed$/) do
  expect(on(ShippingAddressPage).page_heading.when_present(10).text).to eql("SHIPPING")
  on(ShippingAddressPage).terms.set
  on(ShippingAddressPage).proceed_to_checkout.click
end

Then(/^I select payment method$/) do
  expect(on(PaymentMethodPage).page_heading.when_present(10).text).to eql("PLEASE CHOOSE YOUR PAYMENT METHOD")
  on(PaymentMethodPage).check.click
end

Then(/^I confirm the order$/) do
  expect(on(OrderSummaryPage).page_heading.when_present(10).text).to eql("ORDER SUMMARY")
  on(OrderSummaryPage).confirm_order.click
end

Then(/^I verify successful purchase$/) do
  expect(on(OrderConfirmationPage).page_heading.when_present(30).text).to eql("ORDER CONFIRMATION")
end