# frozen_string_literal: true

class HomeController < ApplicationController
  def show
    render template: 'home/index'
  end

  def contact
    render template: 'home/contact'
  end
end
