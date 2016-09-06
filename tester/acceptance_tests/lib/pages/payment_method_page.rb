class PaymentMethodPage < GenericBasePage

  element(:page_heading) {|b| b.element(class: "page-heading")}
  element(:bank_wire) {|b| b.link(class: "bankwire")}
  element(:check) {|b| b.link(class: "cheque")}

end