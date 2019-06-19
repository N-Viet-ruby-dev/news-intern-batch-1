# frozen_string_literal: true

module ApplicationHelper
  def categories_list
    @categories_list ||= Category.all
  end

  def first_name(name)
    name.split.first
  end

  def reaction_for(reactionable)
    reactionable.reactions.find_or_initialize_by(user_id: current_user.id)
  end
end
