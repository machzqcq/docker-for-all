class CheckoutPage < GenericBasePage

  element(:unit_price) {|b| b.element(class: "special-price")}
  element(:total_price) {|b| b.element(id: "total_price")}
  element(:proceed_to_checkout) {|b|b.link(text: "Proceed to checkout")}


end