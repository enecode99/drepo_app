import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['en', 'sw'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String enText = '',
    String swText = '',
  }) =>
      [enText, swText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // LanguagePage
  {
    'mzwlrnrn': {
      'en': 'Choose Language (Chagua Lugha)',
      'sw': 'Chagua Lugha (Choose Language)',
    },
    'a8dpqnfm': {
      'en': 'OK',
      'sw': 'SAWA',
    },
    'ud4uewv3': {
      'en': 'Home',
      'sw': '',
    },
  },
  // PhoneVerification
  {
    'uu196jv5': {
      'en': 'Enter a verification code we  sent to your  phone number.',
      'sw':
          'Weka nambari ya kuthibitisha tuliyotuma kwenye nambari yako ya simu.',
    },
    'o8zspyxz': {
      'en': 'Enter a verification code.',
      'sw': 'Weka nambari ya kuthibitisha.',
    },
    '4g3adow0': {
      'en': 'SUBMIT',
      'sw': 'WASILISHA',
    },
    'h6hfd9hs': {
      'en': '9',
      'sw': '',
    },
    'zycx4xts': {
      'en': 'Verify SMS Code',
      'sw': 'Thibitisha Msimbo',
    },
    'tkug2a5l': {
      'en': 'Home',
      'sw': '',
    },
  },
  // PhoneSignUp
  {
    '3sogmw9u': {
      'en': 'Phone Sign In',
      'sw': 'Ingia kwa Simu',
    },
    'bfrp9gmh': {
      'en':
          'Enter your phone number, we will send you a verification SMS in this phone number.',
      'sw':
          'Weka nambari yako ya simu, tutakutumia SMS ya uthibitishaji katika nambari hii ya simu.',
    },
    '34hn07bp': {
      'en': 'Enter phone number.',
      'sw': 'Weka nambari ya simu.',
    },
    'a93xpq4r': {
      'en': '',
      'sw': '',
    },
    'acctw0d1': {
      'en': '+255',
      'sw': '',
    },
    '4y9jasgl': {
      'en': 'SUBMIT',
      'sw': 'WASILISHA',
    },
    '8fxrn99h': {
      'en': '9',
      'sw': '',
    },
    'm3ih26xd': {
      'en': 'Home',
      'sw': '',
    },
  },
  // SignIn
  {
    's23u5ss2': {
      'en': 'Sign In',
      'sw': 'Ingia ',
    },
    '3zf9hnvc': {
      'en': 'Email Address',
      'sw': 'Barua pepe',
    },
    'mc0i5spd': {
      'en': 'Enter your email address....',
      'sw': 'Weka barua pepe yako....',
    },
    'xny1vxn2': {
      'en': 'Password',
      'sw': 'Nenosiri',
    },
    '2yizvmfi': {
      'en': 'Enter your password....',
      'sw': 'Weka nenosiri lako....',
    },
    '2dk0jpoc': {
      'en': 'SIGN IN',
      'sw': 'WEKA SAHIHI',
    },
    'e1suycym': {
      'en': 'FORGOT PASSWORD?',
      'sw': 'UMESAHAU NYWILA?',
    },
    'o871yq29': {
      'en': 'SIGNUP',
      'sw': 'JIANDIKISHE',
    },
    'lkd38q10': {
      'en': 'Email address is required.',
      'sw': '',
    },
    'o0nu6dcs': {
      'en': 'Email address is required.',
      'sw': '',
    },
    '6fvhtzke': {
      'en': 'Home',
      'sw': '',
    },
  },
  // ForgotPass
  {
    'tey5joo2': {
      'en': 'Forgot Password',
      'sw': 'Umesahau nywila',
    },
    'tcg1yo58': {
      'en': 'Email Address',
      'sw': 'Barua pepe',
    },
    'jjgx1tl7': {
      'en': '',
      'sw': '',
    },
    '4eh9vn1s': {
      'en': 'Enter your email address....',
      'sw': 'Weka barua pepe yako....',
    },
    'rn4tbu3h': {
      'en': 'SUBMIT',
      'sw': 'WASILISHA',
    },
    'bj5e9mma': {
      'en': 'SIGNIN',
      'sw': 'INGIA',
    },
    '8c0xrwj7': {
      'en': 'Email address is required.',
      'sw': '',
    },
    '1mpnfqz9': {
      'en': 'Home',
      'sw': '',
    },
  },
  // SignUp
  {
    'k2cezrnm': {
      'en': 'Sign Up',
      'sw': 'Jisajili',
    },
    'zpb4j25q': {
      'en': 'Username',
      'sw': 'Jina la mtumiaji',
    },
    'eky4a3n1': {
      'en': 'Enter your username....',
      'sw': 'Weka jina lako la mtumiaji....',
    },
    'bcl8xyyb': {
      'en': 'Email Address',
      'sw': 'Barua pepe',
    },
    'zj60g4ye': {
      'en': 'Enter your email address....',
      'sw': 'Weka barua pepe yako....',
    },
    'rr7m1z6m': {
      'en': 'Phone Number',
      'sw': 'Nambari ya simu',
    },
    'poxvrgyt': {
      'en': '+255',
      'sw': '',
    },
    'b1v1zus7': {
      'en': 'Enter your username....',
      'sw': 'Weka jina lako la mtumiaji....',
    },
    'meaqv4qa': {
      'en': 'Password',
      'sw': 'Nenosiri',
    },
    '0d6jy6fi': {
      'en': 'Enter your password....',
      'sw': 'Weka nenosiri lako....',
    },
    'kxj8w76x': {
      'en': 'Confirm Password',
      'sw': 'Thibitisha Nenosiri',
    },
    '9yxtw9cq': {
      'en': 'Confirm your password....',
      'sw': 'Thibitisha nenosiri lako....',
    },
    'rolof17r': {
      'en': 'Create personal account',
      'sw': 'Fungua akaunti binafsi',
    },
    'ih6g78xi': {
      'en': 'Create business account',
      'sw': 'Fungua akaunti ya biashara',
    },
    '5ptm4kst': {
      'en': 'Agree with Terms and Conditions.',
      'sw': 'Kubali Sheria na Masharti.',
    },
    'oiqy250s': {
      'en': 'Read Terms and Conditions',
      'sw': 'Soma Sheria na Masharti',
    },
    'odi74ezl': {
      'en': 'Sign Up',
      'sw': 'Jisajili',
    },
    'zf3872kg': {
      'en': 'Sign Up',
      'sw': 'Jisajili',
    },
    'nsemducd': {
      'en': 'ALREADY HAVE AN ACCOUNT?',
      'sw': 'TAYARI UNA AKAUNTI?',
    },
    '38bpgjic': {
      'en': 'Email address is required.',
      'sw': '',
    },
    'gypckcnl': {
      'en': 'Password is required.',
      'sw': '',
    },
    '6gg8lk33': {
      'en': 'Confirm Password is required.',
      'sw': '',
    },
    'b89mlr48': {
      'en': 'Username is required.',
      'sw': '',
    },
    '6qthz39u': {
      'en': 'Home',
      'sw': '',
    },
  },
  // Home
  {
    'jeedhq1o': {
      'en': 'Drepo Store',
      'sw': 'Soko la Drepo',
    },
    'p21ojdls': {
      'en': 'Drepo Products',
      'sw': 'Bidhaa za Drepo',
    },
    'a87d4m8u': {
      'en': 'My Chats',
      'sw': 'Chati Zangu',
    },
    'o3ovf8rx': {
      'en': 'Businesses',
      'sw': 'Biashara',
    },
    '4y8wvowp': {
      'en': 'My Cart',
      'sw': 'Kapu langu',
    },
    'q1cw9w7y': {
      'en': 'My Wishlist',
      'sw': 'Penda',
    },
    '65os7paw': {
      'en': 'My Wallet ',
      'sw': 'Malipo',
    },
    '5ajyb66g': {
      'en': 'Notifications',
      'sw': 'Arifa',
    },
    '4k3tzhwg': {
      'en': 'Policies',
      'sw': 'Sera',
    },
    'tgkrcfo2': {
      'en': 'Add Business',
      'sw': 'Ongeza Biashara',
    },
    '81lmkzu5': {
      'en': 'SignOut',
      'sw': 'Toka',
    },
    'vew4ij71': {
      'en': 'Drepo Store',
      'sw': '',
    },
    '5u2m5oiq': {
      'en': 'Businesses',
      'sw': 'Biashara ',
    },
    'v1ysp7hq': {
      'en': 'Visit',
      'sw': '',
    },
    'sfsfets8': {
      'en': 'Categories',
      'sw': 'Kategoria',
    },
    'a6vw9j3z': {
      'en': 'Electronics',
      'sw': 'Elektroniki',
    },
    'k38kdjtm': {
      'en': 'Equipment',
      'sw': 'Vifaa',
    },
    't91vqtd4': {
      'en': 'Fashion',
      'sw': 'Mitindo',
    },
    'qypgi8dv': {
      'en': 'Services',
      'sw': 'Huduma',
    },
    'rrkbilmd': {
      'en': 'Agriculture',
      'sw': 'Kilimo',
    },
    'uvkttg1h': {
      'en': 'Vehicles ',
      'sw': 'Magari',
    },
    '8jqs6nld': {
      'en': 'Home ',
      'sw': 'Nyumbani',
    },
    '1tskxll8': {
      'en': 'Furniture',
      'sw': 'Samani',
    },
    'pso030v3': {
      'en': 'Home',
      'sw': '',
    },
  },
  // Explore
  {
    'a4vs9glo': {
      'en': 'Enquire',
      'sw': 'Uliza',
    },
    '38mwqkxq': {
      'en': 'Drepo Store',
      'sw': 'Soko la Drepo',
    },
    'rqsqiy0n': {
      'en': 'Drepo Products',
      'sw': 'Bidhaa za Drepo',
    },
    'uav9ewvc': {
      'en': 'My Chats',
      'sw': 'Chati Zangu',
    },
    '4gbeqw8k': {
      'en': 'Businesses',
      'sw': 'Biashara',
    },
    'i744xedj': {
      'en': 'My Cart',
      'sw': 'Kapu langu',
    },
    'tbrraez3': {
      'en': 'My Wishlist',
      'sw': 'Penda',
    },
    '1ljyfte3': {
      'en': 'My Wallet ',
      'sw': 'Malipo',
    },
    'ambhh3at': {
      'en': 'Notifications',
      'sw': 'Arifa',
    },
    '9v4wx0i1': {
      'en': 'Policies',
      'sw': 'Sera',
    },
    'fqhlkwwa': {
      'en': 'Add Business',
      'sw': 'Ongeza Biashara',
    },
    'oghjsn3e': {
      'en': 'SignOut',
      'sw': 'Toka',
    },
    '4ui9ak9p': {
      'en': 'Drepo Products',
      'sw': '',
    },
    'io8eig88': {
      'en': 'Explore',
      'sw': '',
    },
  },
  // Welcome
  {
    '49ommtie': {
      'en': 'Next',
      'sw': 'Mbele',
    },
    'rinpilym': {
      'en': 'Home',
      'sw': '',
    },
  },
  // UserPostsRolls
  {
    'n1263dc9': {
      'en': 'My Posts & Rolls',
      'sw': 'Machapisho & Rolls Zangu',
    },
    'qp7aqqpr': {
      'en': 'Home',
      'sw': '',
    },
  },
  // ProfilePage
  {
    '9jm1p3pl': {
      'en': 'Account Settings',
      'sw': 'Mipangilio ya Akaunti',
    },
    'd5kqhb7q': {
      'en': 'My Wallet',
      'sw': 'Malipo',
    },
    'd2ok8fre': {
      'en': 'My Details',
      'sw': 'Maelezo Yangu',
    },
    'ufu1x6j9': {
      'en': 'My Notifications',
      'sw': 'Arifa Zangu',
    },
    '9dq02fjc': {
      'en': 'Terms of Service',
      'sw': 'Masharti ya Huduma',
    },
    'hopaifdl': {
      'en': 'My Posts & Rolls',
      'sw': 'Masharti ya Huduma',
    },
    'f0jm8q64': {
      'en': 'Goals',
      'sw': 'Malengo',
    },
    'z059amcn': {
      'en': 'My Businesses',
      'sw': 'Biashara Zangu',
    },
    '0ry4sidi': {
      'en': 'My Clients',
      'sw': 'Wateja Wangu',
    },
    '68y9pjhw': {
      'en': 'Drepo Store',
      'sw': 'Soko la Drepo',
    },
    'cy8r91gz': {
      'en': 'Drepo Products',
      'sw': 'Bidhaa za Drepo',
    },
    'un1s6549': {
      'en': 'My Chats',
      'sw': 'Chati Zangu',
    },
    'q4tc8upe': {
      'en': 'Businesses',
      'sw': 'Biashara',
    },
    'qouuin8t': {
      'en': 'My Cart',
      'sw': 'Kapu langu',
    },
    'iz80dnzc': {
      'en': 'My Wishlist',
      'sw': 'Penda',
    },
    'nqqvluth': {
      'en': 'My Wallet ',
      'sw': 'Malipo',
    },
    '7fy78j0w': {
      'en': 'Notifications',
      'sw': 'Arifa',
    },
    'b4l5w7gz': {
      'en': 'Policies',
      'sw': 'Sera',
    },
    'lfbb7tql': {
      'en': 'Add Business',
      'sw': 'Ongeza Biashara',
    },
    'r1aabclt': {
      'en': 'SignOut',
      'sw': 'Toka',
    },
    'lmns190z': {
      'en': 'My Profile',
      'sw': 'Wasifu Wangu',
    },
    '15l64uel': {
      'en': 'Profile',
      'sw': '',
    },
  },
  // UserInfo
  {
    'vrjnviyp': {
      'en': 'Username:',
      'sw': 'Jina la mtumiaji:',
    },
    'qvtv6x8r': {
      'en': 'Location:',
      'sw': 'Mahali:',
    },
    'pd0frepq': {
      'en': 'Phone Number:',
      'sw': 'Nambari ya simu:',
    },
    'xzzq9m3v': {
      'en': 'Facebook:',
      'sw': 'Facebook:',
    },
    'mfv8w8hx': {
      'en': 'Instagram:',
      'sw': 'Instagram:',
    },
    'nduypofb': {
      'en': 'Email Adress:',
      'sw': 'Anwani ya Barua Pepe:',
    },
    '7vvkudlb': {
      'en': 'Referral Code:',
      'sw': 'Namba ya Wakala:',
    },
    '1iefd8m0': {
      'en': 'User Details',
      'sw': 'Maelezo ya Mtumiaji',
    },
    '2ftnt2cv': {
      'en': 'Home',
      'sw': '',
    },
  },
  // BusinessesPage
  {
    '1uj3yb5u': {
      'en': 'Search events here...',
      'sw': '',
    },
    'fi4hg4vc': {
      'en': 'Businesses',
      'sw': 'Biashara',
    },
    '96lceadh': {
      'en': 'Shop',
      'sw': '',
    },
  },
  // BusinessAccount
  {
    'u0wct6ps': {
      'en': 'Business',
      'sw': 'Biashara',
    },
    'cq92df3t': {
      'en': 'Business Information',
      'sw': 'Maelezo ya Biashara:',
    },
    'y845uzlk': {
      'en': 'Home',
      'sw': '',
    },
  },
  // ProductPage
  {
    'kzqctgd3': {
      'en': 'DESCRIPTION',
      'sw': '',
    },
    'v7xudxoy': {
      'en': 'RELATED',
      'sw': '',
    },
    'g4u4u38u': {
      'en': 'INSTALLMENT',
      'sw': '',
    },
    'sbw1zlq6': {
      'en': 'PAY',
      'sw': '',
    },
    'pa4vmy4e': {
      'en': 'Home',
      'sw': '',
    },
  },
  // CreatePost
  {
    '6xhjd7ll': {
      'en': 'Product Name',
      'sw': 'Jina la bidhaa',
    },
    'b0k6szu4': {
      'en': 'Enter your product name ....',
      'sw': 'Weka jina la bidhaa yako....',
    },
    '1ogsyldj': {
      'en': 'Product Details',
      'sw': 'Maelezo ya bidhaa',
    },
    '8zrrf6zf': {
      'en': 'Enter your product details ....',
      'sw': 'Weka maelezo ya bidhaa yako....',
    },
    's8ikg935': {
      'en': 'Product Price',
      'sw': 'Bei ya Bidhaa',
    },
    'sl5c56cp': {
      'en': 'Enter your product price....',
      'sw': 'Weka bei ya bidhaa yako....',
    },
    '5ac2ubv0': {
      'en': 'Product Category',
      'sw': 'Aina ya Bidhaa',
    },
    'dkcua6zc': {
      'en': 'Vehicles',
      'sw': 'Magari',
    },
    '1nct0ma1': {
      'en': 'Vehicles',
      'sw': 'Magari',
    },
    'jekhutii': {
      'en': 'Property & Equipment',
      'sw': 'Mali na Vifaa',
    },
    '3950zq1k': {
      'en': 'Electronics',
      'sw': 'Elektroniki',
    },
    'fcpcn7cr': {
      'en': 'Fashion & Beauty',
      'sw': 'Mitindo & Urembo',
    },
    'vimmgor2': {
      'en': 'Services',
      'sw': 'Huduma',
    },
    '1c1gp5jl': {
      'en': 'Agricultural Products',
      'sw': 'Bidhaa za Kilimo',
    },
    '8twjsoym': {
      'en': 'Home Appliances',
      'sw': 'Vifaa vya Nyumbani',
    },
    'c38h5zqe': {
      'en': 'Furnitures',
      'sw': 'Samani',
    },
    'iwew54dx': {
      'en': 'Please select...',
      'sw': 'Tafadhali chagua...',
    },
    'uobcf0n9': {
      'en': 'Product Sub-Category',
      'sw': 'Aina ya Bidhaa',
    },
    'co5fiymz': {
      'en': 'Ladies',
      'sw': 'Wanawake',
    },
    'aj4tkz0e': {
      'en': 'Ladies',
      'sw': 'Wanawake',
    },
    '6vihy3m4': {
      'en': 'Gentlemens',
      'sw': 'Wanaume',
    },
    'ztlnbpuu': {
      'en': 'Please select...',
      'sw': 'Tafadhali chagua...',
    },
    'bbit4mzt': {
      'en': 'Product Sub-Category',
      'sw': 'Aina ya Bidhaa',
    },
    '8cqd5bzi': {
      'en': 'Gas',
      'sw': 'Gesi',
    },
    'bha7lnb9': {
      'en': 'Gas',
      'sw': 'Gesi',
    },
    'iuj0a5l7': {
      'en': 'Utentils',
      'sw': 'Vyombo',
    },
    'srjsm7bd': {
      'en': 'Please select...',
      'sw': 'Tafadhali chagua...',
    },
    '1ctdfun3': {
      'en': 'Product Images',
      'sw': 'Picha za bidhaa',
    },
    'pbahresy': {
      'en': 'CREATE',
      'sw': '',
    },
    'g05bpuo0': {
      'en': 'Email address is required.',
      'sw': '',
    },
    'l06q0bia': {
      'en': 'Email address is required.',
      'sw': '',
    },
    '0ud6k3gl': {
      'en': 'Create Post',
      'sw': 'Tengeneza Chapisho',
    },
    '4ok7k2xu': {
      'en': 'Home',
      'sw': '',
    },
  },
  // ViewRoll
  {
    '6t8y9xvb': {
      'en': 'More Info',
      'sw': 'Maelezo Zaidi',
    },
    'soau0ztg': {
      'en': 'More Info',
      'sw': 'Maelezo Zaidi',
    },
    '04dhs8pc': {
      'en': 'More Info',
      'sw': '',
    },
    '251l9q76': {
      'en': 'Home',
      'sw': '',
    },
  },
  // CreateRoll
  {
    'hgb0yoi2': {
      'en': 'Roll Name',
      'sw': 'Jina la Bidhaa',
    },
    'wt24u0bt': {
      'en': 'Enter roll  name.',
      'sw': 'Andika jina la bidhaa',
    },
    'mgch1t8r': {
      'en': 'Product Price',
      'sw': 'Bei ya Bihaa',
    },
    '0awr9u27': {
      'en': 'Enter your product price....',
      'sw': 'Andika bei',
    },
    '4vprhdfd': {
      'en': 'Roll Caption',
      'sw': 'Maelezo mafupi',
    },
    'ed0il4io': {
      'en': 'Enter caption',
      'sw': 'Andika maelezo mafup....',
    },
    'mk3gthh3': {
      'en': 'Roll Details',
      'sw': 'Maelezo mafupi',
    },
    'ja8wqom6': {
      'en': 'Enter your product details ....',
      'sw': 'Weka maelezo ya bidhaa yako....',
    },
    'upajx4xa': {
      'en': 'Add Roll Picture',
      'sw': 'Weka Picha',
    },
    'zmvf76h4': {
      'en': 'CREATE',
      'sw': '',
    },
    'fv0931hr': {
      'en': 'Email address is required.',
      'sw': '',
    },
    '4jy0babe': {
      'en': 'Email address is required.',
      'sw': '',
    },
    'dsw9v1ld': {
      'en': 'Email address is required.',
      'sw': '',
    },
    'toxtjvq3': {
      'en': 'Create Product Roll',
      'sw': 'Tengeneza Statas ya bidhaa',
    },
    'syqyze59': {
      'en': 'Home',
      'sw': '',
    },
  },
  // MyWishlist
  {
    'd5csjxaw': {
      'en': 'My Wishlist',
      'sw': 'Orodha Yangu',
    },
    'it4h8gos': {
      'en': 'Home',
      'sw': '',
    },
  },
  // MyCart
  {
    'lmya20xo': {
      'en': 'My Cart',
      'sw': 'Oda',
    },
    'xnmu67f7': {
      'en': 'Home',
      'sw': '',
    },
  },
  // Electronics
  {
    'us1j15aa': {
      'en': 'Electronics',
      'sw': 'Elektroniki',
    },
    '8ujdtuc8': {
      'en': 'Search events here...',
      'sw': '',
    },
    'roaht41d': {
      'en': 'Home',
      'sw': '',
    },
  },
  // Vehicles
  {
    'ybmjbsai': {
      'en': 'Vehicles',
      'sw': 'Magari',
    },
    'sp1wty7w': {
      'en': 'Search events here...',
      'sw': '',
    },
    'z1oruisn': {
      'en': 'Home',
      'sw': '',
    },
  },
  // Fashion
  {
    'nocgd671': {
      'en': 'Fashion & Beauty',
      'sw': 'Mitindo & Urembo',
    },
    'zg9krpv8': {
      'en': 'Search events here...',
      'sw': '',
    },
    'aim34x82': {
      'en': 'Ladies',
      'sw': 'Wanawake',
    },
    'xashz9m1': {
      'en': 'Gentlemens',
      'sw': 'Wanaume',
    },
    'ybtvanqh': {
      'en': 'Home',
      'sw': '',
    },
  },
  // PropertyEquipment
  {
    'y087monw': {
      'en': 'Property & Equipment',
      'sw': 'Mali na Vifaa',
    },
    'e1ko065u': {
      'en': 'Search events here...',
      'sw': '',
    },
    'r00qxt4w': {
      'en': 'Home',
      'sw': '',
    },
  },
  // Services
  {
    'nhh0txyb': {
      'en': 'Services',
      'sw': 'Huduma',
    },
    'ecx7cjgs': {
      'en': 'Search events here...',
      'sw': '',
    },
    '7dh48mnq': {
      'en': 'Home',
      'sw': '',
    },
  },
  // AgriculturalProducts
  {
    'iza2pyv9': {
      'en': 'Agricultural Products',
      'sw': 'Bidhaa za Kilimo',
    },
    'zdqa3e2d': {
      'en': 'Search events here...',
      'sw': '',
    },
    '9z3f9hs3': {
      'en': 'Home',
      'sw': '',
    },
  },
  // HomeAppliances
  {
    '50q7spwn': {
      'en': 'Home Appliances ',
      'sw': 'Vifaa vya Nyumbani',
    },
    'ihpabuwk': {
      'en': 'Search events here...',
      'sw': '',
    },
    'lczmlocy': {
      'en': 'Gas',
      'sw': 'Gesi',
    },
    '9u8uns5o': {
      'en': 'Utilities ',
      'sw': 'Vyombo',
    },
    'a61frhn7': {
      'en': 'Home',
      'sw': '',
    },
  },
  // Furniture
  {
    'sgu60n3g': {
      'en': 'Furniture',
      'sw': 'Samani',
    },
    'ul452ox1': {
      'en': 'Search events here...',
      'sw': '',
    },
    'k2xahy08': {
      'en': 'Home',
      'sw': '',
    },
  },
  // Polices
  {
    'jxqrwb4m': {
      'en': 'Terms & Conditions',
      'sw': '',
    },
    'bh6d6m2l': {
      'en': 'DREPO TERMS AND POLICY',
      'sw': 'MASHARTI NA SERA YA DREPO',
    },
    'g72260dv': {
      'en':
          'Drepo is an online platform where people can create profile share information such as photos and  paper work, messages and respond to the information posted by others and keep in touch with family and friends. Through Drepo people will trade anything anywhere practically, through technology infrastructure we provide online market place, payment system, advertising space, storage etc. …………   merchandise and company brands will interact with their customers and users.',
      'sw':
          'Drepo ni jukwaa la mtandaoni ambapo watu wanaweza kuunda maelezo ya kushiriki maelezo mafupi kama vile picha na kazi za karatasi, ujumbe na kujibu taarifa zilizochapishwa na wengine na kuwasiliana na familia na marafiki. Kupitia Drepo watu watauza chochote popote kivitendo, kupitia miundombinu ya teknolojia tunatoa soko la mtandaoni, mfumo wa malipo, nafasi ya matangazo, kuhifadhi n.k. ………… bidhaa na chapa za kampuni zitaingiliana na wateja na watumiaji wao.',
    },
    'r2337kb6': {
      'en': 'Social Networking Policy   ',
      'sw': 'Sera ya Mitandao ya Kijamii',
    },
    'g0dp85kp': {
      'en':
          'We provide platform where users can create content based on their personal interest. People will interact with friends and meet other people based on shared interests.                                                                                                                                                   \nIf you decide to use our service, then you are agree to the collection and use of information relation to this terms. Individual information that we collect we will use it for providing and improving our service and we will not share it unnecessarily.\n•\tWe will remove any inappropriate contents from our app which may incite any kind of violence or crime in our society.\n•\tOur users are not permitted to use Drepo to abuse, harass, threaten impersonate other Drepo users.\n•\tYou must not use Drepo service for any illegal activity or any unauthorized purpose.',
      'sw':
          'Ufikiaji na utumiaji wako wa huduma unategemea kukubalika kwako na kutii sheria na masharti haya. Masharti haya yanatumika kwa wageni wote, watumiaji na wengine wanaofikia kutumia huduma zetu. ●Kwa kufikia au kutumia huduma ulikubali kuwa chini ya sheria na masharti haya. Ikiwa hukubaliani na mhusika yeyote wa sheria na masharti basi unaweza usipate huduma yetu.',
    },
    'n10rcncx': {
      'en': '  Privacy  Policy   ',
      'sw': 'Sera ya Faragha',
    },
    '70wekod8': {
      'en':
          'Your access to and use of the service is conditioned on your acceptance and compliance with these terms. These terms apply to all visitors, users and others who access to use our service. \n     ●By accessing or using the service you agreed to be bound by these terms. If you disagree with any party of the terms then you may not access our service. ',
      'sw':
          'Ufikiaji na utumiaji wako wa huduma unategemea kukubalika kwako na kutii sheria na masharti haya. Masharti haya yanatumika kwa wageni wote, watumiaji na wengine wanaofikia kutumia huduma zetu. ●Kwa kufikia au kutumia huduma ulikubali kuwa chini ya sheria na masharti haya. Ikiwa hukubaliani na mhusika yeyote wa sheria na masharti basi unaweza usipate huduma yetu.',
    },
    '7ol9ykgx': {
      'en': ' Information We Collect ',
      'sw': 'Habari Tunazokusanya',
    },
    'glxqwdxh': {
      'en':
          '     Drepo receives information when we operate and provide our service when you install or use our services.\n         ●Your account information. Has to be filled out with legal information or details of the user, you provide  your user name ,age, gender ,nationality ,email address ,phone number ,etc… for better experience while your using our service we will require you to provide us those data . \n       ●Customer support. You may provides us with information related to your use of our services, for example you may send us an email with information relation to our app performance and your suggestions on how we can improve our service. \n       ●Data provided by third-parties. When you decide to log in using either Google or Facebook, we get your personal information from your Facebook account. This includes your name, profile image, email address, gender, date of birth and location as listed in your Facebook profile.\n        ●Device and location data. We Collect data form your device, for example language settings, time zone, type and model of your device, device settings and operating systems, IP address and internet service provider.\n        ●Usage data. We record how you interact with our service such as how long you are on the service, content you interact with, how many ads you watch and what section you use.\n         ●Transaction data. When you make payments through the service, you need to provide financial account data, such as your credit card number to us or our third party services providers. ',
      'sw':
          'Drepo hupokea maelezo tunapofanya kazi na kutoa huduma zetu unaposakinisha au kutumia huduma zetu. ●Maelezo ya akaunti yako. Lazima ujazwe na taarifa za kisheria au maelezo ya mtumiaji, unatoa jina lako la mtumiaji, umri, jinsia, utaifa, anwani ya barua pepe, nambari ya simu, n.k... kwa matumizi bora zaidi unapotumia huduma zetu, tutakuhitaji utupe hizo. data. ● Usaidizi kwa wateja. Unaweza kutupa maelezo yanayohusiana na matumizi yako ya huduma zetu, kwa mfano unaweza kututumia barua pepe yenye maelezo yanayohusiana na utendaji wa programu yetu na mapendekezo yako kuhusu jinsi tunavyoweza kuboresha huduma zetu. ●Data iliyotolewa na wahusika wengine. Unapoamua kuingia kwa kutumia Google au Facebook, tunapata taarifa zako za kibinafsi kutoka kwa akaunti yako ya Facebook. Hii inajumuisha jina lako, picha ya wasifu, anwani ya barua pepe, jinsia, tarehe ya kuzaliwa na eneo kama ilivyoorodheshwa katika wasifu wako wa Facebook. ●Data ya kifaa na eneo. Tunakusanya data katika kifaa chako, kwa mfano mipangilio ya lugha, saa za eneo, aina na muundo wa kifaa chako, mipangilio ya kifaa na mifumo ya uendeshaji, anwani ya IP na mtoa huduma wa intaneti. ●Data ya matumizi. Tunarekodi jinsi unavyoingiliana na huduma yetu kama vile muda ambao uko kwenye huduma, maudhui unayotumia, ni matangazo ngapi unatazama na sehemu gani unayotumia. ●Data ya muamala. Unapofanya malipo kupitia huduma, unahitaji kutoa data ya akaunti ya fedha, kama vile nambari ya kadi yako ya mkopo kwetu au watoa huduma wetu wengine.',
    },
    '2khbr4lu': {
      'en': 'Links To Other Sites ',
      'sw': 'Habari Tunazokusanya',
    },
    'hxb29q5a': {
      'en':
          'Our service may contain links to third- party- sites or service that are not allowed or controlled by our company. Our company has no control over and assumes no responsibility for, the content, privacy policies, or practices of any third party sites or service. You further acknowledge and agree that our company shall not be responsible or liable, either direct or indirect for any damage or loss, caused or alleged to be caused by or in connection  with use of or reliance or any such content, goods or services available on or through any such sites or services.\n        ●Information others provide  about you. We receive information other sites  provide us, which contains data about you.\n       ●Third-party service to you. We allow our users to use our service in connection with third party services, remember if you use our service with such third- party services we will collect data about you from them.\n       ●Service providers. We may work with third- party to help us to operate, provide, improve and support our service\'s. However they are obligated not to disclose or use your information for any other purpose.',
      'sw':
          'Huduma yetu inaweza kuwa na viungo vya tovuti za watu wengine au huduma ambazo haziruhusiwi au kudhibitiwa na kampuni yetu. Kampuni yetu haina udhibiti na haiwajibikii, maudhui, sera za faragha, au desturi za tovuti au huduma za wahusika wengine. Unakubali zaidi na kukubali kwamba kampuni yetu haitawajibika au kuwajibika, moja kwa moja au kwa njia isiyo ya moja kwa moja kwa uharibifu au hasara yoyote, iliyosababishwa au inayodaiwa kusababishwa na au kuhusiana na matumizi au utegemezi au maudhui yoyote kama hayo, bidhaa au huduma zinazopatikana kwenye au kupitia tovuti au huduma kama hizo. ●Maelezo ambayo wengine hutoa kukuhusu. Tunapokea taarifa ambazo tovuti zingine hutupa, ambazo zina data kukuhusu. ●Huduma ya mtu wa tatu kwako. Tunawaruhusu watumiaji wetu kutumia huduma zetu kuhusiana na huduma za wahusika wengine, kumbuka ukitumia huduma zetu na huduma hizo za wahusika wengine tutakusanya data kukuhusu kutoka kwao. ●Watoa huduma. Tunaweza kufanya kazi na wahusika wengine ili kutusaidia kufanya kazi, kutoa, kuboresha na kusaidia huduma zetu. Hata hivyo wana wajibu wa kutofichua au kutumia maelezo yako kwa madhumuni mengine yoyote.',
    },
    'gi9p4znx': {
      'en': 'How We Use Information Collected For',
      'sw': 'Jinsi Tunavyotumia Taarifa Zilizokusanywa',
    },
    'j7weaw54': {
      'en':
          '  We use all the identifiable information collected from you to help us to operate, understand, market and support our service.\n     ●Security. We value your trust in providing us your personal identifiable information, thus we are striving to use commercially means of protecting it.\n     ●Our service. We provide users support, improving and customizing our services, by using your information we can improve our services and testing the new features.\n      ●To send you market communication. We process your personal information for our marketing campaigns. We may add your email address to our marketing list, as a result you will receive information about our products and services, such as discounts and special offers and products or services of our partners.\n       ●Communicate with you regarding your use of our service. We communicate with you, for example by pushing notifications, you will receive notifications whether on the app or via email, once you opt out of receiving notifications, you need to change the settings on your browser or mobile device, by follow unsubscribe link.\n        ●To manage your account and customer support. We process your personal information to respond to our requests for technical support, service information and any other communication you initiate.\n         ●We use it to customize your experience. We process your personal information to adjust the content of the service and make offers tailored to your personal interests and preferences.\n          ●Analyze and conduct research in our service. This will help us to analyze our operations, innovates, statistical analysis purpose, improve and develop Drepo new products.',
      'sw':
          'Tunatumia taarifa zote zinazotambulika zilizokusanywa kutoka kwako ili kutusaidia kuendesha, kuelewa, soko na kusaidia huduma yetu. ●Usalama. Tunathamini imani yako kwa kutupa taarifa zako za kibinafsi zinazoweza kukutambulisha, kwa hivyo tunajitahidi kutumia njia za kibiashara za kuzilinda. ●Huduma yetu. Tunawapa watumiaji usaidizi, kuboresha na kubinafsisha huduma zetu, kwa kutumia maelezo yako tunaweza kuboresha huduma zetu na kujaribu vipengele vipya. ●Kukutumia mawasiliano ya soko. Tunachakata maelezo yako ya kibinafsi kwa kampeni zetu za uuzaji. Tunaweza kuongeza barua pepe yako kwenye orodha yetu ya uuzaji, kwa hivyo utapokea maelezo kuhusu bidhaa na huduma zetu, kama vile mapunguzo na matoleo maalum na bidhaa au huduma za washirika wetu. ●Wasiliana nawe kuhusu matumizi yako ya huduma zetu. Tunawasiliana nawe, kwa mfano kwa kushinikiza arifa, utapokea arifa iwe kwenye programu au kupitia barua pepe, mara tu unapojiondoa kupokea arifa, unahitaji kubadilisha mipangilio kwenye kivinjari chako au kifaa cha mkononi, kwa kufuata kiungo cha kujiondoa. ●Ili kudhibiti akaunti yako na usaidizi kwa wateja. Tunachakata maelezo yako ya kibinafsi ili kujibu maombi yetu ya usaidizi wa kiufundi, maelezo ya huduma na mawasiliano mengine yoyote unayoanzisha. ●Tunaitumia kubinafsisha matumizi yako. Tunachakata maelezo yako ya kibinafsi ili kurekebisha maudhui ya huduma na kutoa matoleo yanayolingana na maslahi na mapendeleo yako ya kibinafsi. ●Changanua na ufanye utafiti katika huduma yetu. Hii itatusaidia kuchanganua shughuli zetu, uvumbuzi, madhumuni ya uchanganuzi wa takwimu, kuboresha na kutengeneza bidhaa mpya za Drepo.',
    },
    'x69emrwe': {
      'en': 'How We Share Your Informat',
      'sw': 'Jinsi Tunavyoshiriki Taarifa Zako',
    },
    't65hwgtx': {
      'en':
          'We may share your information with business partners, affiliated companies within our corporate structure, as needed for legal purpose and third-party or other links sites to help us in operate, improve, support and providing our services. Third-party service providers have access to personal information only as needed to perform their functions and they must process the personal information in accordance with this privacy policy.\n      ●Other users. Users with whom you communicate or socialize may reshare your information with others both on and off our services.\n      ●Account information. Your user name, age, gender and your content such as photos may be available to any one who use our service.\n       ●Third-parties. We may share your personal identifiable information with our third-parties for the purpose of improve, operate, support our service and marketing of our service, but note they are obligated not to use those information for any other purpose.',
      'sw':
          'Tunaweza kushiriki maelezo yako na washirika wa biashara, makampuni washirika ndani ya muundo wetu wa shirika, kama inavyohitajika kwa madhumuni ya kisheria na tovuti za watu wengine au nyingine za viungo ili kutusaidia katika kuendesha, kuboresha, kusaidia na kutoa huduma zetu. Watoa huduma wa watu wengine wanaweza kufikia taarifa za kibinafsi kama zinahitajika tu ili kutekeleza majukumu yao na lazima wachakate taarifa za kibinafsi kwa mujibu wa sera hii ya faragha. ●Watumiaji wengine. Watumiaji unaowasiliana nao au kushirikiana nao wanaweza kushiriki upya maelezo yako na wengine ndani na nje ya huduma zetu. ● Taarifa za akaunti. Jina lako la mtumiaji, umri, jinsia na maudhui yako kama vile picha yanaweza kupatikana kwa mtu yeyote anayetumia huduma yetu. ●Wahusika wa tatu. Tunaweza kushiriki taarifa zako za kibinafsi zinazoweza kutambulika na washirika wetu kwa madhumuni ya kuboresha, kuendesha, kusaidia huduma zetu na uuzaji wa huduma zetu, lakini kumbuka kuwa wana wajibu wa kutotumia taarifa hizo kwa madhumuni mengine yoyote.',
    },
    '2vkm2dp4': {
      'en': 'Children Privacy.',
      'sw': 'Faragha ya Watoto.',
    },
    'vi3t6yof': {
      'en':
          'These services do not address any one under age of 14. We do not knowingly collect person identifiable information from children under 14, in case we discover that a child under 14 has provide us with personal information, we will immediately remove it from our servers',
      'sw':
          'Huduma hizi hazishughulikii mtu yeyote aliye chini ya umri wa miaka 14. Hatukusanyi kwa kujua taarifa zinazoweza kumtambulisha mtu kutoka kwa watoto walio chini ya miaka 14, iwapo tutagundua kwamba mtoto aliye chini ya miaka 14 ametupa taarifa za kibinafsi, tutaziondoa mara moja kutoka kwa seva zetu.',
    },
    'ft8rdr3k': {
      'en': 'Content',
      'sw': 'Maudhui',
    },
    'eydovya9': {
      'en':
          '  Our service allows you to post, link, store, share and otherwise make available certain information, text videos, and other interesting material  but you must agree as follows;\n   ○You acknowledge that by posting or uploading  content at the service you grant to Drepo an irrecovable, worldwide, free transferable, to use the content for its own purpose as well as to provide the content to third-parties which include to copy, transfer, use, view, modify, distribute, sell or publicly display even to exploit the content.\n      ○Any content that you post or upload to the service must comply with all applicable laws and regulations. Drepo reserve the right at all times to investigate and to take any legal action against any third-party or users who post or upload inappropriate content to the service.\n      ○You warrant and represent  that you are the owner  of all intellectual property rights to the content that you post or upload on our app. Content posted or uploaded by you via Drepo may be viewed by third-parties, including any person visiting or using Drepo.\n  Note: It is in the company’s  sole discretion to decide whether any content shall be deemed inappropriate content. Company reserve the right to remove any content in particular content that it seems to be  inappropriate content, at any time without the obligation to notify the user having posted or uploaded such content.\n',
      'sw':
          'Huduma yetu hukuruhusu kuchapisha, kuunganisha, kuhifadhi, kushiriki na vinginevyo kutoa taarifa fulani, video za maandishi, na nyenzo nyingine za kuvutia lakini lazima ukubali kama ifuatavyo; ○Unakubali kwamba kwa kuchapisha au kupakia maudhui katika huduma unayoipatia Drepo kitu kisichoweza kurejeshwa, duniani kote, kinachoweza kuhamishwa bila malipo, ili kutumia maudhui kwa madhumuni yake yenyewe na pia kutoa maudhui kwa wahusika wengine ambayo ni pamoja na kunakili, kuhamisha, kutumia, kuona, kurekebisha, kusambaza, kuuza au kuonyesha hadharani hata kutumia maudhui. ○Maudhui yoyote unayochapisha au kupakia kwenye huduma lazima yatii sheria na kanuni zote zinazotumika. Drepo inahifadhi haki wakati wote kuchunguza na kuchukua hatua zozote za kisheria dhidi ya wahusika wengine au watumiaji wanaochapisha au kupakia maudhui yasiyofaa kwenye huduma. ○Unaidhinisha na kuwakilisha kuwa wewe ni mmiliki wa haki zote za uvumbuzi kwa maudhui unayochapisha au kupakia kwenye programu yetu. Maudhui yaliyochapishwa au kupakiwa na wewe kupitia Drepo yanaweza kutazamwa na watu wengine, ikiwa ni pamoja na mtu yeyote anayetembelea au kutumia Drepo. Kumbuka: Ni kwa uamuzi wa kampuni pekee kuamua kama maudhui yoyote yatachukuliwa kuwa yasiyofaa. Kampuni inahifadhi haki ya kuondoa maudhui yoyote hasa ambayo yanaonekana kuwa yasiyofaa, wakati wowote bila wajibu wa kumjulisha mtumiaji kuwa amechapisha au kupakia maudhui kama hayo.',
    },
    'h5wumgs7': {
      'en': 'Data Protection',
      'sw': 'Ulinzi wa Data',
    },
    'lfg2twr5': {
      'en':
          'We  may collect, use and share your identifiable information we have a sincerity belief that it is agreeably to;\n         ●Detect, prevent and address fraud or any other illegal activity, security and technical aspects.\n          ●Respond to regulations, legal process or government request. ',
      'sw':
          'Tunaweza kukusanya, kutumia na kushiriki taarifa zako zinazotambulika tuna imani ya dhati kwamba inakubalika; ● Gundua, zuia na ushughulikie ulaghai au shughuli nyingine yoyote haramu, usalama na vipengele vya kiufundi. ●Kujibu kanuni, mchakato wa kisheria au ombi la serikali.',
    },
    'd4lk2mwi': {
      'en': 'Cookies',
      'sw': 'Vidakuzi',
    },
    'x0fadl3x': {
      'en':
          '  These are files with small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the sites that you visit and are stored on your device. Our app may use third party code and libraries that used cookies to collect information and improve their  services, you have the option either to accept or to refuse these cookies.',
      'sw':
          'Hizi ni faili zilizo na kiasi kidogo cha data ambazo hutumiwa kama vitambulishi vya kipekee visivyojulikana. Hizi hutumwa kwa kivinjari chako kutoka kwa tovuti unazotembelea na kuhifadhiwa kwenye kifaa chako. Programu yetu inaweza kutumia msimbo wa wahusika wengine na maktaba ambazo zilitumia vidakuzi kukusanya taarifa na kuboresha huduma zao, una chaguo ama kukubali au kukataa vidakuzi hivi.',
    },
    'rhwttegc': {
      'en': 'Changes To This Privacy Policy',
      'sw': 'Mabadiliko ya Sera hii ya Faragha',
    },
    'le1cz62r': {
      'en':
          'We reserve the right to modify or to replace these policy at any time. If a revision is material we will try to provide at least 20 day\'s  notice prior to any new terms taking effect. These changes are effective immediately after they are posted to this page. By continuing to access or use  the service after those changes become effective, you agree to be bound by the revised privacy policy.',
      'sw':
          'Tunahifadhi haki ya kurekebisha au kubadilisha sera hizi wakati wowote. Ikiwa masahihisho ni nyenzo tutajaribu kutoa angalau notisi ya siku 20 kabla ya sheria na masharti yoyote mapya kutekelezwa. Mabadiliko haya yanaanza kutumika mara tu baada ya kuchapishwa kwenye ukurasa huu. Kwa kuendelea kupata au kutumia huduma baada ya mabadiliko hayo kuanza kutumika, unakubali kuwa chini ya sera ya faragha iliyorekebishwa.',
    },
    'k3v6qw6v': {
      'en': 'Instruction From You',
      'sw': 'Maagizo Kutoka Kwako',
    },
    'dg0z57lj': {
      'en':
          'All instructions or requests can be placed within the Drepo app, and we may choose to accept any instruction from you made through electronic email and in the case if telephone such instruction that we believe is given by you even if you had not actually given such instructions. For any non written instructions will be given to us at your own risk and we will not be responsible for any damage that you may suffer.\n☆Communicating With Businesses. We provide, and always strive to improve, ways for you and businesses and other organizations, to communicate with each other using our Services, such as through order, transaction, and appointment information, delivery and shipping notifications, product and service updates, and marketing within the platform of the company and also the negotiation point \n\n☆Enabling Access to Our Services. To operate our global Services, we need to store and distribute content and information in data center and systems around the world, including outside your country of residence. The use of this global infrastructure is necessary and essential to provide our Services. This infrastructure may be owned\n\n☆Devices and Software. You must provide certain devices, software, and data connections to use our Services, which we otherwise do not supply. In  order to use our Services, you consent to manually or automatically download and install updates to our Services. You also consent to  receive you notifications via our Services from time to time, as necessary to provide our Services to you\n',
      'sw':
          'Maagizo au maombi yote yanaweza kuwekwa ndani ya programu ya Drepo, na tunaweza kuchagua kukubali maagizo yoyote kutoka kwako yaliyotolewa kupitia barua pepe ya kielektroniki na ikiwa kwa njia ya simu maagizo ambayo tunaamini yametolewa na wewe hata kama hukutoa maagizo kama hayo. . Kwa maagizo yoyote ambayo sio maandishi tutapewa kwa hatari yako mwenyewe na hatutawajibika kwa uharibifu wowote ambao unaweza kuteseka. ☆Kuwasiliana na Biashara. Tunatoa, na daima tunajitahidi kuboresha, njia za wewe na biashara na mashirika mengine, kuwasiliana na kila mmoja kwa kutumia Huduma zetu, kama vile kupitia agizo, miamala na maelezo ya miadi, arifa za uwasilishaji na usafirishaji, bidhaa na sasisho za huduma, na uuzaji. ndani ya jukwaa la kampuni na pia sehemu ya mazungumzo ☆Kuwezesha Upatikanaji wa Huduma Zetu. Ili kuendesha Huduma zetu za kimataifa, tunahitaji kuhifadhi na kusambaza maudhui na taarifa katika kituo cha data na mifumo duniani kote, ikijumuisha nje ya nchi unakoishi. Matumizi ya miundombinu hii ya kimataifa ni muhimu na muhimu ili kutoa Huduma zetu. Miundombinu hii inaweza kumilikiwa ☆Vifaa na Programu. Ni lazima utoe baadhi ya vifaa, programu, na miunganisho ya data ili kutumia Huduma zetu, ambazo hatutoi. Ili kutumia Huduma zetu, unakubali kupakua na kusakinisha masasisho kwa Huduma zetu wewe mwenyewe au kiotomatiki. Pia unakubali kupokea arifa zako kupitia Huduma zetu mara kwa mara, inapohitajika ili kutoa Huduma zetu kwako',
    },
    'vact44ev': {
      'en': 'Termination',
      'sw': 'Kukomesha',
    },
    '999qdorv': {
      'en':
          'This agreement will remain in full force and effect while you use Drepo services. You can uninstall and delete the software to terminate your use of the software at any time for any reason. The company may terminate or suspend your account at any time without notice if the company believes that you have breached out the agreement. Drepo reserve the right to terminate the agreement  and your use of the software at any time.',
      'sw':
          'Makubaliano haya yatasalia kuwa na nguvu kamili wakati unatumia huduma za Drepo. Unaweza kusanidua na kufuta programu ili kukomesha matumizi yako ya programu wakati wowote kwa sababu yoyote. Kampuni inaweza kusitisha au kusimamisha akaunti yako wakati wowote bila taarifa ikiwa kampuni inaamini kuwa umekiuka makubaliano. Drepo inahifadhi haki ya kusitisha makubaliano na matumizi yako ya programu wakati wowote.',
    },
    'k1jhom32': {
      'en': 'DREPO NEGOTIATION POINT',
      'sw': 'DREPO NEGOTIATION POINT',
    },
    'n206a7iz': {
      'en':
          'Drepo negotiation point. Is a Tanzanian online marketplace that provides buyers and sellers with an avenue to meet and exchange goods and services. Company brands and merchandise will use Drepo marketplace to reach customers who want to purchase their products and services......,Drepo aims to keep it easy  to buyers and sellers where will trade anything anywhere practically.\n        ●Through Drepo market we enable small, medium and large size enterprises to transform the way they operate, market and sell by improve their efficiencies.',
      'sw':
          'Sehemu ya mazungumzo ya Drepo. Ni soko la mtandaoni la Tanzania ambalo huwapa wanunuzi na wauzaji njia ya kukutana na kubadilishana bidhaa na huduma. Chapa na bidhaa za kampuni zitatumia soko la Drepo kufikia wateja wanaotaka kununua bidhaa na huduma zao......, Drepo inalenga kuwarahisishia wanunuzi na wauzaji ambapo watauza chochote mahali popote kivitendo. ●Kupitia soko la Drepo tunawezesha biashara ndogo, za kati na kubwa kubadilisha jinsi zinavyofanya kazi, soko na kuuza kwa kuboresha utendakazi wao.',
    },
    'ej0kw676': {
      'en': 'Registration And Account',
      'sw': 'Usajili na Akaunti',
    },
    'ttoy6o6z': {
      'en':
          '○You may not register with our market area if you are under 14 years of age.\n○You represent and warrant that all information you provide is complete and accurate.\n○If you register for an account with Negotiation Point, you will be asked to provide some information like e-mail address and password.\n○Your account shall be used exclusively by you, and if you authorize any third-party  to manage your account, this shall be at our own risk.',
      'sw':
          '○Huenda usijisajili katika eneo la soko letu ikiwa una umri wa chini ya miaka 14. ○Unawakilisha na kuthibitisha kwamba maelezo yote unayotoa ni kamili na sahihi. ○Iwapo utajiandikisha kwa akaunti kwenye Kituo cha Mazungumzo, utaombwa kutoa taarifa fulani kama vile anwani ya barua pepe na nenosiri. ○Akaunti yako itatumiwa na wewe pekee, na ikiwa utaidhinisha mtu mwingine yeyote kudhibiti akaunti yako, hii itakuwa kwa hatari yetu wenyewe.',
    },
    'l3rfk4gz': {
      'en': 'Rules On Your Content',
      'sw': 'Kanuni kwenye Maudhui Yako',
    },
    'rgbhyzqp': {
      'en':
          '1.Your content must be appropriate, civil and tasteful and must not;\n     ●Be blasphemous in breach of racial or religious hatred or  discrimination legislation.\n     ●Be deceptive, threatening, abusive, harassing, anti- social, menacing and hateful.\n        ●Be offensive, obscene, indecent, pornographic, lewd, suggestive or sexually explicit.\n2.You acknowledge that all users on our app are solely responsible for interaction with other user\'s and you shall exercise caution and good judgment in your communication with other users.\n3.Your content must not be illegal or unlawful, infringe any person\'s legal rights, or be capable of giving rise to legal action against any person. Your Content must not breach;\n       ○Any copyright, trademark right, design right, database right and any other intellectual property right.\n       ○Any court order. \n       ○Any right of confidence, right of privacy and data protection legislation right.\n\nOur Policy On Counterfeit Products\nWe prohibits the sale or promotion for sale of counterfeit products, those products which are distributed using a trade mark or brand that is identical to, or substantially indistinguishable from, registered trademark of another, without authorization from the trademark or brand owner. Drepo counterfeit are;\n1.Counterfeit products are illegal and not allowed on Drepo for example\n     ○Products described as knock off, replica, imitation, faux, fake, mirror image or similar terms when referring to a brand name in an attempt to pass themselves off as genuine products of the brand owner, for example a phone with iPhone name or logo that wasn\'t made by Apple.\n     ○Non genuine products that mimic  brand features in an attempt to pass themselves off as the  genuine products\n     ○Electronics or accessories that  use or bear the brand name, logo or trademark of a company that didn\'t manufacture the item.\n2.We may remove listings if we receive buyer complaints that the item is not authentic.\n3.Offer, promotion, sale and facilitation of unauthorized access to content including digital goods.\n4.Listings with photos that hide trademarks are not allowed.',
      'sw':
          '1.Maudhui yako lazima yawe ya kufaa, ya kistaarabu na ya kuonja na hayapaswi kuwa; ●Awe mwenye kukufuru kwa ukiukaji wa sheria ya chuki ya rangi au kidini au ubaguzi. ●Awe mdanganyifu, mwenye vitisho, mtusi, mnyanyasaji, asiye na jamii, mwenye kutisha na mwenye chuki. ●Awe mwenye kuudhi, mchafu, mchafu, ponografia, mchafu, chafu, au onyesha ngono waziwazi. 2.Unakubali kwamba watumiaji wote kwenye programu yetu wanawajibika tu kwa mwingiliano na watumiaji wengine na utachukua tahadhari na uamuzi mzuri katika mawasiliano yako na watumiaji wengine. 3. Maudhui yako lazima yasiwe kinyume cha sheria au kinyume cha sheria, kukiuka haki za kisheria za mtu yeyote, au kuwa na uwezo wa kutoa hatua za kisheria dhidi ya mtu yeyote. Maudhui yako lazima yasivunje; ○Hakimiliki yoyote, haki ya chapa ya biashara, haki ya kubuni, haki ya hifadhidata na haki nyingine yoyote ya uvumbuzi. ○ Amri yoyote ya mahakama. ○Haki yoyote ya kuaminiwa, haki ya faragha na haki ya sheria ya ulinzi wa data. Sera Yetu Kuhusu Bidhaa Bandia Tunapiga marufuku uuzaji au utangazaji wa uuzaji wa bidhaa ghushi, bidhaa zile zinazosambazwa kwa kutumia chapa ya biashara au chapa ambayo ni sawa na, au isiyoweza kutofautishwa kabisa na, alama ya biashara iliyosajiliwa ya mwingine, bila idhini kutoka kwa chapa ya biashara au chapa. mmiliki. Drepo bandia ni; 1.Bidhaa ghushi ni haramu na haziruhusiwi kwenye Drepo kwa mfano ○Bidhaa zinazofafanuliwa kama kuporomoshwa, nakala, uigaji, uwongo, taswira ya bandia, kioo au maneno sawa na hayo unaporejelea jina la chapa kwa kujaribu kujifanya kuwa bidhaa halisi za mmiliki wa chapa, kwa mfano simu yenye jina la iPhone au nembo ambayo haikutengenezwa na Apple. ○Bidhaa zisizo halisi zinazoiga vipengele vya chapa kwa kujaribu kujifanya kuwa bidhaa halisi ○Elektroniki au vifuasi vinavyotumia au kubeba jina la chapa, nembo au chapa ya biashara ya kampuni ambayo haikutengeneza bidhaa hiyo. 2.Tunaweza kuondoa uorodheshaji iwapo tutapokea malalamiko ya wanunuzi kwamba bidhaa si halisi. 3.Ofa, utangazaji, uuzaji na uwezeshaji wa ufikiaji usioidhinishwa wa maudhui ikijumuisha bidhaa za kidijitali. 4.Maorodhesho yenye picha zinazoficha chapa za biashara hayaruhusiwi.',
    },
    '83v4lcs6': {
      'en': 'Instruction From You',
      'sw': 'Maagizo Kutoka Kwako',
    },
    't2ylucbz': {
      'en':
          'All instructions or requests can be placed within the Drepo app, and we may choose to accept any instruction from you made through electronic email and in the case if telephone such instruction that we believe is given by you even if you had not actually given such instructions. For any non written instructions will be given to us at your own risk and we will not be responsible for any damage that you may suffer.\n☆Communicating With Businesses. We provide, and always strive to improve, ways for you and businesses and other organizations, to communicate with each other using our Services, such as through order, transaction, and appointment information, delivery and shipping notifications, product and service updates, and marketing within the platform of the company and also the negotiation point \n\n☆Enabling Access to Our Services. To operate our global Services, we need to store and distribute content and information in data center and systems around the world, including outside your country of residence. The use of this global infrastructure is necessary and essential to provide our Services. This infrastructure may be owned\n\n☆Devices and Software. You must provide certain devices, software, and data connections to use our Services, which we otherwise do not supply. In  order to use our Services, you consent to manually or automatically download and install updates to our Services. You also consent to  receive you notifications via our Services from time to time, as necessary to provide our Services to you.',
      'sw':
          'Maagizo au maombi yote yanaweza kuwekwa ndani ya programu ya Drepo, na tunaweza kuchagua kukubali maagizo yoyote kutoka kwako yaliyotolewa kupitia barua pepe ya kielektroniki na ikiwa kwa njia ya simu maagizo ambayo tunaamini yametolewa na wewe hata kama hukutoa maagizo kama hayo. . Kwa maagizo yoyote ambayo sio maandishi tutapewa kwa hatari yako mwenyewe na hatutawajibika kwa uharibifu wowote ambao unaweza kuteseka. ☆Kuwasiliana na Biashara. Tunatoa, na daima tunajitahidi kuboresha, njia za wewe na biashara na mashirika mengine, kuwasiliana na kila mmoja kwa kutumia Huduma zetu, kama vile kupitia agizo, miamala na maelezo ya miadi, arifa za uwasilishaji na usafirishaji, bidhaa na sasisho za huduma, na uuzaji. ndani ya jukwaa la kampuni na pia sehemu ya mazungumzo ☆Kuwezesha Upatikanaji wa Huduma Zetu. Ili kuendesha Huduma zetu za kimataifa, tunahitaji kuhifadhi na kusambaza maudhui na taarifa katika kituo cha data na mifumo duniani kote, ikijumuisha nje ya nchi unakoishi. Matumizi ya miundombinu hii ya kimataifa ni muhimu na muhimu ili kutoa Huduma zetu. Miundombinu hii inaweza kumilikiwa ☆Vifaa na Programu. Ni lazima utoe baadhi ya vifaa, programu, na miunganisho ya data ili kutumia Huduma zetu, ambazo hatutoi. Ili kutumia Huduma zetu, unakubali kupakua na kusakinisha masasisho kwa Huduma zetu wewe mwenyewe au kiotomatiki. Pia unakubali kupokea arifa zako kupitia Huduma zetu mara kwa mara, inapohitajika ili kutoa Huduma zetu kwako.',
    },
    'yomn3ucj': {
      'en': 'Termination',
      'sw': 'Kukomesha',
    },
    'sre0ohht': {
      'en':
          'This agreement will remain in full force and effect while you use Drepo services. You can uninstall and delete the software to terminate your use of the software at any time for any reason. The company may terminate or suspend your account at any time without notice if the company believes that you have breached out the agreement. Drepo reserve the right to terminate the agreement  and your use of the software at any time.',
      'sw':
          'Makubaliano haya yatasalia kuwa na nguvu kamili wakati unatumia huduma za Drepo. Unaweza kusanidua na kufuta programu ili kukomesha matumizi yako ya programu wakati wowote kwa sababu yoyote. Kampuni inaweza kusitisha au kusimamisha akaunti yako wakati wowote bila taarifa ikiwa kampuni inaamini kuwa umekiuka makubaliano. Drepo inahifadhi haki ya kusitisha makubaliano na matumizi yako ya programu wakati wowote.',
    },
    '59b5r7gp': {
      'en': 'DREPO NEGOTIATION POINT',
      'sw': 'DREPO POINTI YA MAKUBALIANO',
    },
    'gk4kpanr': {
      'en':
          'Drepo negotiation point. Is a Tanzanian online marketplace that provides buyers and sellers with an avenue to meet and exchange goods and services. Company brands and merchandise will use Drepo marketplace to reach customers who want to purchase their products and services......,Drepo aims to keep it easy  to buyers and sellers where will trade anything anywhere practically.\n        ●Through Drepo market we enable small, medium and large size enterprises to transform the way they operate, market and sell by improve their efficiencies.',
      'sw':
          'Sehemu ya mazungumzo ya Drepo. Ni soko la mtandaoni la Tanzania ambalo huwapa wanunuzi na wauzaji njia ya kukutana na kubadilishana bidhaa na huduma. Chapa na bidhaa za kampuni zitatumia soko la Drepo kufikia wateja wanaotaka kununua bidhaa na huduma zao......, Drepo inalenga kuwarahisishia wanunuzi na wauzaji ambapo watauza chochote mahali popote kivitendo. ●Kupitia soko la Drepo tunawezesha biashara ndogo, za kati na kubwa kubadilisha jinsi zinavyofanya kazi, soko na kuuza kwa kuboresha utendakazi wao.',
    },
    's9iwpbo9': {
      'en': 'Home',
      'sw': '',
    },
  },
  // Wallet
  {
    'nmikttxa': {
      'en': 'My Wallet',
      'sw': 'Akaunti ya Malipo',
    },
    'xcxc7nft': {
      'en': 'Your latest updates are below.',
      'sw': 'Taarifa zako za hivi punde ziko hapa chini.',
    },
    'miu0nh26': {
      'en': 'DREPO PAY',
      'sw': 'DREPO PAY',
    },
    'lpxgk2ls': {
      'en': 'Balance',
      'sw': 'Kiasi',
    },
    'h4l5502u': {
      'en': 'Quick Service',
      'sw': 'Huduma ya Haraka',
    },
    '7o10jtl6': {
      'en': 'Send Money',
      'sw': 'Tuma Pesa',
    },
    'sfn6t7st': {
      'en': 'Deposit',
      'sw': 'Weka Pesa',
    },
    'imsi9er0': {
      'en': 'Withdraw',
      'sw': 'Toa Pesa',
    },
    'w3ps6l3j': {
      'en': 'Transaction',
      'sw': 'Malipo',
    },
    '9zdak89z': {
      'en': 'Drepo Pay',
      'sw': '',
    },
    'vh37bjqe': {
      'en': 'Hello World',
      'sw': '',
    },
    'y6yw6mdp': {
      'en': 'Home',
      'sw': '',
    },
  },
  // Notifications
  {
    'sedkc25i': {
      'en': 'Notifications',
      'sw': '',
    },
    'nvqjmk4q': {
      'en': 'Home',
      'sw': '',
    },
  },
  // Chatroom
  {
    'l5t4dqsc': {
      'en': 'Group Chat',
      'sw': '',
    },
    'hpg25a6a': {
      'en': 'Home',
      'sw': '',
    },
  },
  // Allchatrooms
  {
    'r6nu9bei': {
      'en': 'All Chats',
      'sw': '',
    },
    'asxlmjkc': {
      'en': 'Chats',
      'sw': '',
    },
  },
  // AddBusinessesPage
  {
    'chum3z1w': {
      'en': 'Search events here...',
      'sw': '',
    },
    'v4pgic94': {
      'en': 'Add Business',
      'sw': 'Ongeza Biashara',
    },
    'iv68vzkj': {
      'en': 'Remove Business',
      'sw': 'Ondoa Biashara',
    },
    '0izedg81': {
      'en': 'Add Businesses',
      'sw': 'Ongeza Biashara',
    },
    'oq674evb': {
      'en': 'Shop',
      'sw': '',
    },
  },
  // SendUserMoney
  {
    '2i4vh1mq': {
      'en': 'Search events here...',
      'sw': '',
    },
    '9fa8yv6d': {
      'en': 'Users',
      'sw': 'Watumiaji',
    },
    'pfj55mnp': {
      'en': 'Shop',
      'sw': '',
    },
  },
  // InstalmentGoals
  {
    'a613o6xb': {
      'en': 'Goals',
      'sw': 'Malengo',
    },
    '8gwzxqsj': {
      'en': 'Home',
      'sw': '',
    },
  },
  // MyBusinesses
  {
    'hsae958p': {
      'en': 'Search events here...',
      'sw': '',
    },
    '3uwfbcge': {
      'en': 'Add Business',
      'sw': 'Ongeza Biashara',
    },
    '10o1nmok': {
      'en': 'Remove Business',
      'sw': 'Ondoa Biashara',
    },
    'wt50axcn': {
      'en': 'My Businesses',
      'sw': 'Biashara Zangu',
    },
    'el4cahwd': {
      'en': 'Shop',
      'sw': '',
    },
  },
  // MyClients
  {
    'utxvfvnb': {
      'en': 'Search events here...',
      'sw': '',
    },
    '1dt6mjqa': {
      'en': 'Add Business',
      'sw': 'Ongeza Biashara',
    },
    'c0yh1pa6': {
      'en': 'Remove Business',
      'sw': 'Ondoa Biashara',
    },
    '8xit6ddm': {
      'en': 'My Clients ',
      'sw': 'Wateja Wangu',
    },
    'tfxuj2c2': {
      'en': 'Shop',
      'sw': '',
    },
  },
  // Create_rollpost
  {
    'asifa4by': {
      'en': 'Create Post',
      'sw': '',
    },
    '2js02b7h': {
      'en': 'Create Roll',
      'sw': '',
    },
    'ncw2ij49': {
      'en': 'Cancel',
      'sw': '',
    },
  },
  // Info_rollpost
  {
    'pxktp5wg': {
      'en': 'Price: ',
      'sw': 'Bei: ',
    },
  },
  // businessInfo
  {
    '0mi8tqa1': {
      'en': 'Business Iformation',
      'sw': 'Taarifa za Biashara',
    },
    'ghfw8f02': {
      'en': 'Instagram ',
      'sw': '',
    },
    '5wtk15ti': {
      'en': 'Open',
      'sw': 'Fungua',
    },
    'woknwx5s': {
      'en': 'Facebook',
      'sw': '',
    },
    'jrchntgu': {
      'en': 'Open',
      'sw': 'Fungua',
    },
    'swcc59hp': {
      'en': 'Phone Number',
      'sw': '',
    },
    '8nnhbz90': {
      'en': 'Location',
      'sw': 'Mahali',
    },
  },
  // DrepoPay
  {
    '3s4c1405': {
      'en': ' PAY',
      'sw': 'PAY',
    },
    'teof5jcq': {
      'en': 'Installment PAY',
      'sw': 'LIPA kigogo kidogo',
    },
  },
  // AddPostImage
  {
    'qw96vf76': {
      'en': 'Add Photo',
      'sw': 'Ongeza Picha',
    },
    's87qgspz': {
      'en': 'Add Image',
      'sw': 'Ongeza Picha',
    },
  },
  // AddRollImage
  {
    'xks4r2yo': {
      'en': 'Add Photo',
      'sw': 'Ongeza Picha',
    },
    'niocr4vw': {
      'en': 'Add Image',
      'sw': 'Ongeza Picha',
    },
  },
  // RollMore
  {
    '6vb9atnu': {
      'en': 'Add Images',
      'sw': 'Ongeza Picha',
    },
    'ae2hy8z2': {
      'en': 'Delete Roll',
      'sw': 'Futa Roll',
    },
    '7kwio8bh': {
      'en': 'Go Live',
      'sw': 'Futa Roll',
    },
  },
  // PostMore
  {
    'b2vyu5qj': {
      'en': 'Add Images',
      'sw': 'Ongeza Picha',
    },
    '0cizz9q1': {
      'en': 'Delete Post',
      'sw': 'Futa Chapisho',
    },
    'tcdlhmyl': {
      'en': 'Cancel',
      'sw': '',
    },
  },
  // editUsername
  {
    'quk16iud': {
      'en': 'Edit Username',
      'sw': 'Hariri Jina la mtumiaji',
    },
    '9x0wcpqo': {
      'en': 'Enter new  username....',
      'sw': 'Weka jina jipya la mtumiaji....',
    },
    '35ks6kgr': {
      'en': 'SUBMIT',
      'sw': 'WASILISHA',
    },
  },
  // editPhone
  {
    'r269nw73': {
      'en': 'Edit Phone Number',
      'sw': 'Badilisha Nambari ya Simu',
    },
    'mw302df7': {
      'en': 'Enter new  phone number....',
      'sw': 'Weka nambari mpya ya simu....',
    },
    'iqbeif62': {
      'en': 'SUBMIT',
      'sw': 'WASILISHA',
    },
  },
  // editLocation
  {
    '5jrc3p42': {
      'en': 'Edit Location',
      'sw': 'Badilisha Mahali',
    },
    'i93zkx30': {
      'en': 'Enter new  location....',
      'sw': 'Ingiza eneo jipya....',
    },
    '2yqgzu0a': {
      'en': 'SUBMIT',
      'sw': 'WASILISHA',
    },
  },
  // editFB
  {
    '41rmpxwo': {
      'en': 'Edit Facebook',
      'sw': 'Hariri Facebook',
    },
    'o8lcyc91': {
      'en': 'Enter new  username....',
      'sw': 'Weka linki ya Facebook....',
    },
    '77g24y47': {
      'en': 'SUBMIT',
      'sw': 'WASILISHA',
    },
  },
  // editIG
  {
    '7kszss4c': {
      'en': 'Edit Instagram',
      'sw': 'Hariri Instagram',
    },
    'v7iwtg3f': {
      'en': 'Enter new  Instagram link....',
      'sw': 'Weka linki Instagram....',
    },
    'mlmt2gez': {
      'en': 'SUBMIT',
      'sw': 'WASILISHA',
    },
  },
  // editEmail
  {
    'jlv7ayfb': {
      'en': 'Edit Email',
      'sw': 'Hariri Barua pepe',
    },
    'of17n3s9': {
      'en': 'Enter new  email....',
      'sw': 'Weka barua pepe mpya....',
    },
    'd7q73uil': {
      'en': 'SUBMIT',
      'sw': 'WASILISHA',
    },
  },
  // cartPrice
  {
    '8yzqject': {
      'en': 'Price Breakdown',
      'sw': '',
    },
    'yvekoufz': {
      'en': 'Base Price',
      'sw': '',
    },
    's17yhxae': {
      'en': '\$156.00',
      'sw': '',
    },
    'wupmrph3': {
      'en': 'Taxes',
      'sw': '',
    },
    'gsfzu6rc': {
      'en': '\$24.20',
      'sw': '',
    },
    'e3a5en4w': {
      'en': 'Cleaning Fee',
      'sw': '',
    },
    'e1uorz9i': {
      'en': '\$40.00',
      'sw': '',
    },
    '45eociva': {
      'en': 'Total',
      'sw': '',
    },
    'k8gc2c1y': {
      'en': '\$230.20',
      'sw': '',
    },
  },
  // AddBusiness
  {
    'rte556zu': {
      'en': 'Confirm to Add Business',
      'sw': 'Thibitisha Kuongeza Biashara',
    },
  },
  // RemoveBusiness
  {
    'ejbrayrd': {
      'en': 'Confirm to Remove Business',
      'sw': 'Thibitisha Kuondoa Biashara',
    },
  },
  // deposityDrepo
  {
    'xfwhawzx': {
      'en': 'Deposity Number (For selected network)',
      'sw': 'Namba ya Kuweka (Ya mtandao uliochagua)',
    },
    '9ecmv66c': {
      'en': 'enter number',
      'sw': 'weka namba',
    },
    'vl7upmtj': {
      'en': '',
      'sw': '',
    },
    'i5indo0g': {
      'en': 'Amount',
      'sw': 'Kiasi',
    },
    'ysjf4cjj': {
      'en': 'enter amount',
      'sw': 'weka kiasi',
    },
    'vti217gp': {
      'en': '',
      'sw': '',
    },
    '7a885j79': {
      'en': 'Deposit By',
      'sw': 'Weka Kwa ',
    },
    '7cgfwljn': {
      'en': 'Tigo Pesa',
      'sw': 'Tigo Pesa',
    },
    '14w5e5s1': {
      'en': 'M-PESA',
      'sw': 'M-PESA',
    },
    '67ovquw8': {
      'en': 'Airtel Money',
      'sw': 'Airtel Money',
    },
    'zhsw1van': {
      'en': 'DEPOSIT',
      'sw': 'WEKA',
    },
  },
  // withdrawDrepo
  {
    'nziwiavq': {
      'en': 'Receving Number (For selected network)',
      'sw': 'Namba ya Kupokea (Ya mtandao uliochagua)',
    },
    'jphd9m43': {
      'en': 'enter number',
      'sw': 'weka namba',
    },
    'x2sukcrs': {
      'en': '',
      'sw': '',
    },
    'j2zqs2co': {
      'en': 'Amount',
      'sw': 'Kiasi',
    },
    'xj9zfe1f': {
      'en': 'enter amount',
      'sw': 'weka kiasi',
    },
    'wci6zxn4': {
      'en': '',
      'sw': '',
    },
    'mbidw8q6': {
      'en': 'WITHDRAW',
      'sw': 'TOA',
    },
  },
  // drepoGetway
  {
    '18ub75lq': {
      'en': 'Enter Password',
      'sw': 'Ingiza neno siri',
    },
    '4wk6ybun': {
      'en': 'enter password',
      'sw': 'weka neno la siri',
    },
    'pn7e647b': {
      'en': '',
      'sw': '',
    },
    'w9zg2192': {
      'en': 'Amount',
      'sw': 'Kiasi',
    },
    'rnvz58gs': {
      'en': 'enter amount',
      'sw': 'weka kiasi',
    },
    'vvswefih': {
      'en': '',
      'sw': '',
    },
    'nls5we4l': {
      'en': 'SEND',
      'sw': 'TUMA',
    },
  },
  // PostPay
  {
    'lfzss9s6': {
      'en': 'You are paying:',
      'sw': 'Unalipa:',
    },
    'k19y60v6': {
      'en': 'Pay By',
      'sw': 'Lipa Kwa ',
    },
    'j568pgsc': {
      'en': 'Drepo Pay',
      'sw': 'Drepo Pay',
    },
    'wwm4cfb9': {
      'en': 'M-PESA',
      'sw': 'M-PESA',
    },
    'jj0zm4zg': {
      'en': 'Airtel Money',
      'sw': 'Airtel Money',
    },
    'ak6ufeyw': {
      'en': 'Tigo Pesa',
      'sw': 'Tigo Pesa',
    },
    'v3fc7sq6': {
      'en': 'Referral Code',
      'sw': 'Namba ya Wakala',
    },
    's1gnhutn': {
      'en': 'enter referral code.',
      'sw': 'ingiza namba ya wakala',
    },
    'in5slxk7': {
      'en': '',
      'sw': '',
    },
    'cwhofiqg': {
      'en': 'Delivery Details',
      'sw': 'Taarifa za Kupokea mzigo',
    },
    'lewmcbcz': {
      'en': 'enter derivary details.',
      'sw': 'ingiza taarifa za kupokea mzigo.',
    },
    '9nosdd2h': {
      'en': '',
      'sw': '',
    },
    't5gxl7bx': {
      'en': 'PAY',
      'sw': 'LIPA',
    },
  },
  // RollPay
  {
    'zmb6n2o5': {
      'en': 'You are paying:',
      'sw': 'Unalipa:',
    },
    's2kinns6': {
      'en': 'Pay By',
      'sw': 'Lipa Kwa ',
    },
    'zrd9ivpv': {
      'en': 'Drepo Pay',
      'sw': 'Drepo Pay',
    },
    'pn2g8e61': {
      'en': 'M-PESA',
      'sw': 'M-PESA',
    },
    'i02jh9wl': {
      'en': 'Airtel Money',
      'sw': 'Airtel Money',
    },
    'duwz7k76': {
      'en': 'Tigo Pesa',
      'sw': 'Tigo Pesa',
    },
    'ejbq0a6c': {
      'en': 'Referral Code',
      'sw': 'Namba ya Wakala',
    },
    'f6ha4zbu': {
      'en': 'enter referral code.',
      'sw': 'ingiza namba ya wakala',
    },
    'g4fmsl8u': {
      'en': '',
      'sw': '',
    },
    'ilf5dcs4': {
      'en': 'Delivery Details',
      'sw': 'Taarifa za Kupokea mzigo',
    },
    'iaaxkozt': {
      'en': 'enter derivary details.',
      'sw': 'ingiza taarifa za kupokea mzigo.',
    },
    'pj71hswk': {
      'en': '',
      'sw': '',
    },
    '87y0zj9j': {
      'en': 'PAY',
      'sw': 'LIPA',
    },
  },
  // postInstallment
  {
    'wpd4vni0': {
      'en': 'Goal:',
      'sw': 'Lengo:',
    },
    'a38nd9t7': {
      'en': 'Time In Months',
      'sw': 'Muda Katika Miezi',
    },
    'swd89ex0': {
      'en': 'enter time for installment in months ',
      'sw': 'ingiza muda wa malipo katika miezi',
    },
    'jde60cml': {
      'en': '',
      'sw': '',
    },
    'zbjfzoj0': {
      'en': 'Referral Code (If no enter 0000)',
      'sw': 'Namba ya Wakala (Kama hakuna andika 0000)',
    },
    '2efgfcmc': {
      'en': 'enter referral code.',
      'sw': 'ingiza namba ya wakala',
    },
    'uwhx3u1z': {
      'en': '',
      'sw': '',
    },
    'zgwrcya9': {
      'en': 'Derivery Details',
      'sw': 'Taarifa za Kupokea mzigo',
    },
    'za0zsiaq': {
      'en': 'enter derivery details.',
      'sw': 'ingiza taarifa za kupokea mzigo.',
    },
    'egvy3p5p': {
      'en': '',
      'sw': '',
    },
    'iug3ba21': {
      'en': 'SEND',
      'sw': 'TUMA',
    },
  },
  // ConfirmPay
  {
    'itvgmc5h': {
      'en': 'Confirm to Pay',
      'sw': 'Thibitisha Kulipa',
    },
  },
  // DrepoPayCart
  {
    'x5nne71r': {
      'en': ' PAY',
      'sw': 'PAY',
    },
    'jldfmqb1': {
      'en': 'Installment PAY',
      'sw': 'LIPA kigogo kidogo',
    },
  },
  // rollInstallment
  {
    'ekuoww60': {
      'en': 'Goal:',
      'sw': 'Lengo:',
    },
    'vep4koac': {
      'en': 'Time In Months',
      'sw': 'Muda Katika Miezi',
    },
    'wrt995gn': {
      'en': 'enter time for installment in months ',
      'sw': 'ingiza muda wa malipo katika miezi',
    },
    'sr9alszs': {
      'en': '',
      'sw': '',
    },
    'aoyp7762': {
      'en': 'Referral Code (If no enter 0000)',
      'sw': 'Namba ya Wakala (Kama hakuna andika 0000)',
    },
    'f4jxnbno': {
      'en': 'enter referral code.',
      'sw': 'ingiza namba ya wakala',
    },
    'q7mqtaoo': {
      'en': '',
      'sw': '',
    },
    'jfio5sn7': {
      'en': 'Derivery Details',
      'sw': 'Taarifa za Kupokea mzigo',
    },
    '3iz5y65v': {
      'en': 'enter derivery details.',
      'sw': 'ingiza taarifa za kupokea mzigo.',
    },
    'vxszho00': {
      'en': '',
      'sw': '',
    },
    'qs9oxbj3': {
      'en': 'SEND',
      'sw': 'TUMA',
    },
  },
  // postrollInstallment
  {
    'ca6nvfha': {
      'en': 'Derivery Information ',
      'sw': 'Taarifa ya Mzigo Kufikiswa',
    },
    '3tx58iud': {
      'en': 'Progress',
      'sw': 'Maendeleo',
    },
    'ogah6r14': {
      'en': 'PAY',
      'sw': 'LIPA',
    },
    'drho9ypm': {
      'en': 'Transaction History',
      'sw': 'Historia ya Miamala',
    },
    'xfl184l7': {
      'en': 'Drepo Pay ',
      'sw': 'Drepo Pay ',
    },
    'mavpe2h3': {
      'en': 'pending',
      'sw': 'inasubiri',
    },
  },
  // MobileMoneyPassRoll
  {
    'a9et81z6': {
      'en': 'Enter Password.',
      'sw': 'Ingiza neno siri.',
    },
    'z2ig92um': {
      'en': 'enter password.',
      'sw': 'ingiza namba ya siri.',
    },
    'xlfuq25t': {
      'en': '',
      'sw': '',
    },
    's80hbf44': {
      'en': 'PAY',
      'sw': 'LIPA',
    },
  },
  // MobileMoneyPassPost
  {
    'si0qwh98': {
      'en': 'Enter Password.',
      'sw': 'Ingiza neno siri.',
    },
    'q7w4r7lm': {
      'en': 'enter password.',
      'sw': 'ingiza namba ya siri.',
    },
    'cu48lv13': {
      'en': '',
      'sw': '',
    },
    'kc6cwh4v': {
      'en': 'PAY',
      'sw': 'LIPA',
    },
  },
  // InstallmentPay
  {
    'mwpvj0j7': {
      'en': 'Pay By',
      'sw': 'Lipa Kwa ',
    },
    'ls2px5m6': {
      'en': 'Drepo Pay',
      'sw': 'Drepo Pay',
    },
    'cvf3tif6': {
      'en': 'M-PESA',
      'sw': 'M-PESA',
    },
    '33dpj0ys': {
      'en': 'Airtel Money',
      'sw': 'Airtel Money',
    },
    'ryt7gfge': {
      'en': 'Tigo Pesa',
      'sw': 'Tigo Pesa',
    },
    'yvhp1nmj': {
      'en': 'PAY',
      'sw': 'LIPA',
    },
  },
  // MobileMoneyInstallment
  {
    's7jpl9lm': {
      'en': 'Enter Password.',
      'sw': 'Ingiza neno siri.',
    },
    'tq2zx6yc': {
      'en': 'enter password.',
      'sw': 'ingiza namba ya siri.',
    },
    'rlsetr4i': {
      'en': '',
      'sw': '',
    },
    '3jip0oin': {
      'en': 'PAY',
      'sw': 'LIPA',
    },
  },
  // requestRefferal
  {
    'jhq5opdx': {
      'en': 'Request Referral Code',
      'sw': 'Agiza Kodi namba ya wakala',
    },
    'sr7omb8m': {
      'en': 'SUBMIT',
      'sw': 'WASILISHA',
    },
  },
  // Miscellaneous
  {
    'b5zctzrg': {
      'en': '',
      'sw': '',
    },
    'uciubxfc': {
      'en': '',
      'sw': '',
    },
    '1wvf23wf': {
      'en': '',
      'sw': '',
    },
    'eqoebnra': {
      'en': '',
      'sw': '',
    },
    'o74u2ems': {
      'en': '',
      'sw': '',
    },
    'k8q22nuk': {
      'en': '',
      'sw': '',
    },
    't7p7r71r': {
      'en': '',
      'sw': '',
    },
    '4bhcr3nm': {
      'en': '',
      'sw': '',
    },
    '6i0qcl2w': {
      'en': '',
      'sw': '',
    },
    'ydo8klyn': {
      'en': '',
      'sw': '',
    },
    '2a5r4dsb': {
      'en': '',
      'sw': '',
    },
    's7nslm0v': {
      'en': '',
      'sw': '',
    },
    'jnq10vhl': {
      'en': '',
      'sw': '',
    },
    'sf2zpyzp': {
      'en': '',
      'sw': '',
    },
    '5vao1wgh': {
      'en': '',
      'sw': '',
    },
    'zmdek3qk': {
      'en': '',
      'sw': '',
    },
    '7qkqdzmm': {
      'en': '',
      'sw': '',
    },
    'l9emrlf5': {
      'en': '',
      'sw': '',
    },
    'nf7egi5h': {
      'en': '',
      'sw': '',
    },
    'rn3nl2vy': {
      'en': '',
      'sw': '',
    },
    '16784s96': {
      'en': '',
      'sw': '',
    },
    'fvs5vrj5': {
      'en': '',
      'sw': '',
    },
  },
].reduce((a, b) => a..addAll(b));
