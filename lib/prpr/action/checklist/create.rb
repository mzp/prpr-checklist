module Prpr
  module Action
    module Checklist
      class Create < Base
        def call
          github.add_comment(repository_name, number, content)
        end

        private

        def repository_name
          event.repository.full_name
        end

        def number
          event.number
        end

        def github
          Repository::Github.default
        end

        def config
          @config ||= Config::Github.new(repository_name)
        end

        def env
          Config::Env.default
        end

        def name
          env[:checklist_name] || 'CONTRIBUTING.md'
        end

        def content
          config.read(name)
        rescue
          "Not found: #{name}"
        end
      end
    end
  end
end
