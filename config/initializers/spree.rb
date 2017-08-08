Spree.config do |config|

  config.logo = 'logo.png'
  config.admin_interface_logo = 'logo.png'
  config.default_country_id = 157

Spree::Money.class_eval do
    def to_s
      @money.format.gsub(/,00/, "")
      @money.format(:symbol_position => :before, :with_currency => true, :no_cents => true)
    end

    def to_html(options = { :html => true })
     to_s
    end
  end

Money::Currency.register({
  :priority        => 1,
  :iso_code        => "COP",
  :iso_numeric     => country.id,
  :name            => "Colombia",
  :symbol          => "$ ",
  :subunit         => "Peso",
  :subunit_to_unit => 1,
  :separator       => ".",
  :delimiter       => ","
})

end