class MeasurementSerializer < ActiveModel::Serializer
  attributes :date, :weights

  def date
    object.date.strftime('%Y/%m/%d')
  end

  def weights
    weights_hash  = {}
    object.weights.each do |o|
      weights_hash[o.degu_id] = o.value
    end
    weights_hash
  end
end
