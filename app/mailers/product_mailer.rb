class ProductMailer < ApplicationMailer
  def in_stock(product, subscriber)
    @product = product
    @subscriber = subscriber
    mail(to: @subscriber.email, subject: "#{@product.name} is back in stock!")
  end
end
