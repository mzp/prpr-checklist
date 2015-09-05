module Prpr
  module Handler
    class Checklist < Base
        handle Event::PullRequest, action: /opened/ do
          Prpr::Action::Checklist::Create.new(event).call
        end
    end
  end
end
