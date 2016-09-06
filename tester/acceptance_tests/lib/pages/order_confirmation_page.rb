class OrderConfirmationPage < GenericBasePage

 element(:page_heading) {|b| b.element(class: "page-heading")}
 element(:confirm_alert) {|b| b.element(class: "alert-success")}

end