class Kv < ApplicationRecord
  def key=(data)
    super(data.strip)
  end
end
