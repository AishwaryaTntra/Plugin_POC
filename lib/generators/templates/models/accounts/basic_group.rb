# frozen_string_literal: true

module Accounts
  class BasicGroup < ActiveRecord::Base

    before_save :capitalize_name

    private

    def capitalize_name
      self.name = name.capitalize
    end
  end
end
