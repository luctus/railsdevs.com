class MilestoneComponent < ApplicationComponent
  def initialize(icon:, color:, date:)
    @icon = icon
    @color = color
    @date = date
  end

  def icon
    "icons/solid/#{@icon}.svg"
  end

  def color
    yass(icon: @color)
  end

  def formatted_date
    @date.strftime("%b %d")
  end

  def datetime
    @date
  end
end
