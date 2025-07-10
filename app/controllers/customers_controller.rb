class CustomersController < ApplicationController

  def index
    @customers = Customer.all
    @page_title = "All Customers"
  end


  def alphabetized
    @customers = Customer.order(:full_name)
    @page_title = "Customers - Alphabetized"
    render :index
  end


  def missing_email
    @customers = Customer.where(email_address: [nil, ''])
    @page_title = "Customers Missing Email"
    render :index
  end
end