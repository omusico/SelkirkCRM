<?php
// created: 2014-09-03 09:02:52
$sugar_config = array (
  'SAML_X509Cert' => '',
  'SAML_loginurl' => '',
  'addAjaxBannedModules' => 
  array (
    0 => 'SecurityGroups',
    1 => 'Home',
    2 => 'Calls',
    3 => 'sel_Selkirk_Activity',
    4 => 'AOS_Quotes',
    5 => 'AOS_Products',
    6 => 'AOS_PDF_Templates',
    7 => 'AOS_Product_Categories',
    8 => 'AOS_Invoices',
    9 => 'AOS_Contracts',
    10 => 'jjwg_Address_Cache',
    11 => 'jjwg_Areas',
    12 => 'jjwg_Markers',
    13 => 'jjwg_Maps',
    14 => 'AOW_WorkFlow',
    15 => 'FP_Event_Locations',
    16 => 'FP_events',
    17 => 'jjwg_Address_Cache',
    18 => 'jjwg_Areas',
    19 => 'jjwg_Markers',
    20 => 'sel_Selkirk_Service',
    21 => 'jjwg_Maps',
    22 => 'sel_Selkirk_Funding',
    23 => 'sel_Selkirk_Contact',
    24 => 'AOR_Reports',
    25 => 'Bugs',
    26 => 'sel_Selkirk_Document',
    27 => 'Cases',
    28 => 'sel_Selkirk_Project',
    29 => 'sel_Selkirk_Business_Case',
    30 => 'ProspectLists',
    31 => 'sel_Selkirk_MileStone',
    32 => 'Prospects',
    33 => 'sel_Selkirk_Client',
    34 => 'Opportunities',
    35 => 'sel_Selkirk_Partner',
    36 => 'Tasks',
    37 => 'Accounts',
    38 => 'Notes',
    39 => 'Contacts',
    40 => 'Leads',
    41 => 'Meetings',
  ),
  'admin_access_control' => false,
  'admin_export_only' => false,
  'aod' => 
  array (
    'enable_aod' => true,
  ),
  'aop' => 
  array (
    'distribution_method' => 'roundRobin',
    'case_closure_email_template_id' => 'e0fa0ca3-9719-0ea0-bd05-5372304d987d',
    'joomla_account_creation_email_template_id' => 'e2c575e1-e12e-2bf4-435b-5372307324d2',
    'case_creation_email_template_id' => 'e6c441da-c1c4-8e1f-b56d-537230bb3c77',
    'contact_email_template_id' => 'e9511db2-5be5-bdab-9965-5372309f2db6',
    'user_email_template_id' => 'eb636ca4-7955-85b5-6898-5372304c4b43',
  ),
  'aos' => 
  array (
    'version' => '5.3.3',
    'contracts' => 
    array (
      'renewalReminderPeriod' => '14',
    ),
    'lineItems' => 
    array (
      'totalTax' => false,
      'enableGroups' => true,
    ),
    'invoices' => 
    array (
      'initialNumber' => '1',
    ),
    'quotes' => 
    array (
      'initialNumber' => '1',
    ),
  ),
  'authenticationClass' => '',
  'cache_dir' => 'cache/',
  'calculate_response_time' => false,
  'calendar' => 
  array (
    'default_view' => 'week',
    'show_calls_by_default' => true,
    'show_tasks_by_default' => true,
    'show_completed_by_default' => true,
    'editview_width' => 990,
    'editview_height' => 485,
    'day_timestep' => 15,
    'week_timestep' => 30,
    'items_draggable' => true,
    'items_resizable' => true,
    'enable_repeat' => true,
    'max_repeat_count' => 1000,
  ),
  'chartEngine' => 'Jit',
  'colourselector' => 
  array (
    'version' => '1.0',
    'menu' => 'A2CB37',
    'menufrom' => '7B9D28',
    'menuto' => 'A2CB37',
    'menufont' => 'FFFFFF',
    'menubrd' => '7B9D28',
    'pageheader' => '7D6A59',
    'pagelink' => 'A2CB37',
    'dashlet' => '777777',
    'button1' => 'FFFFFF',
    'button2' => 'F3F3F3',
    'button3' => 'EDEDED',
    'button4' => 'FFFFFF',
    'buttonhover' => 'F10202',
    'modlinkvisited' => 'FFFFFF',
    'modlisthover' => 'A2CB37',
    'modlinkhover' => 'FFFFFF',
    'cssmenu' => '90B82F',
    'cssmenulink' => 'FFFFFF',
  ),
  'columns' => '',
  'common_ml_dir' => '',
  'create_default_user' => false,
  'cron' => 
  array (
    'max_cron_jobs' => 10,
    'max_cron_runtime' => 30,
    'min_cron_interval' => 30,
  ),
  'currency' => '',
  'dashlet_auto_refresh_min' => '30',
  'dashlet_display_row_options' => 
  array (
    0 => '1',
    1 => '3',
    2 => '5',
    3 => '10',
  ),
  'date_formats' => 
  array (
    'Y-m-d' => '2010-12-23',
    'm-d-Y' => '12-23-2010',
    'd-m-Y' => '23-12-2010',
    'Y/m/d' => '2010/12/23',
    'm/d/Y' => '12/23/2010',
    'd/m/Y' => '23/12/2010',
    'Y.m.d' => '2010.12.23',
    'd.m.Y' => '23.12.2010',
    'm.d.Y' => '12.23.2010',
  ),
  'datef' => 'm/d/Y',
  'dbconfig' => 
  array (
    'db_host_name' => 'localhost',
    'db_host_instance' => 'SQLEXPRESS',
    'db_user_name' => 'root',
    'db_password' => '',
    'db_name' => 'selkirkcrm',
    'db_type' => 'mysql',
    'db_port' => '',
    'db_manager' => 'MysqliManager',
  ),
  'dbconfigoption' => 
  array (
    'persistent' => true,
    'autofree' => false,
    'debug' => 0,
    'ssl' => false,
  ),
  'default_action' => 'index',
  'default_charset' => 'UTF-8',
  'default_currencies' => 
  array (
    'AUD' => 
    array (
      'name' => 'Australian Dollars',
      'iso4217' => 'AUD',
      'symbol' => '$',
    ),
    'BRL' => 
    array (
      'name' => 'Brazilian Reais',
      'iso4217' => 'BRL',
      'symbol' => 'R$',
    ),
    'GBP' => 
    array (
      'name' => 'British Pounds',
      'iso4217' => 'GBP',
      'symbol' => '£',
    ),
    'CAD' => 
    array (
      'name' => 'Canadian Dollars',
      'iso4217' => 'CAD',
      'symbol' => '$',
    ),
    'CNY' => 
    array (
      'name' => 'Chinese Yuan',
      'iso4217' => 'CNY',
      'symbol' => '￥',
    ),
    'EUR' => 
    array (
      'name' => 'Euro',
      'iso4217' => 'EUR',
      'symbol' => '€',
    ),
    'HKD' => 
    array (
      'name' => 'Hong Kong Dollars',
      'iso4217' => 'HKD',
      'symbol' => '$',
    ),
    'INR' => 
    array (
      'name' => 'Indian Rupees',
      'iso4217' => 'INR',
      'symbol' => '₨',
    ),
    'KRW' => 
    array (
      'name' => 'Korean Won',
      'iso4217' => 'KRW',
      'symbol' => '₩',
    ),
    'YEN' => 
    array (
      'name' => 'Japanese Yen',
      'iso4217' => 'JPY',
      'symbol' => '¥',
    ),
    'MXM' => 
    array (
      'name' => 'Mexican Pesos',
      'iso4217' => 'MXM',
      'symbol' => '$',
    ),
    'SGD' => 
    array (
      'name' => 'Singaporean Dollars',
      'iso4217' => 'SGD',
      'symbol' => '$',
    ),
    'CHF' => 
    array (
      'name' => 'Swiss Franc',
      'iso4217' => 'CHF',
      'symbol' => 'SFr.',
    ),
    'THB' => 
    array (
      'name' => 'Thai Baht',
      'iso4217' => 'THB',
      'symbol' => '฿',
    ),
    'USD' => 
    array (
      'name' => 'US Dollars',
      'iso4217' => 'USD',
      'symbol' => '$',
    ),
  ),
  'default_currency_iso4217' => 'CA',
  'default_currency_name' => 'CA Dollars',
  'default_currency_significant_digits' => 2,
  'default_currency_symbol' => '$',
  'default_date_format' => 'm/d/Y',
  'default_decimal_seperator' => '.',
  'default_email_charset' => 'UTF-8',
  'default_email_client' => 'sugar',
  'default_email_editor' => 'html',
  'default_export_charset' => 'UTF-8',
  'default_language' => 'en_us',
  'default_locale_name_format' => 's f l',
  'default_max_tabs' => 10,
  'default_module' => 'Home',
  'default_module_favicon' => false,
  'default_navigation_paradigm' => 'gm',
  'default_number_grouping_seperator' => ',',
  'default_password' => '',
  'default_permissions' => 
  array (
    'dir_mode' => 1528,
    'file_mode' => 432,
    'user' => '',
    'group' => '',
  ),
  'default_subpanel_links' => false,
  'default_subpanel_tabs' => true,
  'default_swap_last_viewed' => false,
  'default_swap_shortcuts' => false,
  'default_theme' => 'Suite7',
  'default_time_format' => 'h:ia',
  'default_user_is_admin' => false,
  'default_user_name' => '',
  'demoData' => 'no',
  'developerMode' => false,
  'disable_convert_lead' => false,
  'disable_export' => false,
  'disable_persistent_connections' => 'false',
  'disabled_languages' => 'es_es,ru_ru',
  'display_email_template_variable_chooser' => false,
  'display_inbound_email_buttons' => false,
  'dump_slow_queries' => false,
  'email_address_separator' => ',',
  'email_default_client' => 'sugar',
  'email_default_delete_attachments' => true,
  'email_default_editor' => 'html',
  'email_xss' => 'YToxMzp7czo2OiJhcHBsZXQiO3M6NjoiYXBwbGV0IjtzOjQ6ImJhc2UiO3M6NDoiYmFzZSI7czo1OiJlbWJlZCI7czo1OiJlbWJlZCI7czo0OiJmb3JtIjtzOjQ6ImZvcm0iO3M6NToiZnJhbWUiO3M6NToiZnJhbWUiO3M6ODoiZnJhbWVzZXQiO3M6ODoiZnJhbWVzZXQiO3M6NjoiaWZyYW1lIjtzOjY6ImlmcmFtZSI7czo2OiJpbXBvcnQiO3M6ODoiXD9pbXBvcnQiO3M6NToibGF5ZXIiO3M6NToibGF5ZXIiO3M6NDoibGluayI7czo0OiJsaW5rIjtzOjY6Im9iamVjdCI7czo2OiJvYmplY3QiO3M6MzoieG1wIjtzOjM6InhtcCI7czo2OiJzY3JpcHQiO3M6Njoic2NyaXB0Ijt9',
  'enable_action_menu' => true,
  'export_delimiter' => ',',
  'export_excel_compatible' => false,
  'hide_history_contacts_emails' => 
  array (
    'Cases' => true,
    'Accounts' => true,
    'Opportunities' => true,
  ),
  'history_max_viewed' => 50,
  'host_name' => 'rdi-connect.sgrc.selkirk.ca',
  'import_max_execution_time' => 3600,
  'import_max_records_per_file' => 100,
  'import_max_records_total_limit' => '',
  'installer_locked' => true,
  'jobs' => 
  array (
    'min_retry_interval' => 30,
    'max_retries' => 5,
    'timeout' => 86400,
  ),
  'js_custom_version' => 1,
  'js_lang_version' => 40,
  'languages' => 
  array (
    'en_us' => 'English (US)',
    'es_es' => 'Español (ES)',
    'ru_ru' => 'Русский (RU)',
  ),
  'large_scale_test' => false,
  'lead_conv_activity_opt' => 'donothing',
  'list_max_entries_per_page' => '250',
  'list_max_entries_per_subpanel' => '5',
  'lock_default_user_name' => false,
  'lock_homepage' => false,
  'lock_subpanels' => false,
  'log_dir' => '.',
  'log_file' => 'suitecrm.log',
  'log_memory_usage' => false,
  'logger' => 
  array (
    'level' => 'fatal',
    'file' => 
    array (
      'ext' => '.log',
      'name' => 'sugarcrm',
      'dateFormat' => '%c',
      'maxSize' => '10MB',
      'maxLogs' => 10,
      'suffix' => '',
    ),
  ),
  'max_dashlets_homepage' => '15',
  'name_formats' => 
  array (
    's f l' => 's f l',
    'f l' => 'f l',
    's l' => 's l',
    'l, s f' => 'l, s f',
    'l, f' => 'l, f',
    's l, f' => 's l, f',
    'l s f' => 'l s f',
    'l f s' => 'l f s',
  ),
  'passwordsetting' => 
  array (
    'SystemGeneratedPasswordON' => '1',
    'generatepasswordtmpl' => 'b069c8c3-a6f9-425a-f6ac-5372300517be',
    'lostpasswordtmpl' => 'b238c53d-bba5-f266-5254-537230d9eb50',
    'forgotpasswordON' => true,
    'linkexpiration' => true,
    'linkexpirationtime' => 24,
    'linkexpirationtype' => 60,
    'systexpiration' => '2',
    'systexpirationtime' => '',
    'systexpirationtype' => '1',
    'systexpirationlogin' => '0',
    'minpwdlength' => 6,
    'oneupper' => false,
    'onelower' => false,
    'onenumber' => false,
  ),
  'portal_view' => 'single_user',
  'require_accounts' => true,
  'resource_management' => 
  array (
    'special_query_limit' => 50000,
    'special_query_modules' => 
    array (
      0 => 'Reports',
      1 => 'Export',
      2 => 'Import',
      3 => 'Administration',
      4 => 'Sync',
    ),
    'default_limit' => 5000,
  ),
  'rss_cache_time' => '10800',
  'save_query' => 'no',
  'search_wildcard_char' => '*',
  'search_wildcard_infront' => false,
  'securitysuite_additive' => true,
  'securitysuite_filter_user_list' => false,
  'securitysuite_inherit_assigned' => false,
  'securitysuite_inherit_creator' => false,
  'securitysuite_inherit_parent' => false,
  'securitysuite_popup_select' => false,
  'securitysuite_strict_rights' => true,
  'securitysuite_user_popup' => false,
  'securitysuite_user_role_precedence' => false,
  'securitysuite_version' => '6.5.16',
  'session_dir' => '',
  'showDetailData' => true,
  'showThemePicker' => true,
  'site_url' => 'http://rdi-connect.sgrc.selkirk.ca/SelkirkCRM',
  'slow_query_time_msec' => '100',
  'stack_trace_errors' => false,
  'sugar_version' => '6.5.16',
  'sugarbeet' => false,
  'suitecrm_version' => '7.1.1',
  'time_formats' => 
  array (
    'H:i' => '23:00',
    'h:ia' => '11:00pm',
    'h:iA' => '11:00PM',
    'h:i a' => '11:00 pm',
    'h:i A' => '11:00 PM',
    'H.i' => '23.00',
    'h.ia' => '11.00pm',
    'h.iA' => '11.00PM',
    'h.i a' => '11.00 pm',
    'h.i A' => '11.00 PM',
  ),
  'timef' => 'H:i',
  'tmp_dir' => 'cache/xml/',
  'tracker_max_display_length' => 15,
  'translation_string_prefix' => false,
  'unique_key' => '2f2bdc99e4ae312fb8f8b41e5fe268c0',
  'upload_badext' => 
  array (
    0 => 'php',
    1 => 'php3',
    2 => 'php4',
    3 => 'php5',
    4 => 'pl',
    5 => 'cgi',
    6 => 'py',
    7 => 'asp',
    8 => 'cfm',
    9 => 'js',
    10 => 'vbs',
    11 => 'html',
    12 => 'htm',
  ),
  'upload_dir' => 'upload/',
  'upload_maxsize' => 30000000,
  'use_common_ml_dir' => false,
  'use_real_names' => true,
  'vcal_time' => '2',
  'verify_client_ip' => true,
);