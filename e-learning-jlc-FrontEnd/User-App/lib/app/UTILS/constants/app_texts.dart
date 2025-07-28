// ignore_for_file: constant_identifier_names

class TLangKey {
  TLangKey._(); // Prevent instantiation
  static const boxId = 'boxId';
  static const boxName = 'boxName';
  static const productName = 'productName';
  static const organization = 'organization';
  static const boxType = 'boxType';
  static const currentStocks = 'currentStocks';
  static const maxLimit = 'maxLimit';
  static const minLimit = 'minLimit';
  static const weightPerPiece = 'weightPerPiece';
  static const connectionStatus = 'connectionStatus';
  static const assignedStatus = 'assignedStatus';

  static const allBoxes = 'allBoxes';
  static const search = 'search';
  static const addNewBox = 'addNewBox';
  static const lastSynced = 'lastSynced';
  static const minutesAgo = 'minutesAgo';
  static const allProducts = 'allProducts';
  static const menu = 'menu';
  static const addNew = 'addNew';
  static const category = 'Category';
  static const vendorName = 'Vendor Name';
  static const stockStatus = 'Stock Status';

  // Login
  static const WelcomeBack = "Welcome Back!";
  static const PleaseLogin = "Please Login ";
  static const EmailAdress = "Email Adress ";
  static const ExampleEmailAdress = "eg; example@gmail.com";
  static const Password = "Password ";
  static const EnterEmailAddress = "Enter email address";
  static const EnterPassword = "Enter password";
  static const RememberMe = "Remember me";
  static const Login = "Login";
  static const DontHaveAnAccount = "Don't have an account?";
  static const SignUp = "Sign Up";

  // Registration
  // Name Fields
  static const GetMoreOpportunities = "Get more opportunities";
  static const SeiFamilyName = "Sei / Family Name";
  static const MeiGivenNamee = "Mei / Given Name";
  static const SeiKana = "Sei Kana";
  static const MeiKana = "Mei Kana";

  // Input Examples
  static const ExampleForhad = "eg: Forhad";
  static const ExampleHossen = "eg: Hossen";
  static const ExampleMeiKana = "eg: フォルハド";
  static const ExampleSeiKana = "eg: ホセン";

  // Account Fields
  static const Email = "Email";
  static const ConfirmPassword = "Confirm Password";
  static const ReEnterPassword = "Re-enter password";
  static const PhoneNumber = "Phone Number";

  // Nationality and Country
  static const Nationality = "Nationality";
  static const SelectCountry = "Select Country";

  // Other Personal Info
  static const DateOfBirth = "Date of Birth";
  static const Gender = "Gender";
  static const Select = "Select";

  // Japanese Level
  static const JapaneseLevel = "Japanese Level";
  static const JapaneseLevelBasic = "Basic / N5";
  static const JapaneseLevelConversational = "Conversational / N4-N3";
  static const JapaneseLevelBusiness = "Business / N2";
  static const JapaneseLevelFluent = "Fluent / N1 or native";

  // Job Info
  static const CurrentJobType = "Current Job Type";
  static const DesiredIndustry = "Desired Industry";
  static const DesiredOccupation = "Desired Occupation";

  // Buttons and Info
  static const Register = "Register";
  static const TermsAndPolicyNotice =
      "By clicking 'Continue', you acknowledge that you have read and accept the";
  static const TermsOfService = "Terms of Service";
  static const PrivacyPolicy = "Privacy Policy";
}

