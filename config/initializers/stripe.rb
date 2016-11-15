Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_pJitTWxCFUmQdkmWPtKYMkoz'],
  :secret_key      => ENV['sk_test_vI5cW2slqGqNVlkfDJ22MUel']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
