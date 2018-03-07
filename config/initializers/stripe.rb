Rails.configuration.stripe = {
  :publishable_key  => "pk_test_fWRpIB9OS2fHYjRhQVzoliLj",
  :secret_key       => "sk_test_GgqIPtuR8sSEvKa1J4ULXEqB"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