class TLanguages {
  static const Map<String, String> enUS = {
    TLangKey.boxId: 'Box ID',
    TLangKey.boxName: 'Box Name',
    TLangKey.productName: 'Product Name',
    TLangKey.organization: 'Organization',
    TLangKey.boxType: 'Box Type',
    TLangKey.currentStocks: 'Current Stocks',
    TLangKey.maxLimit: 'Max Limit',
    TLangKey.minLimit: 'Min Limit',
    TLangKey.weightPerPiece: 'Weight / Piece',
    TLangKey.connectionStatus: 'Connection',
    TLangKey.assignedStatus: 'Assigned',

    TLangKey.allBoxes: 'All Boxes',
    TLangKey.search: 'Search',
    TLangKey.addNewBox: 'Add New Box',
    TLangKey.lastSynced: 'Last synced',
    TLangKey.minutesAgo: 'minutes ago',
    TLangKey.allProducts: 'All Products',
    TLangKey.menu: 'Menu',
    TLangKey.addNew: "Add New",

    TLangKey.category: 'Category',
    TLangKey.vendorName: 'Vendor Name',
    TLangKey.stockStatus: 'Stock Status',

    TLangKey.WelcomeBack: "Welcome Back!",
    TLangKey.PleaseLogin: "Please Login ",
    TLangKey.EmailAdress: "Email Adress ",
    TLangKey.Password: "Password ",
    TLangKey.EnterEmailAddress: "Enter email address",
    TLangKey.EnterPassword: "Enter password",
    TLangKey.RememberMe: "Remember me",
    TLangKey.Login: "Login",
    TLangKey.DontHaveAnAccount: "Don't have an account?",
    TLangKey.SignUp: "Sign Up",

    TLangKey.GetMoreOpportunities: TLangKey.GetMoreOpportunities,
    TLangKey.SeiFamilyName: "Sei / Given Name",
    TLangKey.MeiGivenNamee: "Mei / Given Name",

    TLangKey.ExampleForhad: "eg: Forhad",
    TLangKey.ExampleHossen: "eg: Hossen",
    TLangKey.ExampleMeiKana: "eg: フォルハド",
    TLangKey.ExampleSeiKana: "eg: ホセン",

    TLangKey.SeiKana: "Sei Kana",
    TLangKey.MeiKana: "Mei Kana",

    TLangKey.Email: "Email",
    TLangKey.ConfirmPassword: "Confirm Password",
    TLangKey.PhoneNumber: "Phone Number",

    TLangKey.Nationality: "Nationality",
    TLangKey.SelectCountry: "Select Country",

    TLangKey.DateOfBirth: "Date of Birth",
    TLangKey.Gender: "Gender",
    TLangKey.Select: "Select",

    TLangKey.JapaneseLevel: "Japanese Level",
    TLangKey.JapaneseLevelBasic: "Basic / N5",
    TLangKey.JapaneseLevelConversational: "Conversational / N4-N3",
    TLangKey.JapaneseLevelBusiness: "Business / N2",
    TLangKey.JapaneseLevelFluent: "Fluent / N1 or native",

    TLangKey.CurrentJobType: "Current Job Type",
    TLangKey.DesiredIndustry: "Desired Industry",
    TLangKey.DesiredOccupation: "Desired Occupation",

    TLangKey.Register: "Register",
    TLangKey.TermsAndPolicyNotice:
        "By clicking 'Continue', you acknowledge that you have read and accept the",
    TLangKey.TermsOfService: "Terms of Service",
    TLangKey.PrivacyPolicy: "Privacy Policy",
  };

  static const Map<String, String> jaJP = {
    TLangKey.boxId: 'ボックスID',
    TLangKey.boxName: 'ボックス名',
    TLangKey.productName: '商品名',
    TLangKey.organization: '組織',
    TLangKey.boxType: '箱の種類',
    TLangKey.currentStocks: '現在の在庫数',
    TLangKey.maxLimit: '上限',
    TLangKey.minLimit: '最小在庫数',
    TLangKey.weightPerPiece: '重量 / 個数',
    TLangKey.connectionStatus: '接続状況',
    TLangKey.assignedStatus: '担当ステータス',

    TLangKey.allBoxes: 'すべての ボックス',
    TLangKey.search: '検索',
    TLangKey.addNewBox: '新規ボックス追加',
    TLangKey.lastSynced: '最終同期',
    TLangKey.minutesAgo: '分前',
    TLangKey.allProducts: 'すべての商品',
    TLangKey.menu: 'メニュー',
    TLangKey.addNew: '新規追加',

    TLangKey.category: 'カテゴリー',
    TLangKey.vendorName: '販売者',
    TLangKey.stockStatus: '在庫状況',
  };
}

class TDemoData {
  TDemoData._();
  static const List<String> tableHeaders = [
    TLangKey.boxId,
    TLangKey.boxName,
    /*TTextKeys.productName,
    TTextKeys.organization, */
    TLangKey.boxType,
    TLangKey.currentStocks,
    TLangKey.maxLimit,
    TLangKey.minLimit,
    TLangKey.weightPerPiece,
    TLangKey.connectionStatus,
    TLangKey.assignedStatus,
  ];
  static const List<String> boxData1 = [
    "BX0001",
    "CocaCoola",
    /* "CocaCoola",
    "Restaurant A", */
    "Piece",
    "30",
    "50",
    "10",
    "1.2 Kg",
    "Connected",
    "Yes",
  ];
  static const List<String> boxData2 = [
    "BX0002",
    "Beef",
    /* "Beef",
    "Restaurant A", */
    "Weight",
    "8",
    "40",
    "10",
    "1.2 Kg",
    "Disconnected",
    "No",
  ];

  static const List<List<String>> boxDataList = [
    boxData1,
    boxData2,
    boxData1,
    boxData2,
    boxData1,
    boxData2,
    boxData1,
    boxData2,
    boxData1,
    boxData2,
    boxData1,
    boxData2,
  ];
}

class TAppData {
  TAppData._();
  static const List<String> allBoxesTableHeaders = [
    // TLangKeys.boxId,
    TLangKey.boxName,
    TLangKey.productName,
    TLangKey.organization,
    TLangKey.boxType,
    TLangKey.currentStocks,
    TLangKey.stockStatus,
    TLangKey.maxLimit,
    TLangKey.minLimit,
    TLangKey.weightPerPiece,
    TLangKey.connectionStatus,
    TLangKey.assignedStatus,
  ];
  static const List<String> allProductsTableHeaders = [
    TLangKey.productName,
    TLangKey.organization,

    TLangKey.category,
    // TLangKeys.boxName,
    TLangKey.currentStocks,
    TLangKey.vendorName,
    // TLangKeys.stockStatus,
    TLangKey.assignedStatus,

    /* 
    Product Name
    Organaization
    Category
    Box Name
    Current stock 
    Vendor Name
    Stcok Status
    Assigned Status */
  ];
}
