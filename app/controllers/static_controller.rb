class StaticController < ApplicationController
  def about
    @hero = renderer.render(File.read(file("about.hero")))
    @body = renderer.render(File.read(file("about.body")))
  end

  def milestones
  end

  private

  def renderer
    Redcarpet::Markdown.new(Redcarpet::Render::HTML)
  end

  def file(name)
    Rails.root.join("app/views/static/#{name}.md")
  end
end
