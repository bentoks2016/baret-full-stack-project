# frozen_string_literal: true

class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :specialization
end
