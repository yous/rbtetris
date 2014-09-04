# encoding: utf-8
group :specs, halt_on_fail: true do
  guard :cucumber, cli: '--profile default', all_on_start: false do
    watch(/^features\/.+\.feature$/)
    watch(%r{^lib/rbtetris/(.+)\.rb}) { |m| "features/#{m[1]}.feature" }
    watch(%r{^features/support/.+$}) { 'features' }
    watch(%r{^features/step_definitions/(.+)_steps\.rb$}) do |m|
      Dir[File.join("**/#{m[1]}.feature")][0] || 'features'
    end
  end

  guard :rubocop, all_on_start: false do
    watch(/.+\.rb$/)
    watch(/(?:.+\/)?\.rubocop\.yml$/) { |m| File.dirname(m[0]) }
    watch(/(?:.+\/)?Gemfile$/)
    watch(/(?:.+\/)?Guardfile$/)
    watch(/(?:.+\/)?Rakefile$/)
  end
end
