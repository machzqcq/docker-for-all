class OrderSummaryPage < GenericBasePage

 element(:page_heading) {|b| b.element(class: "page-heading")}
 element(:confirm_order) {|b| b.button(class: "button")}

end