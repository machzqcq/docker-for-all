class ShippingAddressPage < GenericBasePage

  element(:page_heading) {|b| b.element(class: "page-heading")}
  element(:terms) {|b| b.checkbox(id: "cgv")}
  element(:proceed_to_checkout) {|b|b.button(name: "processCarrier")}

end