require 'open3'
stdin, stdout, stderr = Open3.popen3('T_BROWSER=headless_chrome rspec spec/example_spec.rb')
total_examples = 0
total_failures = 0
sha256 = 0
stdout.readlines.each do |line|
  if line =~ /SHA256: (\h*)/
    sha256=$1
  end
end
puts sha256
