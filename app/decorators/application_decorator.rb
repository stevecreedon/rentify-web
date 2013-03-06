class ApplicationDecorator < Draper::Decorator
  delegate_all

  def description_to_html
    BlueCloth::new(source.description).to_html
  end
end
