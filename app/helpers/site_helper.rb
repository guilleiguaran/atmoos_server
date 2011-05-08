module SiteHelper
  def air_status_string(key)
    statuses = {
      'good'    => '<span>Hoy el aire es puro y limpio, asi que &#161;salgamos a disfrutarlo!</span><br/>El aire nos importa,
                    ayuda a mantenerlo siempre limpio animando a usar transportes como la bici.<br/><br/><small>Todos los
                    componentes analizados del aire (SO2 NO2 Particulas y O3) est&aacute;n por debajo del 50% del valor
                    l&iacute;mite establecido por las Directivas Europeas.</small>'.html_safe,
      'regular' => '<span>El aire de tu zona no est&aacute; limpio.</span><br/>Es un buen momento para empezar a usar el
                    transporte p&uacute;blico. &iquest;Qu&eacute; m&aacute;s se te ocurre?<br/><br/><small>Uno o varios de los
                    contaminantes (SO2 NO2 Particulas y O3) se encuentran entre el 50-100% del valor l&iacute;mite
                    establecido por las Directivas Europeas.</small>'.html_safe,
      'bad'     => '<span>El aire supera los l&iacute;mites de contaminaci&oacute;n y puede ser perjudicial para la
                    salud.</span><br/>Informa de ello. &iquest;Qu&eacute; crees que podemos hacer?<br/><br/><small>Uno
                    o varios de los contaminantes (SO2 NO2 Particulas y O3) se encuentran por encima de los l&iacute;mites
                    establecidos por las Directivas Europeas.</small>'.html_safe,
      'off'     => 'En estos momentos no es posible mostrar la informaci&oacute;n. Trabajamos para resolverlo pronto. Gracias.',
    }
    statuses[key]
  end
end