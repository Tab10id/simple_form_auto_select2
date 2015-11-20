# simple_form_auto_select2

Provide select2 input class for simple_form ([simple_form](https://github.com/plataformatec/simple_form)).

Based on [auto_select2](https://github.com/Loriowar/auto_select2) gem.

[![Gem Version](https://badge.fury.io/rb/simple_form_auto_select2.png)](http://badge.fury.io/rb/simple_form_auto_select2)

## Installation

Add this line to your application's Gemfile:

    gem 'simple_form_auto_select2'

## Usage

### Static select2

    f.association :project, as: :select2

### Ajax select2

    f.input :user_id, as: :ajax_select2, placeholder: t(:select_user_from_list),
            default_class_name: :user, default_text_column: [:id, :firstname, :lastname]

More info see in documentation of [auto_select2](https://github.com/Loriowar/auto_select2) gem 
and in [auto_select2_tag_example](https://github.com/Loriowar/auto_select2_tag_example) project
