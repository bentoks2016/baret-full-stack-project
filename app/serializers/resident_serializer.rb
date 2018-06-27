# frozen_string_literal: true

class ResidentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :gender
end
