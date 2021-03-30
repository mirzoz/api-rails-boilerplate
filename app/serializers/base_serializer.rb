# frozen_string_literal: false

class BaseSerializer < ActiveModel::Serializer
  include AmsLazyRelationships::Core
end
