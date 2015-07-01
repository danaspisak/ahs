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
class FollupTruthResponse < Response ;
end
class FollowupTruthTextReponse < Response ;
end
class FollowupNumberResponse < Response ;
end
class PrivateTextResponse < Response ;
end
