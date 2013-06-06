def measure(amount=1)
  return unless (amount > 0)
  results = []
  amount.times do
    before_run = Time.now
    yield
    after_run = Time.now
    results.push(after_run-before_run)
  end
  
  results.reduce(:+).to_f / results.size
end