import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es', 'pt'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
    String? ptText = '',
  }) =>
      [enText, esText, ptText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Intro
  {
    '492bmtwn': {
      'en': 'Welcome to',
      'es': 'Bienvenido a',
      'pt': 'Bem-vindo ao',
    },
    'c9ziuq4y': {
      'en': 'Your Barber, Your Way',
      'es': 'Tu peluquero, a tu manera',
      'pt': 'Seu barbeiro, do seu jeito',
    },
    'ggnciafa': {
      'en':
          'Effortless booking, exceptional cuts. Cut Quest is your go-to destination for a seamless barber experience. Find, book, and enjoy the perfect cut, all in one place.',
      'es':
          'Reserva sin esfuerzo, cortes excepcionales. Cut Quest es su destino ideal para una experiencia de barbería perfecta. Encuentra, reserva y disfruta del corte perfecto, todo en un solo lugar.',
      'pt':
          'Reserva sem esforço, cortes excepcionais. Cut Quest é o seu destino preferido para uma experiência de barbeiro perfeita. Encontre, reserve e desfrute do corte perfeito, tudo em um só lugar.',
    },
    'agea7e3i': {
      'en': 'LOG IN',
      'es': 'ACCESO',
      'pt': 'CONECTE-SE',
    },
    'c76e7rrk': {
      'en': 'SIGN UP',
      'es': 'INSCRIBIRSE',
      'pt': 'INSCREVER-SE',
    },
    'zwza0rpk': {
      'en': 'Welcome to',
      'es': 'Bienvenido a',
      'pt': 'Bem-vindo ao',
    },
    'zgv3li6q': {
      'en': 'Your Barber, Your Way',
      'es': 'Tu peluquero, a tu manera',
      'pt': 'Seu barbeiro, do seu jeito',
    },
    '02i74j0t': {
      'en':
          'Effortless booking, exceptional cuts. Cut Quest is your go-to destination for a seamless barber experience. Find, book, and enjoy the perfect cut, all in one place.',
      'es':
          'Reserva sin esfuerzo, cortes excepcionales. Cut Quest es su destino ideal para una experiencia de barbería perfecta. Encuentra, reserva y disfruta del corte perfecto, todo en un solo lugar.',
      'pt':
          'Reserva sem esforço, cortes excepcionais. Cut Quest é o seu destino preferido para uma experiência de barbeiro perfeita. Encontre, reserve e desfrute do corte perfeito, tudo em um só lugar.',
    },
    'dmk1e42k': {
      'en': 'LOG IN',
      'es': 'ACCESO',
      'pt': 'CONECTE-SE',
    },
    '9o9sgavu': {
      'en': 'SIGN UP',
      'es': 'INSCRIBIRSE',
      'pt': 'INSCREVER-SE',
    },
    'bk0aj808': {
      'en': 'Welcome to',
      'es': 'Bienvenido a',
      'pt': 'Bem-vindo ao',
    },
    '9vlypcbu': {
      'en': 'Your Barber, Your Way',
      'es': 'Tu peluquero, a tu manera',
      'pt': 'Seu barbeiro, do seu jeito',
    },
    '6m45t5mn': {
      'en':
          'Effortless booking, exceptional cuts. Cut Quest is your go-to destination for a seamless barber experience. Find, book, and enjoy the perfect cut, all in one place.',
      'es':
          'Reserva sin esfuerzo, cortes excepcionales. Cut Quest es su destino ideal para una experiencia de barbería perfecta. Encuentra, reserva y disfruta del corte perfecto, todo en un solo lugar.',
      'pt':
          'Reserva sem esforço, cortes excepcionais. Cut Quest é o seu destino preferido para uma experiência de barbeiro perfeita. Encontre, reserve e desfrute do corte perfeito, tudo em um só lugar.',
    },
    'ks4j41ka': {
      'en': 'LOG IN',
      'es': 'ACCESO',
      'pt': 'CONECTE-SE',
    },
    '3pcq5g83': {
      'en': 'SIGN UP',
      'es': 'INSCRIBIRSE',
      'pt': 'INSCREVER-SE',
    },
    'ixxyguxu': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // SingUp
  {
    'rzruprst': {
      'en': 'SIGN UP',
      'es': 'INSCRIBIRSE',
      'pt': 'INSCREVER-SE',
    },
    'naj7yind': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'pt': 'E-mail',
    },
    '5ipfm9y5': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '3pgrwhi7': {
      'en': 'Password',
      'es': 'Contraseña',
      'pt': 'Senha',
    },
    'i2ex0l5e': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'u52xxzq9': {
      'en': 'Confirm Password',
      'es': 'Contraseña',
      'pt': 'Senha',
    },
    'j8w3g3h8': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'n16n1ek8': {
      'en': 'Next',
      'es': 'Crea uno',
      'pt': 'Crie um',
    },
    '5vqkwl0m': {
      'en': 'OR',
      'es': 'O',
      'pt': 'OU',
    },
    'zdtwa48a': {
      'en': 'All ready have an account?',
      'es': '¿Todo listo tienes una cuenta?',
      'pt': 'Tudo pronto, tem uma conta?',
    },
    '417f1nfg': {
      'en': 'LOG IN',
      'es': 'ACCESO',
      'pt': 'CONECTE-SE',
    },
    'e3swbm88': {
      'en': 'Continue with Google',
      'es': 'Acceso',
      'pt': 'Conecte-se',
    },
    'cify26jd': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // CodePhone
  {
    'v88umzsn': {
      'en': 'Enter verification code',
      'es': 'Ingrese el código de verificación',
      'pt': 'Digite o código de verificação',
    },
    '7pfu24i4': {
      'en': 'We have send you a 4 digit verification code\non ',
      'es': 'Le hemos enviado un código de verificación de 4 dígitos.\nen',
      'pt': 'Enviamos a você um código de verificação de 4 dígitos\nsobre',
    },
    'drgwwb1r': {
      'en': '+6141 234 5***',
      'es': '+6141 234 5***',
      'pt': '+6141 234 5***',
    },
    'yrd31xl7': {
      'en': 'Confirm',
      'es': 'Confirmar',
      'pt': 'confirme',
    },
    '086mrzo6': {
      'en': 'Re-send code',
      'es': 'Reenviar codigo',
      'pt': 'Reenviar código',
    },
    '0ye69z0i': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // Home
  {
    'jyzftnox': {
      'en': '5',
      'es': '5',
      'pt': '5',
    },
    'u30w9nxi': {
      'en': 'Services',
      'es': 'Servicios',
      'pt': 'Serviços',
    },
    'ob6ec8ip': {
      'en': 'Our Portfolios',
      'es': 'Nuestras carteras',
      'pt': 'Nossos portfólios',
    },
    '5206ze4e': {
      'en': 'Barbers',
      'es': 'Peluquería',
      'pt': 'Barbeiros',
    },
    'z5vr1klc': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // Registrationcompleted
  {
    'decu98if': {
      'en': 'All ready',
      'es': 'Listo',
      'pt': 'Tudo pronto',
    },
    'rnic1qei': {
      'en':
          'Your registration has been completed successfully.Looking more beautiful is no longer complicated  😀 📱',
      'es':
          'Tu registro se ha completado con éxito. Lucir más bella ya no es complicado 😀 📱',
      'pt':
          'Seu cadastro foi concluído com sucesso. Ficar mais bonita não é mais complicado 😀 📱',
    },
    '9o406p3n': {
      'en': 'HERE WE GO!',
      'es': '¡AQUÍ VAMOS!',
      'pt': 'AQUI VAMOS NÓS!',
    },
    'bimh2a17': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // ResearchProf
  {
    '8u7x76f7': {
      'en': 'Search here...',
      'es': 'Busca aquí...',
      'pt': 'Procure aqui...',
    },
    '1f5ufkf6': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // HomePro
  {
    '2ti6htcv': {
      'en': 'Hello, ',
      'es': 'Hola,',
      'pt': 'Olá,',
    },
    'll23cbjt': {
      'en': 'You are in your schedule',
      'es': 'estas en tu agenda',
      'pt': 'Você está na sua agenda',
    },
    '9ibi01fw': {
      'en': ' - ',
      'es': '-',
      'pt': '-',
    },
    'eyov3pl9': {
      'en': 'Today',
      'es': 'Hoy',
      'pt': 'Hoje',
    },
    'so88op16': {
      'en': '8',
      'es': '8',
      'pt': '8',
    },
    'my7lntvz': {
      'en': 'This Week',
      'es': 'Esta semana',
      'pt': 'Essa semana',
    },
    'svdr4w5s': {
      'en': '6',
      'es': '6',
      'pt': '6',
    },
    'xr2sprhb': {
      'en': 'Select timeline start hour',
      'es': '',
      'pt': '',
    },
    'ietup84b': {
      'en': '7',
      'es': '',
      'pt': '',
    },
    'ahpflxmg': {
      'en': 'Start hour',
      'es': '',
      'pt': '',
    },
    'mk8yb35f': {
      'en': 'Search...',
      'es': '',
      'pt': '',
    },
    '6iqbfil1': {
      'en': '6:00 AM',
      'es': '',
      'pt': '',
    },
    'w25nxhf7': {
      'en': '7:00 AM',
      'es': '',
      'pt': '',
    },
    'meb4do86': {
      'en': '8:00 AM',
      'es': '',
      'pt': '',
    },
    'a0zu8rb1': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // MyLink
  {
    'o0bev4ai': {
      'en': 'Share',
      'es': 'Compartir',
      'pt': 'Compartilhar',
    },
    'e8vmdwno': {
      'en': 'Link Share',
      'es': 'Enlace compartido',
      'pt': 'Compartilhamento de link',
    },
    'y4251q04': {
      'en': 'Share your schedule with your clients.',
      'es': 'Comparte tu agenda con tus clientes.',
      'pt': 'Compartilhe sua programação com seus clientes.',
    },
    'nrl3fkec': {
      'en':
          'Share your link with your clients so that they can schedule services.',
      'es':
          'Comparte tu enlace con tus clientes para que puedan programar servicios.',
      'pt':
          'Compartilhe seu link com seus clientes para que eles possam agendar serviços.',
    },
    'aw9m7oi9': {
      'en': '',
      'es': 'https://chat.fillap.me/?i...',
      'pt': 'https://chat.fillap.me/?i...',
    },
    'y33abyl7': {
      'en': 'https://chat.fillap.me/?i...',
      'es': 'https://chat.fillap.me/?i...',
      'pt': 'https://chat.fillap.me/?i...',
    },
    'n32f6rpe': {
      'en': 'Copy Link',
      'es': 'Copiar link',
      'pt': 'Link de cópia',
    },
    '9kvrm4cz': {
      'en': 'WhatsApp',
      'es': 'WhatsApp',
      'pt': 'Whatsapp',
    },
    'v9jprsvx': {
      'en': 'QRCode',
      'es': 'Código QR',
      'pt': 'Código QR',
    },
    '40pm9zeg': {
      'en': 'Facebook',
      'es': 'Facebook',
      'pt': 'Facebook',
    },
    '3v2ttou6': {
      'en': 'More',
      'es': 'Más',
      'pt': 'Mais',
    },
    'xj15s0rf': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // ReportBug
  {
    'rdjx41i5': {
      'en': 'Share',
      'es': 'Compartir',
      'pt': 'Compartilhar',
    },
    'x2qrfupy': {
      'en': 'App Failure',
      'es': 'Fallo de la aplicación',
      'pt': 'Falha no aplicativo',
    },
    '7zlfweij': {
      'en':
          'Please inform our team about any language or technical issues you encounter in this app:',
      'es':
          'Informe a nuestro equipo sobre cualquier problema técnico o de idioma que encuentre en esta aplicación:',
      'pt':
          'Informe nossa equipe sobre quaisquer problemas técnicos ou de idioma que você encontrar neste aplicativo:',
    },
    '9il62wqf': {
      'en': 'Technical description...',
      'es': 'Descripción técnica...',
      'pt': 'Descrição técnica...',
    },
    'wzg8wjw1': {
      'en':
          'OBS: Your email, name, and establishment information will be automatically sent to Barber Select.',
      'es':
          'OBS: Su correo electrónico, nombre e información del establecimiento se enviarán automáticamente a Barber Select.',
      'pt':
          'OBS: Seu e-mail, nome e informações do estabelecimento serão enviados automaticamente para o Barber Select.',
    },
    'bb1773h1': {
      'en': 'SEND',
      'es': 'ENVIAR',
      'pt': 'ENVIAR',
    },
    '41aax1ov': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // NewClient
  {
    'ead7vhn5': {
      'en': 'Add a',
      'es': 'Agrega un',
      'pt': 'Adicione um',
    },
    'cygplm1k': {
      'en': 'New Client',
      'es': 'Cliente nuevo',
      'pt': 'Novo cliente',
    },
    'dyo35bl5': {
      'en': 'Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    'p6t59uk8': {
      'en': 'Phone Number',
      'es': 'Número de teléfono',
      'pt': 'Número de telefone',
    },
    'dsb1e540': {
      'en': 'Birthday Month',
      'es': 'Mes de cumpleaños',
      'pt': 'Mês do aniversário',
    },
    'pc2mcwht': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'pt': 'Procure um item...',
    },
    'lf8w1pew': {
      'en': 'January',
      'es': 'Enero',
      'pt': 'Janeiro',
    },
    '0f887z6a': {
      'en': 'February',
      'es': 'Febrero',
      'pt': 'Fevereiro',
    },
    'vflw3nt0': {
      'en': 'March',
      'es': 'Marzo',
      'pt': 'Marchar',
    },
    'd4in3ai2': {
      'en': 'April',
      'es': 'Abril',
      'pt': 'abril',
    },
    'd74xy4fs': {
      'en': 'May',
      'es': 'Puede',
      'pt': 'Poderia',
    },
    'cgxvfj19': {
      'en': 'June',
      'es': 'Junio',
      'pt': 'Junho',
    },
    'fou3jl74': {
      'en': 'July',
      'es': 'Julio',
      'pt': 'Julho',
    },
    'ugiinspw': {
      'en': 'August',
      'es': 'Agosto',
      'pt': 'Agosto',
    },
    '8w9xgxmb': {
      'en': 'September',
      'es': 'Septiembre',
      'pt': 'Setembro',
    },
    '98q326ut': {
      'en': 'October',
      'es': 'Octubre',
      'pt': 'Outubro',
    },
    'd6ro6ii3': {
      'en': 'November',
      'es': 'Noviembre',
      'pt': 'novembro',
    },
    'hm2f7t9g': {
      'en': 'December',
      'es': 'Diciembre',
      'pt': 'dezembro',
    },
    'lahx16s2': {
      'en': 'Observation',
      'es': 'Observación',
      'pt': 'Observação',
    },
    'es5e6v9i': {
      'en': 'Value',
      'es': 'Valor',
      'pt': 'Valor',
    },
    'itucbej8': {
      'en': 'Adress Client',
      'es': 'Dirección Cliente',
      'pt': 'Endereço Cliente',
    },
    'axajumew': {
      'en': 'Number',
      'es': 'Número',
      'pt': 'Número',
    },
    '9bcvb7x1': {
      'en': 'Extra Information',
      'es': 'Información extra',
      'pt': 'Informação extra',
    },
    'gou4keww': {
      'en': 'Neighborhood',
      'es': 'Vecindario',
      'pt': 'Vizinhança',
    },
    't8dyta56': {
      'en': 'City',
      'es': 'Ciudad',
      'pt': 'Cidade',
    },
    'vs5wdb87': {
      'en': 'State',
      'es': 'Estado',
      'pt': 'Estado',
    },
    'amm8x64j': {
      'en': 'SAVE',
      'es': 'AHORRAR',
      'pt': 'SALVAR',
    },
    '1hgtlmcy': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // Billing
  {
    'zr39j71v': {
      'en': 'Analyze',
      'es': 'Analizar',
      'pt': 'Analisar',
    },
    'jrl73xok': {
      'en': 'Billing',
      'es': 'Facturación',
      'pt': 'Cobrança',
    },
    'hctvldgb': {
      'en': 'JAN',
      'es': 'ENE',
      'pt': 'JANEIRO',
    },
    'ipx8sxpz': {
      'en': 'FEV',
      'es': 'DIC',
      'pt': 'DEZEMBRO',
    },
    'k0x0vtzm': {
      'en': 'Services Balance',
      'es': 'Saldo de servicios',
      'pt': 'Saldo de Serviços',
    },
    'a6w8anm2': {
      'en': '₦ 25.00',
      'es': '\$25.00',
      'pt': 'US\$ 25,00',
    },
    'jmf398pq': {
      'en': '(commission) ',
      'es': '(comisión)',
      'pt': '(comissão)',
    },
    '5yeduaj2': {
      'en': '50% ',
      'es': '50%',
      'pt': '50%',
    },
    'ulqd1r2n': {
      'en': 'gross salary: ',
      'es': 'salario bruto:',
      'pt': 'salário bruto:',
    },
    'uqghq7om': {
      'en': '₦ 50,00',
      'es': '\$50,00',
      'pt': '\$ 50,00',
    },
    '2bq84wv8': {
      'en': 'Swipe to see more',
      'es': 'Desliza para ver más',
      'pt': 'Deslize para ver mais',
    },
    'wjdb3le1': {
      'en': 'Completed Services',
      'es': 'Servicios completados',
      'pt': 'Serviços concluídos',
    },
    'cl6u1z9h': {
      'en': 'Swipe to see more',
      'es': 'Desliza para ver más',
      'pt': 'Deslize para ver mais',
    },
    'xiim8ppx': {
      'en': '₦ 25',
      'es': '\$25',
      'pt': 'US\$ 25',
    },
    'wkc4d6e3': {
      'en': 'Average Ticket',
      'es': 'Boleto promedio',
      'pt': 'Ticket Médio',
    },
    '82y61i9d': {
      'en': '2 %',
      'es': '2 %',
      'pt': '2%',
    },
    'ia8rpyna': {
      'en': 'Occupancy Rate',
      'es': 'Tasa de ocupación',
      'pt': 'Taxa de ocupação',
    },
    '05hzwovf': {
      'en': 'Payments',
      'es': 'Pagos',
      'pt': 'Pagamentos',
    },
    'u80b3boh': {
      'en': 'More Dados',
      'es': 'Más dados',
      'pt': 'Mais dados',
    },
    'slvkej87': {
      'en': 'AVAIABLE HOURS',
      'es': 'HORARIOS DISPONIBLES',
      'pt': 'HORÁRIOS DISPONÍVEIS',
    },
    'udlmv0pz': {
      'en': '20 hrs',
      'es': '20 horas',
      'pt': '20 horas',
    },
    'j0g7hfly': {
      'en': 'WORKED HOURS',
      'es': 'HORAS TRABAJADAS',
      'pt': 'HORAS TRABALHADAS',
    },
    '0d56njib': {
      'en': '2 hrs',
      'es': '2 horas',
      'pt': '2 horas',
    },
    'b4npo9ig': {
      'en': 'IDLE TIME',
      'es': 'TIEMPO DE INACTIVIDAD',
      'pt': 'TEMPO OCIOSO',
    },
    'k1kui11o': {
      'en': '40 hrs',
      'es': '40 horas',
      'pt': '40 horas',
    },
    'c6mcvvf4': {
      'en': 'FULLY BOOKED',
      'es': 'COMPLETAMENTE LLENO',
      'pt': 'TOTALMENTE RESERVADO',
    },
    '4fpy53it': {
      'en': '0 hrs',
      'es': '0 horas',
      'pt': '0h',
    },
    'wxpka1xc': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // MySettings
  {
    'zibe51g8': {
      'en': 'My',
      'es': 'Mi',
      'pt': 'Meu',
    },
    '7me0ogjl': {
      'en': 'Settings',
      'es': 'Ajustes',
      'pt': 'Configurações',
    },
    '2gz1758s': {
      'en': 'Company Data',
      'es': 'Datos de la compañia',
      'pt': 'Dados da empresa',
    },
    '0ku9o1x3': {
      'en': 'SERVICES',
      'es': 'SERVICIOS',
      'pt': 'SERVIÇOS',
    },
    '5mogpaja': {
      'en': 'Swipe to see more',
      'es': 'Desliza para ver más',
      'pt': 'Deslize para ver mais',
    },
    's74ykc3j': {
      'en': 'Professionals',
      'es': 'Profesionales',
      'pt': 'Profissionais',
    },
    'jgmaps9c': {
      'en': 'Swipe to see more',
      'es': 'Desliza para ver más',
      'pt': 'Deslize para ver mais',
    },
    '0f0v6jib': {
      'en': 'Logout',
      'es': 'Desconectar',
      'pt': 'Sair',
    },
    '2oozw4ar': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // BookingNew
  {
    'x7xihqt2': {
      'en': 'New Booking',
      'es': 'Nueva reserva',
      'pt': 'Nova reserva',
    },
    'chukur2u': {
      'en': 'Fill in all the fields to schedule a new booking',
      'es': 'Complete todos los campos para programar una nueva reserva',
      'pt': 'Preencha todos os campos para agendar uma nova reserva',
    },
    'rnt330gw': {
      'en': 'Name Client',
      'es': 'Nombre Cliente',
      'pt': 'Nome Cliente',
    },
    'ln5mj1os': {
      'en': 'Phone Number',
      'es': 'Número de teléfono',
      'pt': 'Número de telefone',
    },
    'w1uujbtp': {
      'en': 'Types of Haircuts',
      'es': 'Tipos de cortes de pelo',
      'pt': 'Tipos de cortes de cabelo',
    },
    '4630q59b': {
      'en': 'Search...',
      'es': 'Buscar...',
      'pt': 'Procurar...',
    },
    '7npuwd56': {
      'en': 'Pixie Cut',
      'es': 'corte duendecillo',
      'pt': 'Corte Pixie',
    },
    'y1x6uwy2': {
      'en': 'Layered Cut',
      'es': 'Corte en capas',
      'pt': 'Corte em camadas',
    },
    'v30zvg7t': {
      'en': 'Crew Cut',
      'es': 'Corte de equipo',
      'pt': 'Corte da tripulação',
    },
    'uwahcaqk': {
      'en': 'Fade Cut',
      'es': 'Corte desvanecido',
      'pt': 'Corte esmaecido',
    },
    'c3kbbhi0': {
      'en': 'Undercut',
      'es': 'Vender a menor precio que',
      'pt': 'Corte inferior',
    },
    'wotfobok': {
      'en': 'Mohawk',
      'es': 'mohawk',
      'pt': 'Moicano',
    },
    'v9jqoubn': {
      'en': 'Blunt Cut',
      'es': 'corte romo',
      'pt': 'Corte rombudo',
    },
    '0yu11bts': {
      'en': 'Hour',
      'es': 'Hora',
      'pt': 'Hora',
    },
    '3gqgl9tr': {
      'en': 'Search...',
      'es': 'Buscar...',
      'pt': 'Procurar...',
    },
    'gdug8fnp': {
      'en': '9:30',
      'es': '9:30',
      'pt': '9h30',
    },
    'bx2409ed': {
      'en': '10:00',
      'es': '10:00',
      'pt': '10:00',
    },
    'p6eykr56': {
      'en': '10:30',
      'es': '10:30',
      'pt': '10h30',
    },
    'dy4or41t': {
      'en': '11:00',
      'es': '11:00',
      'pt': '11:00',
    },
    'l2tntbmk': {
      'en': '12:00',
      'es': '12:00',
      'pt': '12:00',
    },
    'e48vyza0': {
      'en': '12:30',
      'es': '12:30',
      'pt': '12h30',
    },
    '0lmwo9qw': {
      'en': '13:00',
      'es': '13:00',
      'pt': '13:00',
    },
    '72kqajoe': {
      'en': 'Free',
      'es': 'Gratis',
      'pt': 'Livre',
    },
    '1oijcl0v': {
      'en': 'Repeat this appointment',
      'es': 'Repetir esta cita',
      'pt': 'Repita este compromisso',
    },
    '9yibjt4k': {
      'en': 'Every:',
      'es': 'Cada:',
      'pt': 'Todo:',
    },
    'qdyhjkqv': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'pt': 'Por favor selecione...',
    },
    'k40nyi2g': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'pt': 'Procure um item...',
    },
    'z88a5ds0': {
      'en': 'One week (7 days)',
      'es': 'Una semana (7 días)',
      'pt': 'Uma semana (7 dias)',
    },
    '9jyfy2d6': {
      'en': 'Two weeks (14 days)',
      'es': 'Dos semanas (14 días)',
      'pt': 'Duas semanas (14 dias)',
    },
    'xy10lfai': {
      'en': 'Three weeks (21 days)',
      'es': 'Tres semanas (21 días)',
      'pt': 'Três semanas (21 dias)',
    },
    '9mv4s8v5': {
      'en': 'One month (30 days)',
      'es': 'Un mes (30 días)',
      'pt': 'Um mês (30 dias)',
    },
    'ov89wcdo': {
      'en': 'For: ',
      'es': 'Para:',
      'pt': 'Para:',
    },
    'm6bhqjz7': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'pt': 'Por favor selecione...',
    },
    'ajxlhfyr': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'pt': 'Procure um item...',
    },
    'ruooqys5': {
      'en': '1 month',
      'es': '1 mes',
      'pt': '1 mês',
    },
    'jauer5z7': {
      'en': '3 months',
      'es': '3 meses',
      'pt': '3 meses',
    },
    '79zmgvwe': {
      'en': '6 months',
      'es': '6 meses',
      'pt': '6 meses',
    },
    'vn5zji9j': {
      'en': '12 Months',
      'es': '12 meses',
      'pt': '12 meses',
    },
    '33up1xsu': {
      'en': '24 Months',
      'es': '24 meses',
      'pt': '24 meses',
    },
    'og3zbjmo': {
      'en': 'SCHEDULE',
      'es': 'CRONOGRAMA',
      'pt': 'AGENDAR',
    },
    'dzqh99j0': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // BookingCompleted
  {
    'gfad4kry': {
      'en': 'Booking Completed',
      'es': 'Reserva completada',
      'pt': 'Reserva concluída',
    },
    '0osgxr1n': {
      'en': 'Sunday, December 30, 2023',
      'es': 'domingo, 30 de diciembre de 2023',
      'pt': 'Domingo, 30 de dezembro de 2023',
    },
    '7frulryn': {
      'en': '11:00--------11:30',
      'es': '11:00--------11:30',
      'pt': '11:00 -------- 11:30',
    },
    'khgikj8f': {
      'en': 'Ethan Baker',
      'es': 'Ethan panadero',
      'pt': 'Ethan Baker',
    },
    '8x6rfary': {
      'en': 'Haircut and beard',
      'es': 'Corte de pelo y barba',
      'pt': 'Corte de cabelo e barba',
    },
    'k3xoeeq9': {
      'en': ' - \$ 25,00',
      'es': '- \$ 25,00',
      'pt': '- \$ 25,00',
    },
    'dtlevwty': {
      'en': 'OK',
      'es': 'DE ACUERDO',
      'pt': 'OK',
    },
    'dy17iek7': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // ticketClient
  {
    '410wxe2g': {
      'en': 'Sunday, December 30, 2023',
      'es': 'domingo, 30 de diciembre de 2023',
      'pt': 'Domingo, 30 de dezembro de 2023',
    },
    'a1kuy1gh': {
      'en': 'My',
      'es': 'Mi',
      'pt': 'Meu',
    },
    'ebtye7ap': {
      'en': '10:00 AM to 11:30 AM',
      'es': '10:00 a. m. a 11:30 a. m.',
      'pt': '10h00 às 11h30',
    },
    'r9lgn94z': {
      'en': 'Client',
      'es': 'Cliente',
      'pt': 'Cliente',
    },
    'by9syawq': {
      'en': 'Ethan Baker',
      'es': 'Ethan panadero',
      'pt': 'Ethan Baker',
    },
    '1ikritq1': {
      'en': '+1 956 2568',
      'es': '+1 956 2568',
      'pt': '+1 956 2568',
    },
    'sdyclfs7': {
      'en': 'SERVICES',
      'es': 'SERVICIOS',
      'pt': 'SERVIÇOS',
    },
    'gkt27mez': {
      'en': 'EDIT',
      'es': 'EDITAR',
      'pt': 'EDITAR',
    },
    'kko6couv': {
      'en': 'Swipe to see more',
      'es': 'Desliza para ver más',
      'pt': 'Deslize para ver mais',
    },
    'u2lwe5q4': {
      'en': 'PRODUCTS',
      'es': 'PRODUCTOS',
      'pt': 'PRODUTOS',
    },
    'djqb25lw': {
      'en': 'Swipe to see more',
      'es': 'Desliza para ver más',
      'pt': 'Deslize para ver mais',
    },
    'tbskemkr': {
      'en': 'SERV.:',
      'es': 'SERV.:',
      'pt': 'SERV.:',
    },
    '0eoujy0b': {
      'en': '\$ 30,00',
      'es': '\$ 30,00',
      'pt': '\$ 30,00',
    },
    '283indw8': {
      'en': 'Cred Card',
      'es': 'Tarjeta de crédito',
      'pt': 'Cartão de crédito',
    },
    'e7rqqgp5': {
      'en':
          '-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------',
      'es':
          '-------------------------------------------------- -------------------------------------------------- -------------------------------------------------- -------------------------------------------------- ---------',
      'pt':
          '-------------------------------------------------- -------------------------------------------------- -------------------------------------------------- -------------------------------------------------- ---------',
    },
    '2tw2fosi': {
      'en': 'CANCEL APPOINTMENT',
      'es': 'CANCELAR CITA',
      'pt': 'CANCELA O AGENDAMENTO',
    },
    'yivl1iw0': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // BookingCanceled
  {
    't7q22w0m': {
      'en': 'Booking Canceled',
      'es': 'Reserva cancelada',
      'pt': 'Reserva cancelada',
    },
    '4ypai4gd': {
      'en': 'Sunday, December 30, 2023',
      'es': 'domingo, 30 de diciembre de 2023',
      'pt': 'Domingo, 30 de dezembro de 2023',
    },
    'fler9sil': {
      'en': '11:00--------11:30',
      'es': '11:00--------11:30',
      'pt': '11:00 -------- 11:30',
    },
    'lwtrszo5': {
      'en': 'Ethan Baker',
      'es': 'Ethan panadero',
      'pt': 'Ethan Baker',
    },
    'xgx9wect': {
      'en': 'Haircut and beard',
      'es': 'Corte de pelo y barba',
      'pt': 'Corte de cabelo e barba',
    },
    'k6540dbi': {
      'en': ' - \$ 25,00',
      'es': '- \$ 25,00',
      'pt': '- \$ 25,00',
    },
    'm19b4cbu': {
      'en': 'OK',
      'es': 'DE ACUERDO',
      'pt': 'OK',
    },
    '0kehg0er': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // BookingCancel
  {
    'dpeolzqu': {
      'en': 'Cancellation',
      'es': 'Cancelación',
      'pt': 'Cancelamento',
    },
    'fbyb895c': {
      'en': 'You are about to cancel this appointment.',
      'es': 'Está a punto de cancelar esta cita.',
      'pt': 'Você está prestes a cancelar este compromisso.',
    },
    'k9ymijpd': {
      'en': 'Sunday, December 30, 2023',
      'es': 'domingo, 30 de diciembre de 2023',
      'pt': 'Domingo, 30 de dezembro de 2023',
    },
    'jhq1ibhl': {
      'en': '11:00--------11:30',
      'es': '11:00--------11:30',
      'pt': '11:00 -------- 11:30',
    },
    'whx4by81': {
      'en': 'Ethan Baker',
      'es': 'Ethan panadero',
      'pt': 'Ethan Baker',
    },
    'nl9vbk0s': {
      'en': 'Haircut and beard',
      'es': 'Corte de pelo y barba',
      'pt': 'Corte de cabelo e barba',
    },
    'p3jj8pet': {
      'en': ' - \$ 25,00',
      'es': '- \$ 25,00',
      'pt': '- \$ 25,00',
    },
    '62ku1lpt': {
      'en': 'OK',
      'es': 'DE ACUERDO',
      'pt': 'OK',
    },
    'ylvfbzrg': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // BookingClosed
  {
    '5v5lqiwm': {
      'en': 'Schedule Close',
      'es': 'Horario de cierre',
      'pt': 'Agendar Fechamento',
    },
    'apzdycq2': {
      'en': 'Hour',
      'es': 'Hora',
      'pt': 'Hora',
    },
    'rjnzx583': {
      'en': 'Search...',
      'es': 'Buscar...',
      'pt': 'Procurar...',
    },
    '1n03cnwq': {
      'en': '9:30',
      'es': '9:30',
      'pt': '9h30',
    },
    'dkif8hie': {
      'en': '10:00',
      'es': '10:00',
      'pt': '10:00',
    },
    'wvrtan9z': {
      'en': '10:30',
      'es': '10:30',
      'pt': '10h30',
    },
    'vutv0dze': {
      'en': '11:00',
      'es': '11:00',
      'pt': '11:00',
    },
    'kz6yb6gm': {
      'en': '12:00',
      'es': '12:00',
      'pt': '12:00',
    },
    'au0701cf': {
      'en': '12:30',
      'es': '12:30',
      'pt': '12h30',
    },
    'okdwnyfe': {
      'en': '13:00',
      'es': '13:00',
      'pt': '13:00',
    },
    'kn3205wd': {
      'en': 'Closes from:',
      'es': 'Cierra desde:',
      'pt': 'Fecha de:',
    },
    'oj2hbl66': {
      'en': '00:00',
      'es': '00:00',
      'pt': '00:00',
    },
    '55mzbvx6': {
      'en': '00:00',
      'es': '00:00',
      'pt': '00:00',
    },
    'qfuwbz05': {
      'en': '09:00 - 12:00',
      'es': '09:00 - 12:00',
      'pt': '09h00 - 12h00',
    },
    'rt93pgh5': {
      'en': 'Description',
      'es': 'Descripción',
      'pt': 'Descrição',
    },
    '6s616vyc': {
      'en': 'Repeat this closure',
      'es': 'Repetir este cierre',
      'pt': 'Repita este fechamento',
    },
    '488sbovc': {
      'en': 'Every:',
      'es': 'Cada:',
      'pt': 'Todo:',
    },
    '4amvb1je': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'pt': 'Por favor selecione...',
    },
    'uubssrrd': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'pt': 'Procure um item...',
    },
    'ik6qocx9': {
      'en': 'One week (7 days)',
      'es': 'Una semana (7 días)',
      'pt': 'Uma semana (7 dias)',
    },
    'k7dgwkjt': {
      'en': 'Two weeks (14 days)',
      'es': 'Dos semanas (14 días)',
      'pt': 'Duas semanas (14 dias)',
    },
    'c109od2f': {
      'en': 'Three weeks (21 days)',
      'es': 'Tres semanas (21 días)',
      'pt': 'Três semanas (21 dias)',
    },
    'fbvih642': {
      'en': 'One month (30 days)',
      'es': 'Un mes (30 días)',
      'pt': 'Um mês (30 dias)',
    },
    'cp2dsvsc': {
      'en': 'For: ',
      'es': 'Para:',
      'pt': 'Para:',
    },
    '18scquoe': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'pt': 'Por favor selecione...',
    },
    'i2h5g7rr': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'pt': 'Procure um item...',
    },
    'j0yn6wx3': {
      'en': '1 month',
      'es': '1 mes',
      'pt': '1 mês',
    },
    'rxklpdcs': {
      'en': '3 months',
      'es': '3 meses',
      'pt': '3 meses',
    },
    'rji9svxz': {
      'en': '6 months',
      'es': '6 meses',
      'pt': '6 meses',
    },
    'jnue84fw': {
      'en': '12 Months',
      'es': '12 meses',
      'pt': '12 meses',
    },
    'lwv7yumw': {
      'en': '24 Months',
      'es': '24 meses',
      'pt': '24 meses',
    },
    '5xm2xgks': {
      'en': 'CLOSE SCHEDULE',
      'es': 'CERRAR HORARIO',
      'pt': 'FECHAR PROGRAMAÇÃO',
    },
    '59mudaya': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // ListClients
  {
    'jcquo0da': {
      'en': 'List',
      'es': 'Lista',
      'pt': 'Lista',
    },
    'uf7bmnfy': {
      'en': 'Clients',
      'es': 'Clientela',
      'pt': 'Clientes',
    },
    '9tw8jmdv': {
      'en': 'Search...',
      'es': 'Buscar...',
      'pt': 'Procurar...',
    },
    '4p5zy5un': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // AnalyzeClient
  {
    'w47w4mxh': {
      'en': 'Analyze',
      'es': 'Analizar',
      'pt': 'Analisar',
    },
    'hfhhdwct': {
      'en': 'Ethan Baker',
      'es': 'Ethan panadero',
      'pt': 'Ethan Baker',
    },
    'p28gn67q': {
      'en': '+1 (555) 123-4567',
      'es': '+1 (555) 123-4567',
      'pt': '+1 (555) 123-4567',
    },
    '1b1e80s3': {
      'en': '\$ 25',
      'es': '\$25',
      'pt': 'US\$ 25',
    },
    'ijxfv4v8': {
      'en': 'Average Ticket',
      'es': 'Boleto promedio',
      'pt': 'Ticket Médio',
    },
    'ap9f1j78': {
      'en': '0 hrs',
      'es': '0 horas',
      'pt': '0h',
    },
    '50mzwkha': {
      'en': 'In Operation',
      'es': 'En la operación',
      'pt': 'Em operação',
    },
    '05ll3y9t': {
      'en': 'SERVICES RENDERED',
      'es': 'SERVICIOS PRESTADOS',
      'pt': 'SERVIÇOS PRESTADOS',
    },
    'hs71qngf': {
      'en': 'Swipe to see more',
      'es': 'Desliza para ver más',
      'pt': 'Deslize para ver mais',
    },
    '4v0j2dhp': {
      'en': '10:50',
      'es': '10:50',
      'pt': '10:50',
    },
    '2j90nzso': {
      'en': '-',
      'es': '-',
      'pt': '-',
    },
    'o4l78zfb': {
      'en': '11:40',
      'es': '11:40',
      'pt': '11h40',
    },
    'qnnv53cf': {
      'en': 'Ethan Baker',
      'es': 'Ethan panadero',
      'pt': 'Ethan Baker',
    },
    'oovn77h3': {
      'en': 'Haircut and shave',
      'es': 'Corte de pelo y afeitado',
      'pt': 'Corte de cabelo e barba',
    },
    'yj3l0r6u': {
      'en': '\$ 25,00',
      'es': '\$25,00',
      'pt': '\$ 25,00',
    },
    'kr5u26ib': {
      'en': '10:50',
      'es': '10:50',
      'pt': '10:50',
    },
    '4hisct9x': {
      'en': '-',
      'es': '-',
      'pt': '-',
    },
    'm62skyla': {
      'en': '11:40',
      'es': '11:40',
      'pt': '11h40',
    },
    'pur9fde4': {
      'en': 'Ethan Baker',
      'es': 'Ethan panadero',
      'pt': 'Ethan Baker',
    },
    'v7px442c': {
      'en': 'Haircut and shave',
      'es': 'Corte de pelo y afeitado',
      'pt': 'Corte de cabelo e barba',
    },
    'gg5u2eif': {
      'en': '\$ 25,00',
      'es': '\$25,00',
      'pt': '\$ 25,00',
    },
    'y74pb83m': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // ClientPayments
  {
    'b8vodowc': {
      'en': 'Analyze',
      'es': 'Analizar',
      'pt': 'Analisar',
    },
    'zdft0xow': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // ScheduleHaircut
  {
    'aj1648xr': {
      'en': 'Barber',
      'es': 'Barbero',
      'pt': 'barbeiro',
    },
    'k4dcyd1c': {
      'en': 'Booking',
      'es': 'Registro',
      'pt': 'Cadastro',
    },
    'zbmoulpa': {
      'en': 'Available Times:',
      'es': 'Horarios disponibles:',
      'pt': 'Horários disponíveis:',
    },
    'vrzrk1zp': {
      'en': '10:00',
      'es': '10:00',
      'pt': '10:00',
    },
    'dmf0uyyo': {
      'en': '11:00',
      'es': '11:00',
      'pt': '11:00',
    },
    'oaerd3ce': {
      'en': '12:00',
      'es': '12:00',
      'pt': '12:00',
    },
    '1gmlwe7d': {
      'en': '13:00',
      'es': '13:00',
      'pt': '13:00',
    },
    'pq33x0y4': {
      'en': '14:00',
      'es': '14:00',
      'pt': '14:00',
    },
    'w1vsom8h': {
      'en': '15:00',
      'es': '15:00',
      'pt': '15:00',
    },
    '4nggdcoe': {
      'en': '16:00',
      'es': '16:00',
      'pt': '16:00',
    },
    'zd3t5jw4': {
      'en': '17:00',
      'es': '17:00',
      'pt': '17:00',
    },
    '6mpgfnao': {
      'en': '18:00',
      'es': '18:00',
      'pt': '18:00',
    },
    'q2ah4fg7': {
      'en': '19:00',
      'es': '19:00',
      'pt': '19:00',
    },
    '9hkgiez9': {
      'en': '20:00',
      'es': '20:00',
      'pt': '20:00',
    },
    '5humxirk': {
      'en': '21:00',
      'es': '21:00',
      'pt': '21:00',
    },
    'qoir9i1k': {
      'en': 'FINISH',
      'es': 'FINALIZAR',
      'pt': 'TERMINAR',
    },
    'ndukwjol': {
      'en': 'Portifolio',
      'es': 'Portafolio',
      'pt': 'Portifólio',
    },
    'h0lp5y4n': {
      'en': 'Review',
      'es': 'Revisar',
      'pt': 'Análise',
    },
    '0816yfpp': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // ChooseProfile
  {
    'sbtvz9s5': {
      'en': 'Choose a profile',
      'es': 'Elige un perfil',
      'pt': 'Escolha um perfil',
    },
    '7tkfty9r': {
      'en':
          'You can choose one of two available profiles: Barber or Client. You also have the option to change your selection later to try the other profile. Make your choice below.',
      'es':
          'Puedes elegir uno de los dos perfiles disponibles: Peluquero o Cliente. También tienes la opción de cambiar tu selección más tarde para probar el otro perfil. Haga su elección a continuación.',
      'pt':
          'Você pode escolher um dos dois perfis disponíveis: Barbeiro ou Cliente. Você também tem a opção de alterar sua seleção posteriormente para tentar o outro perfil. Faça sua escolha abaixo.',
    },
    'ibubgj5e': {
      'en': 'BARBER',
      'es': 'BARBERO',
      'pt': 'BARBEIRO',
    },
    'g6bs9p8l': {
      'en': 'CLIENT',
      'es': 'CLIENTE',
      'pt': 'CLIENTE',
    },
    'mgfip7ns': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // Login
  {
    'z3fiqyn1': {
      'en': 'LOGIN',
      'es': 'ACCESO',
      'pt': 'CONECTE-SE',
    },
    'ckpgmm91': {
      'en': 'Welcome Back 👋',
      'es': 'Bienvenido de nuevo 👋',
      'pt': 'Bem vindo de volta 👋',
    },
    'x6v9h00t': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'pt': 'E-mail',
    },
    '0vlwy4h2': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'kgwhu3tx': {
      'en': 'demouser@gmail.com',
      'es': 'demouser@gmail.com',
      'pt': 'demouser@gmail.com',
    },
    'yaux0c5c': {
      'en': 'Password',
      'es': 'Contraseña',
      'pt': 'Senha',
    },
    'ej9xut1m': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'q1g1g3yu': {
      'en': '123456',
      'es': '123456',
      'pt': '123456',
    },
    '785w3dz1': {
      'en': 'Login',
      'es': 'Acceso',
      'pt': 'Conecte-se',
    },
    'czpijr5b': {
      'en': 'Continue with Google',
      'es': 'Acceso',
      'pt': 'Conecte-se',
    },
    'v6p9dwg1': {
      'en': 'Forgot password?',
      'es': '¿Has olvidado tu contraseña?',
      'pt': 'Esqueceu sua senha?',
    },
    'qudidrm4': {
      'en': 'OR',
      'es': 'O',
      'pt': 'OU',
    },
    'bt95p9kv': {
      'en': 'Don\'t  have an account?',
      'es': '¿No tienes una cuenta?',
      'pt': 'Não tem uma conta?',
    },
    '13xlcv0h': {
      'en': 'SIGN UP',
      'es': 'INSCRIBIRSE',
      'pt': 'INSCREVER-SE',
    },
    'nh90eps4': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // ReportBugClient
  {
    'plhqavn6': {
      'en': 'Share',
      'es': 'Compartir',
      'pt': 'Compartilhar',
    },
    'ydlc2rw5': {
      'en': 'App Failure',
      'es': 'Fallo de la aplicación',
      'pt': 'Falha no aplicativo',
    },
    'zufysl52': {
      'en':
          'Please inform our team about any language or technical issues you encounter in this app:',
      'es':
          'Informe a nuestro equipo sobre cualquier problema técnico o de idioma que encuentre en esta aplicación:',
      'pt':
          'Informe nossa equipe sobre quaisquer problemas técnicos ou de idioma que você encontrar neste aplicativo:',
    },
    'jjdhx40v': {
      'en': 'Technical description...',
      'es': 'Descripción técnica...',
      'pt': 'Descrição técnica...',
    },
    'w2vh0fs3': {
      'en':
          'OBS: Your email, name, and establishment information will be automatically sent to Barber Select.',
      'es':
          'OBS: Su correo electrónico, nombre e información del establecimiento se enviarán automáticamente a Barber Select.',
      'pt':
          'OBS: Seu e-mail, nome e informações do estabelecimento serão enviados automaticamente para o Barber Select.',
    },
    '18i5vpla': {
      'en': 'SEND',
      'es': 'ENVIAR',
      'pt': 'ENVIAR',
    },
    'fsjwch20': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // rateAppClient
  {
    '660ss5aj': {
      'en': 'Evaluate how your experience has been:',
      'es': 'Valora cómo ha sido tu experiencia:',
      'pt': 'Avalie como tem sido sua experiência:',
    },
    'ae9c5q4p': {
      'en': 'Select the stars based on what you would like to rate us.',
      'es': 'Selecciona las estrellas según lo que te gustaría calificarnos.',
      'pt':
          'Selecione as estrelas com base no que você gostaria de nos avaliar.',
    },
    'wocxx9rp': {
      'en': 'What a pity, we\'re sorry, what could we improve?',
      'es': 'Que lástima, lo sentimos, ¿qué podríamos mejorar?',
      'pt': 'Que pena, desculpe, o que poderíamos melhorar?',
    },
    'v0fdbzay': {
      'en': 'Write here...',
      'es': 'Escribe aquí...',
      'pt': 'Escreva aqui...',
    },
    'd4hrokbf': {
      'en': 'RATE THE APP',
      'es': 'CALIFICA LA APLICACIÓN',
      'pt': 'AVALIE O APLICATIVO',
    },
    'v4m8esqn': {
      'en': 'Now not',
      'es': 'Ahora no',
      'pt': 'Agora não',
    },
    'ite6wwf6': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // rateAppClientPro
  {
    '227stp0x': {
      'en': 'Evaluate how your experience has been:',
      'es': 'Valora cómo ha sido tu experiencia:',
      'pt': 'Avalie como tem sido sua experiência:',
    },
    '4jcols7a': {
      'en': 'Select the stars based on what you would like to rate us.',
      'es': 'Selecciona las estrellas según lo que te gustaría calificarnos.',
      'pt':
          'Selecione as estrelas com base no que você gostaria de nos avaliar.',
    },
    'ikifqmb8': {
      'en': 'What a pity, we\'re sorry, what could we improve?',
      'es': 'Que lástima, lo sentimos, ¿qué podríamos mejorar?',
      'pt': 'Que pena, desculpe, o que poderíamos melhorar?',
    },
    'cjbh53ib': {
      'en': 'Write here...',
      'es': 'Escribe aquí...',
      'pt': 'Escreva aqui...',
    },
    'd0iw3lpo': {
      'en': 'RATE THE APP',
      'es': 'CALIFICA LA APLICACIÓN',
      'pt': 'AVALIE O APLICATIVO',
    },
    '9zzufbdp': {
      'en': 'Now not',
      'es': 'Ahora no',
      'pt': 'Agora não',
    },
    'w7r9z2ff': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // researchMapProf
  {
    'giiw9y3b': {
      'en': 'Search for barbers, services...',
      'es': '',
      'pt': '',
    },
    '58iyzsqm': {
      'en': 'Nearby Barbers',
      'es': '',
      'pt': '',
    },
    'v8j1fhxh': {
      'en': 'Mike\'s Barbershop',
      'es': '',
      'pt': '',
    },
    'k5ak6ue4': {
      'en': '4.8',
      'es': '',
      'pt': '',
    },
    '5nxwfxye': {
      'en': '(127 reviews)',
      'es': '',
      'pt': '',
    },
    '7xwwseax': {
      'en': 'Haircut • Beard Trim • Shave',
      'es': '',
      'pt': '',
    },
    'f39eg39e': {
      'en': '0.3 miles away',
      'es': '',
      'pt': '',
    },
    'ai6l03fn': {
      'en': 'From \$25',
      'es': '',
      'pt': '',
    },
    'l5yzxz2i': {
      'en': 'Elite Cuts Studio',
      'es': '',
      'pt': '',
    },
    'r905a3ry': {
      'en': '4.9',
      'es': '',
      'pt': '',
    },
    'tejeqba4': {
      'en': '(89 reviews)',
      'es': '',
      'pt': '',
    },
    '9l97z3at': {
      'en': 'Premium Cut • Styling • Wash',
      'es': '',
      'pt': '',
    },
    'y6ozcsd6': {
      'en': '0.5 miles away',
      'es': '',
      'pt': '',
    },
    't69w7h1k': {
      'en': 'From \$35',
      'es': '',
      'pt': '',
    },
    '7w7kawxz': {
      'en': 'Classic Barber Co.',
      'es': '',
      'pt': '',
    },
    'ctzu9elv': {
      'en': '4.7',
      'es': '',
      'pt': '',
    },
    'mti6mhhz': {
      'en': '(203 reviews)',
      'es': '',
      'pt': '',
    },
    '3564t90s': {
      'en': 'Traditional Cut • Hot Towel',
      'es': '',
      'pt': '',
    },
    'ecdvfpb3': {
      'en': '0.7 miles away',
      'es': '',
      'pt': '',
    },
    '3keqyaof': {
      'en': 'From \$30',
      'es': '',
      'pt': '',
    },
    '0abs3nhc': {
      'en': 'Urban Edge Salon',
      'es': '',
      'pt': '',
    },
    '5y0cm7qs': {
      'en': '4.6',
      'es': '',
      'pt': '',
    },
    'uk7p8hn1': {
      'en': '(156 reviews)',
      'es': '',
      'pt': '',
    },
    '6xaui6ky': {
      'en': 'Modern Cut • Color • Styling',
      'es': '',
      'pt': '',
    },
    '0yn4kujt': {
      'en': '0.9 miles away',
      'es': '',
      'pt': '',
    },
    '4cfstax8': {
      'en': 'From \$40',
      'es': '',
      'pt': '',
    },
  },
  // singUpContinue
  {
    'b990jtlx': {
      'en': 'ALMOST THERE!',
      'es': 'INSCRIBIRSE',
      'pt': 'INSCREVER-SE',
    },
    '57xx0a7s': {
      'en': 'Fullname',
      'es': 'Correo electrónico',
      'pt': 'E-mail',
    },
    'al50ixhf': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'yeywbgnz': {
      'en': 'Phone number',
      'es': 'Número de teléfono',
      'pt': 'Número de telefone',
    },
    'ygijylas': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'mefq0yus': {
      'en': 'Next',
      'es': 'Crea uno',
      'pt': 'Crie um',
    },
    'shkrzspz': {
      'en': 'OR',
      'es': 'O',
      'pt': 'OU',
    },
    'ndbumn41': {
      'en': 'All ready have an account?',
      'es': '¿Todo listo tienes una cuenta?',
      'pt': 'Tudo pronto, tem uma conta?',
    },
    'byzi4t0v': {
      'en': 'LOG IN',
      'es': 'ACCESO',
      'pt': 'CONECTE-SE',
    },
    'mi7hucqg': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // HomeProCopy
  {
    'wy8ub0fd': {
      'en': 'Hello, ',
      'es': 'Hola,',
      'pt': 'Olá,',
    },
    'r1ppaxtf': {
      'en': 'You are in your schedule',
      'es': 'estas en tu agenda',
      'pt': 'Você está na sua agenda',
    },
    'doen9wnq': {
      'en': ' - ',
      'es': '-',
      'pt': '-',
    },
    'bx70msa4': {
      'en': 'Today',
      'es': 'Hoy',
      'pt': 'Hoje',
    },
    'qamop5n9': {
      'en': '8',
      'es': '8',
      'pt': '8',
    },
    'r0qvapsd': {
      'en': 'This Week',
      'es': 'Esta semana',
      'pt': 'Essa semana',
    },
    'ptk654gc': {
      'en': '6',
      'es': '6',
      'pt': '6',
    },
    '9s0ex3yl': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // checkingUserRole
  {
    'r4a3k1l2': {
      'en': 'Home',
      'es': '',
      'pt': '',
    },
  },
  // BarberServices
  {
    'h7xhsx91': {
      'en': 'Barber Services',
      'es': '',
      'pt': '',
    },
    'it6g46pz': {
      'en': 'Beard Trim & Shape',
      'es': '',
      'pt': '',
    },
    'qgd9sose': {
      'en': 'Professional beard trimming and shaping',
      'es': '',
      'pt': '',
    },
    'z4uznsd3': {
      'en': '30 minutes',
      'es': '',
      'pt': '',
    },
    '3rzwafkn': {
      'en': '\$18',
      'es': '',
      'pt': '',
    },
    'bsbq2qmd': {
      'en': 'Book',
      'es': '',
      'pt': '',
    },
    's7tluu5u': {
      'en': 'Hot Towel Shave',
      'es': '',
      'pt': '',
    },
    'db10whl7': {
      'en': 'Luxurious straight razor shave with hot towel',
      'es': '',
      'pt': '',
    },
    'p7p1gkcg': {
      'en': '60 minutes',
      'es': '',
      'pt': '',
    },
    'z775fxv7': {
      'en': '\$35',
      'es': '',
      'pt': '',
    },
    '4we19py9': {
      'en': 'Book',
      'es': '',
      'pt': '',
    },
    'cr2wm9xl': {
      'en': 'Hair Wash & Style',
      'es': '',
      'pt': '',
    },
    'pod6buph': {
      'en': 'Deep cleansing wash with premium styling',
      'es': '',
      'pt': '',
    },
    'wbee9nrl': {
      'en': '40 minutes',
      'es': '',
      'pt': '',
    },
    'b3pzh1nd': {
      'en': '\$22',
      'es': '',
      'pt': '',
    },
    '0gwhelwa': {
      'en': 'Book',
      'es': '',
      'pt': '',
    },
    '0jun5t5x': {
      'en': 'Mustache Trim',
      'es': '',
      'pt': '',
    },
    'bhultnu8': {
      'en': 'Precision mustache trimming and styling',
      'es': '',
      'pt': '',
    },
    '06hsbzff': {
      'en': '20 minutes',
      'es': '',
      'pt': '',
    },
    'afvivlic': {
      'en': '\$12',
      'es': '',
      'pt': '',
    },
    'tkgprcez': {
      'en': 'Book',
      'es': '',
      'pt': '',
    },
    'rj6s87zv': {
      'en': 'Premium Package',
      'es': '',
      'pt': '',
    },
    'xdwf8e4h': {
      'en': 'POPULAR',
      'es': '',
      'pt': '',
    },
    'io9yv8ak': {
      'en': 'Haircut + Beard trim + Hot towel treatment',
      'es': '',
      'pt': '',
    },
    '7jjhh5pp': {
      'en': '90 minutes',
      'es': '',
      'pt': '',
    },
    'ywjp1eib': {
      'en': 'Was \$55',
      'es': '',
      'pt': '',
    },
    '81flyhrb': {
      'en': '\$45',
      'es': '',
      'pt': '',
    },
    'r4t5tzxo': {
      'en': 'Book',
      'es': '',
      'pt': '',
    },
  },
  // SetAvatar
  {
    'einfxepw': {
      'en': 'Complete Your Profile',
      'es': '',
      'pt': '',
    },
    'f4wox8tx': {
      'en': 'Add a profile picture to help others recognize you',
      'es': '',
      'pt': '',
    },
    'wniyjrxu': {
      'en': 'Take Photo',
      'es': '',
      'pt': '',
    },
    'dcnq9k7e': {
      'en': 'Continue',
      'es': '',
      'pt': '',
    },
  },
  // HomeCopy
  {
    'ev0aot3x': {
      'en': '5',
      'es': '5',
      'pt': '5',
    },
    'xka3domb': {
      'en': 'Featured Services',
      'es': 'Nuestras carteras',
      'pt': 'Nossos portfólios',
    },
    'pidrc802': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // homepagecli
  {
    'd65m17s4': {
      'en': 'Find Your Perfect',
      'es': '',
      'pt': '',
    },
    '9k7j8rwl': {
      'en': 'Barber',
      'es': '',
      'pt': '',
    },
    'qi97095o': {
      'en': 'Book premium haircuts & grooming services',
      'es': '',
      'pt': '',
    },
    '5cbae8b4': {
      'en': 'Search barbers near you...',
      'es': '',
      'pt': '',
    },
    'a453yvof': {
      'en': 'Popular Services',
      'es': '',
      'pt': '',
    },
    'fxv9jdho': {
      'en': 'View All',
      'es': '',
      'pt': '',
    },
    'qk4lyjka': {
      'en': 'Haircut',
      'es': '',
      'pt': '',
    },
    'b1sl8vee': {
      'en': 'From \$25',
      'es': '',
      'pt': '',
    },
    'kl5ckyug': {
      'en': 'Beard Trim',
      'es': '',
      'pt': '',
    },
    '71e62wkv': {
      'en': 'From \$15',
      'es': '',
      'pt': '',
    },
    'kfh64ydo': {
      'en': 'Hot Towel',
      'es': '',
      'pt': '',
    },
    'k8ewlczo': {
      'en': 'From \$10',
      'es': '',
      'pt': '',
    },
    'vkoqzdqj': {
      'en': 'Full Service',
      'es': '',
      'pt': '',
    },
    'ebfhgyu8': {
      'en': 'From \$45',
      'es': '',
      'pt': '',
    },
    'gbkyh7r0': {
      'en': 'Top Rated Barbers',
      'es': '',
      'pt': '',
    },
    'qtslnhxe': {
      'en': 'See All',
      'es': '',
      'pt': '',
    },
    'meaf7bg0': {
      'en': 'Marcus Johnson',
      'es': '',
      'pt': '',
    },
    'qvrq2imj': {
      'en': 'Elite Cuts Barbershop',
      'es': '',
      'pt': '',
    },
    '77nm1cgu': {
      'en': '4.9',
      'es': '',
      'pt': '',
    },
    'yys9wpp0': {
      'en': '(127 reviews)',
      'es': '',
      'pt': '',
    },
    '4do0s2ig': {
      'en': '0.8 miles away',
      'es': '',
      'pt': '',
    },
    '0nf056lk': {
      'en': 'Book Now',
      'es': '',
      'pt': '',
    },
    'zqgh97hu': {
      'en': 'David Rodriguez',
      'es': '',
      'pt': '',
    },
    'plei6ynf': {
      'en': 'Classic Style Barbershop',
      'es': '',
      'pt': '',
    },
    'v6eok6i9': {
      'en': '4.8',
      'es': '',
      'pt': '',
    },
    'b0t2xmkg': {
      'en': '(89 reviews)',
      'es': '',
      'pt': '',
    },
    'jds7om8b': {
      'en': '1.2 miles away',
      'es': '',
      'pt': '',
    },
    'kj7cp9af': {
      'en': 'Book Now',
      'es': '',
      'pt': '',
    },
    'mdvmwlyt': {
      'en': 'Anthony Williams',
      'es': '',
      'pt': '',
    },
    'pz3h4mdl': {
      'en': 'Modern Cuts Studio',
      'es': '',
      'pt': '',
    },
    'yrm6b2d7': {
      'en': '4.7',
      'es': '',
      'pt': '',
    },
    'oc32fzbm': {
      'en': '(156 reviews)',
      'es': '',
      'pt': '',
    },
    'aqtr86xq': {
      'en': '2.1 miles away',
      'es': '',
      'pt': '',
    },
    'ajv20hqu': {
      'en': 'Book Now',
      'es': '',
      'pt': '',
    },
    'jevjr5nl': {
      'en': 'Good morning',
      'es': '',
      'pt': '',
    },
    'tk0x27bl': {
      'en': 'Alex Thompson',
      'es': '',
      'pt': '',
    },
  },
  // Templates
  {
    '6vhm7r98': {
      'en': '20+ Templates',
      'es': 'Más de 20 plantillas',
      'pt': 'Mais de 20 modelos',
    },
  },
  // comment
  {
    '3m6gy614': {
      'en': 'I\'m so glad I have a new beard, I recommend it to everyone!',
      'es':
          'Estoy muy contenta de tener una barba nueva. ¡Se lo recomiendo a todo el mundo!',
      'pt': 'Estou tão feliz por ter uma barba nova, recomendo a todos!',
    },
  },
  // ConfMessage
  {
    'bgsp793p': {
      'en': 'Registration Completed!',
      'es': '¡Registro completado!',
      'pt': 'Cadastro concluído!',
    },
    'dpvobod7': {
      'en': '\nLeonardo, ',
      'es': 'leonardo,',
      'pt': 'leonardo,',
    },
    'ora60gio': {
      'en': 'You have an appointment scheduled with ',
      'es': 'Tienes una cita programada con',
      'pt': 'Você tem um compromisso agendado com',
    },
    'hh13ilwt': {
      'en': 'Matthew ',
      'es': 'Mateo',
      'pt': 'Mateus',
    },
    'bkyo1okv': {
      'en': 'on ',
      'es': 'en',
      'pt': 'sobre',
    },
    '2v9yd459': {
      'en': 'January 30th at 2:00 PM ',
      'es': '30 de enero a las 14:00',
      'pt': '30 de janeiro às 14h',
    },
    'vuv6lgv2': {
      'en': 'for a hair cutting service.',
      'es': 'para un servicio de corte de cabello.',
      'pt': 'para um serviço de corte de cabelo.',
    },
    'yjgu8ite': {
      'en':
          '\n\nThank you for your choice! We will send you a reminder 1 hour before the appointment.',
      'es':
          '¡Gracias por tu elección! Le enviaremos un recordatorio 1 hora antes de la cita.',
      'pt':
          'Obrigado por sua escolha! Enviaremos um lembrete 1 hora antes da consulta.',
    },
  },
  // EnableService
  {
    'bsxt57ek': {
      'en':
          'Services not enabled in your chair, activate them to make new appointments.',
      'es':
          'Servicios no habilitados en tu silla, actívalos para concertar nuevas citas.',
      'pt':
          'Serviços não habilitados em sua cadeira, ative-os para realizar novos agendamentos.',
    },
  },
  // NeAppointment
  {
    '4nrdwq8d': {
      'en': 'New Appointment',
      'es': 'Nueva cita',
      'pt': 'Novo compromisso',
    },
  },
  // CopyAreaTranfer
  {
    'qz2mafch': {
      'en': 'Copied to Clipboard',
      'es': 'Copiado al portapapeles',
      'pt': 'Copiado para a área de transferência',
    },
  },
  // EditClient
  {
    'p8emecj6': {
      'en': 'Edit Cliet',
      'es': 'Editar cliente',
      'pt': 'Editar cliente',
    },
    'vtds6g9s': {
      'en': 'Edit customer data if necessary.',
      'es': 'Edite los datos del cliente si es necesario.',
      'pt': 'Edite os dados do cliente, se necessário.',
    },
    'anstoutn': {
      'en': 'Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    '7vqnk8id': {
      'en': 'Jose Prado',
      'es': 'José Prado',
      'pt': 'José Prado',
    },
    '4ysdools': {
      'en': 'Phone Number',
      'es': 'Número de teléfono',
      'pt': 'Número de telefone',
    },
    'flnu68sj': {
      'en': '+55 98564-2563',
      'es': '+55 98564-2563',
      'pt': '+55 98564-2563',
    },
    'kzr0rj00': {
      'en': 'Birthday Month',
      'es': 'Mes de cumpleaños',
      'pt': 'Mês do aniversário',
    },
    'r3d3z4pm': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'pt': 'Procure um item...',
    },
    'us2vydwx': {
      'en': 'January',
      'es': 'Enero',
      'pt': 'Janeiro',
    },
    'v018rsze': {
      'en': 'February',
      'es': 'Febrero',
      'pt': 'Fevereiro',
    },
    '2o6tt11h': {
      'en': 'March',
      'es': 'Marzo',
      'pt': 'Marchar',
    },
    'ctrzm0i0': {
      'en': 'April',
      'es': 'Abril',
      'pt': 'abril',
    },
    '1xi5q8qa': {
      'en': 'May',
      'es': 'Puede',
      'pt': 'Poderia',
    },
    'f8zj6ny5': {
      'en': 'June',
      'es': 'Junio',
      'pt': 'Junho',
    },
    'zg3s0v7c': {
      'en': 'July',
      'es': 'Julio',
      'pt': 'Julho',
    },
    'f6c4ey2k': {
      'en': 'August',
      'es': 'Agosto',
      'pt': 'Agosto',
    },
    'fovw6j4j': {
      'en': 'September',
      'es': 'Septiembre',
      'pt': 'Setembro',
    },
    'o478g0l2': {
      'en': 'October',
      'es': 'Octubre',
      'pt': 'Outubro',
    },
    '1fdhfd7i': {
      'en': 'November',
      'es': 'Noviembre',
      'pt': 'novembro',
    },
    'cj8bqymq': {
      'en': 'December',
      'es': 'Diciembre',
      'pt': 'dezembro',
    },
    '80p94vke': {
      'en': 'Observation',
      'es': 'Observación',
      'pt': 'Observação',
    },
    '73e3dqs0': {
      'en': 'Value',
      'es': 'Valor',
      'pt': 'Valor',
    },
    '51yte7hv': {
      'en': '\$ 25.00',
      'es': '\$25.00',
      'pt': 'US\$ 25,00',
    },
    'gea1y0b8': {
      'en': 'Adress Client',
      'es': 'Dirección Cliente',
      'pt': 'Endereço Cliente',
    },
    'x0drevy9': {
      'en': 'Number',
      'es': 'Número',
      'pt': 'Número',
    },
    'mmvfljsd': {
      'en': '07',
      'es': '07',
      'pt': '07',
    },
    '1h9ymaaa': {
      'en': 'Extra Information',
      'es': 'Información extra',
      'pt': 'Informação extra',
    },
    'hee8eynr': {
      'en': 'Neighborhood',
      'es': 'Vecindario',
      'pt': 'Vizinhança',
    },
    'w7zi8irb': {
      'en': 'Nation 51',
      'es': 'Nación 51',
      'pt': 'Nação 51',
    },
    '806i79bg': {
      'en': 'City',
      'es': 'Ciudad',
      'pt': 'Cidade',
    },
    'ex50yzjh': {
      'en': 'Belivery City',
      'es': 'ciudad de belivery',
      'pt': 'Cidade de Belivery',
    },
    'nquotbss': {
      'en': 'State',
      'es': 'Estado',
      'pt': 'Estado',
    },
    '7hjhmjsc': {
      'en': 'Yggdrasil',
      'es': 'Yggdrasil',
      'pt': 'Yggdrasil',
    },
    '455yg13n': {
      'en': 'Back',
      'es': 'Atrás',
      'pt': 'Voltar',
    },
    '5fn32q6w': {
      'en': 'OK',
      'es': 'DE ACUERDO',
      'pt': 'OK',
    },
  },
  // calendarSelect
  {
    'qtl5af7c': {
      'en': 'OK',
      'es': 'DE ACUERDO',
      'pt': 'OK',
    },
  },
  // EditDate
  {
    'b6i5slke': {
      'en': 'Edit Date',
      'es': 'Fecha de edición',
      'pt': 'Editar data',
    },
    'nubgbovu': {
      'en': 'Edit the date if necessary',
      'es': 'Edite la fecha si es necesario',
      'pt': 'Edite a data se necessário',
    },
    '6ef0jpwr': {
      'en': 'Hour',
      'es': 'Hora',
      'pt': 'Hora',
    },
    'h3ghzck4': {
      'en': 'Search...',
      'es': 'Buscar...',
      'pt': 'Procurar...',
    },
    'g8jsvgjb': {
      'en': '9:30',
      'es': '9:30',
      'pt': '9h30',
    },
    '74tjwo8a': {
      'en': '10:00',
      'es': '10:00',
      'pt': '10:00',
    },
    'kmvddq92': {
      'en': '10:30',
      'es': '10:30',
      'pt': '10h30',
    },
    '3uc80bpv': {
      'en': '11:00',
      'es': '11:00',
      'pt': '11:00',
    },
    'dsd89ds9': {
      'en': '12:00',
      'es': '12:00',
      'pt': '12:00',
    },
    'av7mv7xr': {
      'en': '12:30',
      'es': '12:30',
      'pt': '12h30',
    },
    'wgg10j5h': {
      'en': '13:00',
      'es': '13:00',
      'pt': '13:00',
    },
    '5gof55fr': {
      'en': 'Free',
      'es': 'Gratis',
      'pt': 'Livre',
    },
    'xgd7qf8b': {
      'en': 'Back',
      'es': 'Atrás',
      'pt': 'Voltar',
    },
    'tbv9picz': {
      'en': 'OK',
      'es': 'DE ACUERDO',
      'pt': 'OK',
    },
  },
  // FreeMode
  {
    'nrgnet0b': {
      'en': 'Free Mode',
      'es': 'Modo libre',
      'pt': 'Modo livre',
    },
    '16u0wnvx': {
      'en': 'Appointment with available time',
      'es': 'Cita con tiempo disponible',
      'pt': 'Agendamento com horário disponível',
    },
    '15m1ijfc': {
      'en': 'Hour',
      'es': 'Hora',
      'pt': 'Hora',
    },
    'gzqcdg5n': {
      'en': 'Search...',
      'es': 'Buscar...',
      'pt': 'Procurar...',
    },
    'fnco5075': {
      'en': '9:30',
      'es': '9:30',
      'pt': '9h30',
    },
    '1gwccyju': {
      'en': '10:00',
      'es': '10:00',
      'pt': '10:00',
    },
    'oehhrdwn': {
      'en': '10:30',
      'es': '10:30',
      'pt': '10h30',
    },
    'l8t3hlvb': {
      'en': '11:00',
      'es': '11:00',
      'pt': '11:00',
    },
    '1nkdvs9w': {
      'en': '12:00',
      'es': '12:00',
      'pt': '12:00',
    },
    'w4un9ot8': {
      'en': '12:30',
      'es': '12:30',
      'pt': '12h30',
    },
    'cuvo0ten': {
      'en': '13:00',
      'es': '13:00',
      'pt': '13:00',
    },
    'ixn1s4t2': {
      'en': 'Service from:',
      'es': 'Servicio de:',
      'pt': 'Serviço de:',
    },
    'wflkiyfk': {
      'en': '09:00',
      'es': '09:00',
      'pt': '09:00',
    },
    'n9wkiax5': {
      'en': '-',
      'es': '-',
      'pt': '-',
    },
    'qqq84rdg': {
      'en': ' 10:00',
      'es': '10:00',
      'pt': '10:00',
    },
    'tf6ms0sz': {
      'en': 'Move the slider to select the start and end of the service.',
      'es':
          'Mueva el control deslizante para seleccionar el inicio y el final del servicio.',
      'pt':
          'Mova o controle deslizante para selecionar o início e o fim do serviço.',
    },
    'yrj0vhsn': {
      'en': 'Back',
      'es': 'Atrás',
      'pt': 'Voltar',
    },
    'yu6lc1pu': {
      'en': 'OK',
      'es': 'DE ACUERDO',
      'pt': 'OK',
    },
  },
  // EditClient02
  {
    'jvjw61g0': {
      'en': 'Edit Cliet',
      'es': 'Editar cliente',
      'pt': 'Editar cliente',
    },
    '50nowj3a': {
      'en': 'Edit the name or phone number if necessary',
      'es': 'Edite el nombre o el número de teléfono si es necesario',
      'pt': 'Edite o nome ou número de telefone, se necessário',
    },
    'i89zehh7': {
      'en': 'Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    'fqtds9eq': {
      'en': 'Ethan Baker',
      'es': 'Ethan panadero',
      'pt': 'Ethan Baker',
    },
    'mhtz2s3o': {
      'en': 'Phone Number',
      'es': 'Número de teléfono',
      'pt': 'Número de telefone',
    },
    'j3qlpjlt': {
      'en': '+55 98564-2563',
      'es': '+55 98564-2563',
      'pt': '+55 98564-2563',
    },
    'igiyd2lp': {
      'en': 'Back',
      'es': 'Atrás',
      'pt': 'Voltar',
    },
    'uqr2sh8i': {
      'en': 'OK',
      'es': 'DE ACUERDO',
      'pt': 'OK',
    },
  },
  // EditTotal
  {
    'nmlnyh6e': {
      'en': 'Edit Total',
      'es': 'Editar total',
      'pt': 'Editar total',
    },
    '4yo0tak6': {
      'en': 'Adjust the amount/payment if needed',
      'es': 'Ajustar el monto/pago si es necesario',
      'pt': 'Ajuste o valor/pagamento se necessário',
    },
    'urwibvjk': {
      'en': '\$ Cash',
      'es': '\$ Efectivo',
      'pt': '\$ dinheiro',
    },
    '6918g96j': {
      'en': 'Payment',
      'es': 'Pago',
      'pt': 'Pagamento',
    },
    '0tmepbbf': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'pt': 'Procure um item...',
    },
    'npm2f7pe': {
      'en': 'Credit Card',
      'es': 'Tarjeta de crédito',
      'pt': 'Cartão de crédito',
    },
    'r9w66iz2': {
      'en': 'Debit Card',
      'es': 'Tarjeta de débito',
      'pt': 'Cartão de débito',
    },
    'om69ck6a': {
      'en': 'Cash',
      'es': 'Dinero',
      'pt': 'Dinheiro',
    },
    '7o6w9wk4': {
      'en': 'Unpaid',
      'es': 'No pagado',
      'pt': 'Não pago',
    },
    'spas2k7q': {
      'en': 'Back',
      'es': 'Atrás',
      'pt': 'Voltar',
    },
    'j3mgdh0b': {
      'en': 'OK',
      'es': 'DE ACUERDO',
      'pt': 'OK',
    },
  },
  // EditServiceBox
  {
    'twd1glxo': {
      'en': 'Edit Service',
      'es': 'Editar servicio',
      'pt': 'Editar serviço',
    },
    'vhmvh7l6': {
      'en': 'Adjust the service if needed',
      'es': 'Ajusta el servicio si es necesario',
      'pt': 'Ajuste o serviço se necessário',
    },
    '24pbfruv': {
      'en': 'Swipe to see more',
      'es': 'Desliza para ver más',
      'pt': 'Deslize para ver mais',
    },
    'kitempgi': {
      'en': 'Back',
      'es': 'Atrás',
      'pt': 'Voltar',
    },
    'eireawi4': {
      'en': 'OK',
      'es': 'DE ACUERDO',
      'pt': 'OK',
    },
  },
  // quickReminder
  {
    'j2dnknql': {
      'en': 'Quick Reminder',
      'es': 'Recordatorio rápido',
      'pt': 'Lembrete rápido',
    },
  },
  // EditProduct
  {
    'dwc1t3lc': {
      'en': 'Edit Product',
      'es': 'Editar producto',
      'pt': 'Editar produto',
    },
    '6dy734cw': {
      'en': 'Edit the product if necessary',
      'es': 'Edite el producto si es necesario',
      'pt': 'Edite o produto se necessário',
    },
    '9spou3zj': {
      'en': 'Product',
      'es': 'Producto',
      'pt': 'produtos',
    },
    'ama2w3oh': {
      'en': 'Brush',
      'es': 'Cepillar',
      'pt': 'Escovar',
    },
    'lveojnig': {
      'en': 'Price',
      'es': 'Precio',
      'pt': 'Preço',
    },
    'agubzdm8': {
      'en': '\$ 25,00',
      'es': '\$25,00',
      'pt': '\$ 25,00',
    },
    '226p0jz4': {
      'en': 'Back',
      'es': 'Atrás',
      'pt': 'Voltar',
    },
    '9gp9gzvg': {
      'en': 'OK',
      'es': 'DE ACUERDO',
      'pt': 'OK',
    },
  },
  // CardTimeLine
  {
    'cgqzywt2': {
      'en': '10:50',
      'es': '10:50',
      'pt': '10:50',
    },
    'tl7d2dq6': {
      'en': '-',
      'es': '-',
      'pt': '-',
    },
    'y7gcnyvj': {
      'en': '11:40',
      'es': '11:40',
      'pt': '11h40',
    },
    '1qdj8b3s': {
      'en': 'Ethan Baker',
      'es': 'Ethan panadero',
      'pt': 'Ethan Baker',
    },
    'fz1btef0': {
      'en': 'Haircut and shave',
      'es': 'Corte de pelo y afeitado',
      'pt': 'Corte de cabelo e barba',
    },
    'mj8cjrbc': {
      'en': '\$ 55,00',
      'es': '\$55,00',
      'pt': '\$ 55,00',
    },
  },
  // cardClient
  {
    '47p97pud': {
      'en': '923191-98875',
      'es': '923191-98875',
      'pt': '923191-98875',
    },
  },
  // Payments
  {
    'qya7a2fi': {
      'en': 'See more',
      'es': 'Ver más',
      'pt': 'Ver mais',
    },
  },
  // PaymentForms
  {
    'ezlkiafo': {
      'en': '-',
      'es': '-',
      'pt': '-',
    },
  },
  // SideBarBarber
  {
    'oschf6sg': {
      'en': 'My Link',
      'es': 'Mi enlace',
      'pt': 'Meu link',
    },
    'gpayfrm0': {
      'en': 'Client',
      'es': 'Cliente',
      'pt': 'Cliente',
    },
    'xqw6yypc': {
      'en': 'Services',
      'es': 'Cliente',
      'pt': 'Cliente',
    },
    'e49unssm': {
      'en': 'Revenue',
      'es': 'Ganancia',
      'pt': 'Receita',
    },
    'g1c8ehd5': {
      'en': 'Report a Bug',
      'es': 'Reportar un error',
      'pt': 'Reportar um erro',
    },
    'ugl5rupx': {
      'en': 'Rate App',
      'es': 'Calificar aplicacion',
      'pt': 'Avaliar aplicativo',
    },
    'lkkwzx31': {
      'en': 'Settings',
      'es': 'Ajustes',
      'pt': 'Configurações',
    },
    '9nbq07sm': {
      'en': 'BARBER',
      'es': 'BARBERO',
      'pt': 'BARBEIRO',
    },
    '17intm8f': {
      'en': 'CLIENT',
      'es': 'CLIENTE',
      'pt': 'CLIENTE',
    },
  },
  // SideBarClient
  {
    'mca9khib': {
      'en': 'Find Barber',
      'es': 'Encontrar Peluquero',
      'pt': 'Encontre barbeiro',
    },
    'ma34hioo': {
      'en': 'Report a Bug',
      'es': 'Reportar un error',
      'pt': 'Reportar um erro',
    },
    'oqiwylcl': {
      'en': 'Rate App',
      'es': 'Calificar aplicacion',
      'pt': 'Avaliar aplicativo',
    },
    '6wgmgipn': {
      'en': 'Logout',
      'es': '',
      'pt': '',
    },
    'lmc0u8xc': {
      'en': 'BARBER',
      'es': 'BARBERO',
      'pt': 'BARBEIRO',
    },
    'xa1gr7gd': {
      'en': 'CLIENT',
      'es': 'CLIENTE',
      'pt': 'CLIENTE',
    },
  },
  // MessageSentClient
  {
    '0rxf9ev2': {
      'en': 'Message Sent',
      'es': 'Mensaje enviado',
      'pt': 'Mensagem enviada',
    },
    'zhwmelf6': {
      'en':
          'Your report on the issue has been successfully submitted. Thank you!',
      'es':
          'Su informe sobre el problema se ha enviado correctamente. ¡Gracias!',
      'pt': 'Seu relatório sobre o problema foi enviado com sucesso. Obrigado!',
    },
  },
  // cardRateProf
  {
    'll1d5h6w': {
      'en': 'Available time:',
      'es': 'Tiempo disponible:',
      'pt': 'Tempo disponível:',
    },
  },
  // toschedule
  {
    'bd7k5nli': {
      'en': 'New Schedule',
      'es': 'Nuevo horario',
      'pt': 'Novo cronograma',
    },
  },
  // Logout
  {
    'mt8ibqpe': {
      'en': 'Are you sure you want to sign out?',
      'es': '¿Estás seguro de que deseas cerrar sesión?',
      'pt': 'Você tem certeza que deseja sair?',
    },
    'ow6usdfq': {
      'en': 'Agree',
      'es': 'Aceptar',
      'pt': 'Concordar',
    },
    'qf9wxuke': {
      'en': 'Cancel',
      'es': '',
      'pt': '',
    },
  },
  // AddServices
  {
    'fylxnlpy': {
      'en': 'Add Your Barbing Services',
      'es': '',
      'pt': '',
    },
    'ax8j7js9': {
      'en': 'Set up the services you offer to attract more clients',
      'es': '',
      'pt': '',
    },
    'iggpz5ec': {
      'en': 'Service Details',
      'es': '',
      'pt': '',
    },
    'f1uvgoqv': {
      'en': 'Select...',
      'es': '',
      'pt': '',
    },
    'pb801o3p': {
      'en': 'Search...',
      'es': '',
      'pt': '',
    },
    '4zqbeasi': {
      'en': 'Option 1',
      'es': '',
      'pt': '',
    },
    'smgfv1hq': {
      'en': 'Option 2',
      'es': '',
      'pt': '',
    },
    'yoh1pgk8': {
      'en': 'Option 3',
      'es': '',
      'pt': '',
    },
    '2dgup86f': {
      'en': 'Price (\$)',
      'es': '',
      'pt': '',
    },
    'conqyjj5': {
      'en': 'Duration (mins)',
      'es': '',
      'pt': '',
    },
    '684d3onv': {
      'en': 'Service description...',
      'es': '',
      'pt': '',
    },
    '0k96uri0': {
      'en': 'Add Service',
      'es': '',
      'pt': '',
    },
    'iw44hifd': {
      'en': 'Pro Tip',
      'es': '',
      'pt': '',
    },
    '35bbn91w': {
      'en':
          'Add detailed descriptions and competitive pricing to attract more clients. Consider offering package deals!',
      'es': '',
      'pt': '',
    },
  },
  // ServiceItemDetails
  {
    'pv6tcep6': {
      'en': 'Classic Haircut',
      'es': '',
      'pt': '',
    },
    '3vm8yunc': {
      'en': 'Traditional men\'s haircut with scissors and clippers',
      'es': '',
      'pt': '',
    },
    'tde3cbg4': {
      'en': '\$25',
      'es': '',
      'pt': '',
    },
    '8xddzi5m': {
      'en': '30 mins',
      'es': '',
      'pt': '',
    },
    'vkuhuivd': {
      'en': 'Beard Trim',
      'es': '',
      'pt': '',
    },
    'pipjwxi2': {
      'en': 'Professional beard shaping and trimming',
      'es': '',
      'pt': '',
    },
    'kia7tg64': {
      'en': '\$15',
      'es': '',
      'pt': '',
    },
    'r3ethexg': {
      'en': '20 mins',
      'es': '',
      'pt': '',
    },
    'gyczqyet': {
      'en': 'Hot Towel Shave',
      'es': '',
      'pt': '',
    },
    'l2xlys0n': {
      'en': 'Luxury straight razor shave with hot towel treatment',
      'es': '',
      'pt': '',
    },
    'w7b1b5yq': {
      'en': '\$35',
      'es': '',
      'pt': '',
    },
    'qsssmyh0': {
      'en': '45 mins',
      'es': '',
      'pt': '',
    },
  },
  // EditService
  {
    'yb9ba0gg': {
      'en': 'Edit Your Barbing Service',
      'es': '',
      'pt': '',
    },
    'ta20dt4v': {
      'en': 'Set up the services you offer to attract more clients',
      'es': '',
      'pt': '',
    },
    'x1pcoeoy': {
      'en': 'Service Details',
      'es': '',
      'pt': '',
    },
    'nzdhpany': {
      'en': 'Select...',
      'es': '',
      'pt': '',
    },
    '8gf7gjfn': {
      'en': 'Search...',
      'es': '',
      'pt': '',
    },
    'y81vz8yt': {
      'en': 'Option 1',
      'es': '',
      'pt': '',
    },
    'gzfmbkvt': {
      'en': 'Option 2',
      'es': '',
      'pt': '',
    },
    'ehkk4k6q': {
      'en': 'Option 3',
      'es': '',
      'pt': '',
    },
    '193s5qxz': {
      'en': 'Price (\$)',
      'es': '',
      'pt': '',
    },
    'uepkx219': {
      'en': 'Duration (mins)',
      'es': '',
      'pt': '',
    },
    'e0uz7zmh': {
      'en': 'Service description...',
      'es': '',
      'pt': '',
    },
    'v1g7k3vx': {
      'en': 'Add Service',
      'es': '',
      'pt': '',
    },
    '99vfckyy': {
      'en': 'Pro Tip',
      'es': '',
      'pt': '',
    },
    '5akptr5m': {
      'en':
          'Add detailed descriptions and competitive pricing to attract more clients. Consider offering package deals!',
      'es': '',
      'pt': '',
    },
  },
  // Miscellaneous
  {
    'vjunut8m': {
      'en': 'Login',
      'es': 'Acceso',
      'pt': 'Conecte-se',
    },
    '65bc6p0t': {
      'en': 'Option 1',
      'es': 'Opción 1',
      'pt': 'Opção 1',
    },
    'wkbqqld4': {
      'en': 'Debit Card',
      'es': 'Tarjeta de débito',
      'pt': 'Cartão de débito',
    },
    'wxfh5bm6': {
      'en': 'Cash',
      'es': 'Dinero',
      'pt': 'Dinheiro',
    },
    'hb6nmxv2': {
      'en': 'Unpaid',
      'es': 'No pagado',
      'pt': 'Não pago',
    },
    'rlo4hem8': {
      'en': 'Payment',
      'es': 'Pago',
      'pt': 'Pagamento',
    },
    'frfp535x': {
      'en': 'Search for an item...',
      'es': 'Buscar...',
      'pt': 'Procurar...',
    },
    '8s7w8rrx': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'diyuutkh': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '7oo30v2m': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '1m21tq05': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'udgj2qt1': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '3vgd20k5': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'io02jo3s': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'radtgnc9': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '04k4jx3q': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'jjpc4ekp': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'jm0jutzk': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '60kg9vsr': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'n7gqiqc0': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '06pvxo7s': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '4jcetv1i': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '17625q46': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'zi8l61t2': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '5w7c5377': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'ymbhixua': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'dl0b1r5y': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'a1rjg3am': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'km38kt3i': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '2lubnavr': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'mjxsheia': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '5afqdwvy': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '1f9vc9jx': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'wc0mcett': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'sgi0qa2c': {
      'en': '',
      'es': '',
      'pt': '',
    },
  },
].reduce((a, b) => a..addAll(b));
