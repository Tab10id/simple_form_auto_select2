require 'simple_form_auto_select2/version'
require 'simple_form_auto_select2/engine'
require 'simple_form_auto_select2/infectors'
SimpleForm::Inputs.send(:include, SimpleFormAutoSelect2::Infectors::SimpleForm::Inputs)

module SimpleFormAutoSelect2
  extend ActiveSupport::Autoload
end