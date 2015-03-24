class SimpleForm::Inputs::Select2Input < SimpleForm::Inputs::CollectionSelectInput
  extend ActiveSupport::Autoload

  def input_html_options
    input_options = super
    input_options[:class] = [input_options[:class], 'auto-static-select2'].compact
    input_options
  end
end