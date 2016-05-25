class PaymentMailer < ApplicationMailer

  def order_thank_you(email, name, product, order, total)
    @email = email
    @name = name
    @product = product
    @order = order
    @total = total
    @appname = "Sample Store App"

    mail( :to  => email,
          :from => 'noreply@sample-store-app-tsn.herokuapp.com',
          :subject => "Thank you! Order ##{order} | #{@appname}")
  end

end