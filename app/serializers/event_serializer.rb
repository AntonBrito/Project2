class EventSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :name, :info
end
