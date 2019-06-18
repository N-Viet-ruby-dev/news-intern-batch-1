# frozen_string_literal: true

module ApplicationHelper
  def categories_list
    @categories_list ||= Category.all
  end
end
