# encoding: utf-8
group :specs, :halt_on_fail => true do
  guard :cucumber, :cli => "--profile default", :rvm => ["1.9.3", "2.1"] do
    watch(/^features\/.+\.feature$/)
    watch(%r{^lib/rbtetris/(.+)\.rb}) { |m| "features/#{m[1]}.feature" }
    watch(%r{^features/support/.+$}) { "features" }
    watch(%r{^features/step_definitions/(.+)_steps\.rb$}) do |m|
      Dir[File.join("**/#{m[1]}.feature")][0] || "features"
    end
  end

  guard :rubocop do
    watch(/.+\.rb$/)
    watch(/(?:.+\/)?\.rubocop\.yml$/) { |m| File.dirname(m[0]) }
  end
end
