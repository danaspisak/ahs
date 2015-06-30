class Response < ActiveRecord::Base
  belongs_to :interview
  belongs_to :question

  #def self.response_types
  #  %w(TextResponse SelectionResponse)
  #end
end

class TextResponse < Response ;
end
class SelectionResponse < Response ;
end
