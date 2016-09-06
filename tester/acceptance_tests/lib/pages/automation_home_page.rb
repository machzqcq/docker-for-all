class AutomationHomePage < GenericBasePage

  ENV['URL'] = ENV['URL'] || "http://automationpractice.com"
  page_url ENV['URL']

  element(:sign_in) {|b| b.link(text: "Sign in")}
  element(:contact_us) {|b| b.link(text: "Contact us")}
  element(:sign_out) {|b| b.link(text: "Sign out")}

  class HeaderPage < GenericBasePage
    element(:menu_women) { |b| b.link(title: 'Women')}
    element(:menu_dresses) {|b|b.link(title: 'Dresses')}
    element(:menu_tshirts) {|b|b.link(title: 'T-shirts')}

    class DressesPage < GenericBasePage
      element(:summer_dresses) { |b| b.link(title: 'Summer Dresses')}
    end

  end

end

