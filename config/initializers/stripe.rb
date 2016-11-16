Rails.configuration.stripe = {
  :publishable_key => 'pk_test_AWVRdlM1LHBiV2UOyLT0bFyA',
  :secret_key      => 'sk_test_ymJZQW05G09l0dRmUIciLDNo'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
