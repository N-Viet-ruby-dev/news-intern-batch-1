# frozen_string_literal: true

module ApplicationHelper
  def categories_list
    @categories_list ||= Category.all
  end

  def first_name(name)
    name.split.first
  end
end
