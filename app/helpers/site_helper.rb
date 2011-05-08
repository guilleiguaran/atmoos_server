module SiteHelper
  def air_status_string(key)
    statuses = {
      'good'    => 'Buena',
      'regular' => 'Regular',
      'bad'     => 'Mala',
      'off'     => 'No disponible',
    }
    statuses[key]
  end
end
