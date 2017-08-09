Spree.config do |config|
  
  config.logo = 'logo.png'
  config.admin_interface_logo = 'logo.png'
  country = Spree::Country.find_by_name('Colombia')
  config.default_country_id = country.id if country.present?
  config.checkout_zone = country.id
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
  :iso_numeric     =>  country.id,
  :name            => "Colombia",
  :symbol          => "$ ",
  :subunit         => "Peso",
  :subunit_to_unit => 1,
  :separator       => ".",
  :delimiter       => ","
})
Spree::Price.update_all(currency: 'COP')
Spree.user_class = "Spree::User"
Spree::Frontend::Config[:locale] = 'es-CO'
Spree::Backend::Config[:locale] = 'es-CO' 
end