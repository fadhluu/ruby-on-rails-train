# frozen_string_literal: true

class HomeController < ApplicationController
  def show
    render template: 'home/index'
  end
end
