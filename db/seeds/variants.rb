galant = Spree::Product.find_by_name!("Galant")

m7021 = Spree::OptionValue.find_by_name!("7021")
m7024 = Spree::OptionValue.find_by_name!("7024")
m7131 = Spree::OptionValue.find_by_name!("7131")
m7132 = Spree::OptionValue.find_by_name!("7132")

white_silk = Spree::OptionValue.find_by_name!("White silk")
ivory = Spree::OptionValue.find_by_name!("Ivory")

satin_ap = Spree::OptionValue.find_by_name!("Satin-autor-paint")
satin_l = Spree::OptionValue.find_by_name!("Satin-loft")
satin = Spree::OptionValue.find_by_name!("Satin")

variants = [
  {
    :product => galant,
    :option_values => [m7021, white_silk],
    :sku => "7021 #{I18n.t('variants.white_silk')}",
    :cost_price => 11995
  },
  {
    :product => galant,
    :option_values => [m7021, ivory],
    :sku => "7021 #{I18n.t('variants.ivory')}",
    :cost_price => 11995
  },
  {
    :product => galant,
    :option_values => [m7024 ,white_silk, satin_ap],
    :sku => "7024 #{I18n.t('variants.white_silk')}40",
    :cost_price => 13995
  },
  {
    :product => galant,
    :option_values => [m7024, white_silk, satin_l],
    :sku => "7024 #{I18n.t('variants.white_silk')}23",
    :cost_price => 12995
  },
  {
    :product => galant,
    :option_values => [m7024, white_silk, satin],
    :sku => "7024 #{I18n.t('variants.white_silk')}02",
    :cost_price => 13295
  },
  {
    :product => galant,
    :option_values => [m7024, ivory, satin_ap],
    :sku => "7024 #{I18n.t('variants.ivory')}40",
    :cost_price => 13995
  },
  {
    :product => galant,
    :option_values => [m7024, ivory, satin_l],
    :sku => "7024 #{I18n.t('variants.ivory')}23",
    :cost_price => 12995
  },
  {
    :product => galant,
    :option_values => [m7024, ivory, satin],
    :sku => "7024 #{I18n.t('variants.ivory')}02",
    :cost_price => 13295
  },
  {
    :product => galant,
    :option_values => [m7132, white_silk, satin_ap],
    :sku => "7132 #{I18n.t('variants.white_silk')}41",
    :cost_price => 12995
  },
  {
    :product => galant,
    :option_values => [m7132, white_silk, satin],
    :sku => "7132 #{I18n.t('variants.white_silk')}02",
    :cost_price => 11995
  },
  {
    :product => galant,
    :option_values => [m7132, ivory, satin_ap],
    :sku => "7132 #{I18n.t('variants.ivory')}41",
    :cost_price => 12995
  },
  {
    :product => galant,
    :option_values => [m7132, ivory, satin],
    :sku => "7132 #{I18n.t('variants.ivory')}02",
    :cost_price => 11995
  },
  {
    :product => galant,
    :option_values => [m7131, white_silk],
    :sku => "7131 #{I18n.t('variants.white_silk')}",
    :cost_price => 11495
  },
  {
    :product => galant,
    :option_values => [m7131, ivory],
    :sku => "7131 #{I18n.t('variants.ivory')}",
    :cost_price => 11495
  },
]

#masters = {
#  galant => {
#    :sku => "7021 #{I18n.t('variants.white_silk')}",
#    :cost_price => 11995,
#  }
#}

Spree::Variant.create!(variants)

#masters.each do |product, variant_attrs|
#  product.master.update_attributes!(variant_attrs)
#end