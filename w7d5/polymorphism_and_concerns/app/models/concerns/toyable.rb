module Toyable
    extend ActiveSupport::Concern
  
    included do
  
    end
  
    def receive_toy(name)
        toyable = Toys.create(name: name, toyable_id: self.id, toyable_type: self.class)
        toyable.save!
    end
  end