<?php
/*********************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 * 
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 * 
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 * 
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo. If the display of the logo is not reasonably feasible for
 * technical reasons, the Appropriate Legal Notices must display the words
 * "Powered by SugarCRM".
 ********************************************************************************/


// THIS CONTENT IS GENERATED BY MBPackage.php
$manifest = array (
  0 => 
  array (
    'acceptable_sugar_versions' => 
    array (
      0 => '',
    ),
  ),
  1 => 
  array (
    'acceptable_sugar_flavors' => 
    array (
      0 => 'CE',
      1 => 'PRO',
      2 => 'ENT',
    ),
  ),
  'readme' => '',
  'key' => 'sel',
  'author' => '',
  'description' => '',
  'icon' => '',
  'is_uninstallable' => true,
  'name' => 'Selkirk',
  'published_date' => '2014-06-13 15:11:57',
  'type' => 'module',
  'version' => 1402672318,
  'remove_tables' => 'prompt',
);


$installdefs = array (
  'id' => 'Selkirk',
  'beans' => 
  array (
    0 => 
    array (
      'module' => 'sel_Selkirk_Activity',
      'class' => 'sel_Selkirk_Activity',
      'path' => 'modules/sel_Selkirk_Activity/sel_Selkirk_Activity.php',
      'tab' => true,
    ),
    1 => 
    array (
      'module' => 'sel_Selkirk_Service',
      'class' => 'sel_Selkirk_Service',
      'path' => 'modules/sel_Selkirk_Service/sel_Selkirk_Service.php',
      'tab' => true,
    ),
    2 => 
    array (
      'module' => 'sel_Selkirk_Funding',
      'class' => 'sel_Selkirk_Funding',
      'path' => 'modules/sel_Selkirk_Funding/sel_Selkirk_Funding.php',
      'tab' => true,
    ),
    3 => 
    array (
      'module' => 'sel_Selkirk_Contact',
      'class' => 'sel_Selkirk_Contact',
      'path' => 'modules/sel_Selkirk_Contact/sel_Selkirk_Contact.php',
      'tab' => true,
    ),
    4 => 
    array (
      'module' => 'sel_Selkirk_Team',
      'class' => 'sel_Selkirk_Team',
      'path' => 'modules/sel_Selkirk_Team/sel_Selkirk_Team.php',
      'tab' => true,
    ),
    5 => 
    array (
      'module' => 'sel_Selkirk_Document',
      'class' => 'sel_Selkirk_Document',
      'path' => 'modules/sel_Selkirk_Document/sel_Selkirk_Document.php',
      'tab' => true,
    ),
    6 => 
    array (
      'module' => 'sel_Selkirk_Project',
      'class' => 'sel_Selkirk_Project',
      'path' => 'modules/sel_Selkirk_Project/sel_Selkirk_Project.php',
      'tab' => true,
    ),
    7 => 
    array (
      'module' => 'sel_Selkirk_Business_Case',
      'class' => 'sel_Selkirk_Business_Case',
      'path' => 'modules/sel_Selkirk_Business_Case/sel_Selkirk_Business_Case.php',
      'tab' => true,
    ),
    8 => 
    array (
      'module' => 'sel_Selkirk_Approvals',
      'class' => 'sel_Selkirk_Approvals',
      'path' => 'modules/sel_Selkirk_Approvals/sel_Selkirk_Approvals.php',
      'tab' => true,
    ),
    9 => 
    array (
      'module' => 'sel_Selkirk_MileStone',
      'class' => 'sel_Selkirk_MileStone',
      'path' => 'modules/sel_Selkirk_MileStone/sel_Selkirk_MileStone.php',
      'tab' => true,
    ),
    10 => 
    array (
      'module' => 'sel_Selkirk_Client',
      'class' => 'sel_Selkirk_Client',
      'path' => 'modules/sel_Selkirk_Client/sel_Selkirk_Client.php',
      'tab' => true,
    ),
    11 => 
    array (
      'module' => 'sel_Selkirk_Partner',
      'class' => 'sel_Selkirk_Partner',
      'path' => 'modules/sel_Selkirk_Partner/sel_Selkirk_Partner.php',
      'tab' => true,
    ),
  ),
  'layoutdefs' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/sel_selkirk_contact_sel_selkirk_activity_sel_Selkirk_Contact.php',
      'to_module' => 'sel_Selkirk_Contact',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/sel_selkirk_team_users_sel_Selkirk_Team.php',
      'to_module' => 'sel_Selkirk_Team',
    ),
    2 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/sel_selkirk_document_sel_selkirk_client_sel_Selkirk_Client.php',
      'to_module' => 'sel_Selkirk_Client',
    ),
    3 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/sel_selkirk_document_sel_selkirk_client_sel_Selkirk_Document.php',
      'to_module' => 'sel_Selkirk_Document',
    ),
    4 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/sel_selkirk_document_sel_selkirk_project_sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
    ),
    5 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/sel_selkirk_document_sel_selkirk_project_sel_Selkirk_Document.php',
      'to_module' => 'sel_Selkirk_Document',
    ),
    6 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/sel_selkirk_document_sel_selkirk_service_sel_Selkirk_Service.php',
      'to_module' => 'sel_Selkirk_Service',
    ),
    7 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/sel_selkirk_document_sel_selkirk_service_sel_Selkirk_Document.php',
      'to_module' => 'sel_Selkirk_Document',
    ),
    8 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/sel_selkirk_project_sel_selkirk_service_sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
    ),
    9 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/sel_selkirk_project_sel_selkirk_funding_sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
    ),
    10 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/sel_selkirk_project_sel_selkirk_milestone_sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
    ),
    11 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/sel_selkirk_project_sel_selkirk_partner_sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
    ),
    12 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/sel_selkirk_project_sel_selkirk_business_case_sel_Selkirk_Business_Case.php',
      'to_module' => 'sel_Selkirk_Business_Case',
    ),
    13 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/sel_selkirk_project_sel_selkirk_business_case_sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
    ),
    14 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/sel_selkirk_business_case_sel_selkirk_approvals_sel_Selkirk_Business_Case.php',
      'to_module' => 'sel_Selkirk_Business_Case',
    ),
    15 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/sel_selkirk_client_sel_selkirk_contact_sel_Selkirk_Contact.php',
      'to_module' => 'sel_Selkirk_Contact',
    ),
    16 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/sel_selkirk_client_sel_selkirk_contact_sel_Selkirk_Client.php',
      'to_module' => 'sel_Selkirk_Client',
    ),
    17 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/sel_selkirk_client_sel_selkirk_service_sel_Selkirk_Client.php',
      'to_module' => 'sel_Selkirk_Client',
    ),
    18 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/sel_selkirk_client_sel_selkirk_activity_sel_Selkirk_Client.php',
      'to_module' => 'sel_Selkirk_Client',
    ),
  ),
  'relationships' => 
  array (
    0 => 
    array (
      'meta_data' => '<basepath>/SugarModules/relationships/relationships/sel_selkirk_contact_sel_selkirk_activityMetaData.php',
    ),
    1 => 
    array (
      'meta_data' => '<basepath>/SugarModules/relationships/relationships/sel_selkirk_team_usersMetaData.php',
    ),
    2 => 
    array (
      'meta_data' => '<basepath>/SugarModules/relationships/relationships/sel_selkirk_document_sel_selkirk_clientMetaData.php',
    ),
    3 => 
    array (
      'meta_data' => '<basepath>/SugarModules/relationships/relationships/sel_selkirk_document_sel_selkirk_projectMetaData.php',
    ),
    4 => 
    array (
      'meta_data' => '<basepath>/SugarModules/relationships/relationships/sel_selkirk_document_sel_selkirk_serviceMetaData.php',
    ),
    5 => 
    array (
      'meta_data' => '<basepath>/SugarModules/relationships/relationships/sel_selkirk_project_sel_selkirk_serviceMetaData.php',
    ),
    6 => 
    array (
      'meta_data' => '<basepath>/SugarModules/relationships/relationships/sel_selkirk_project_sel_selkirk_fundingMetaData.php',
    ),
    7 => 
    array (
      'meta_data' => '<basepath>/SugarModules/relationships/relationships/sel_selkirk_project_sel_selkirk_milestoneMetaData.php',
    ),
    8 => 
    array (
      'meta_data' => '<basepath>/SugarModules/relationships/relationships/sel_selkirk_project_sel_selkirk_partnerMetaData.php',
    ),
    9 => 
    array (
      'meta_data' => '<basepath>/SugarModules/relationships/relationships/sel_selkirk_project_sel_selkirk_business_caseMetaData.php',
    ),
    10 => 
    array (
      'meta_data' => '<basepath>/SugarModules/relationships/relationships/sel_selkirk_project_sel_selkirk_teamMetaData.php',
    ),
    11 => 
    array (
      'meta_data' => '<basepath>/SugarModules/relationships/relationships/sel_selkirk_business_case_sel_selkirk_approvalsMetaData.php',
    ),
    12 => 
    array (
      'meta_data' => '<basepath>/SugarModules/relationships/relationships/sel_selkirk_client_sel_selkirk_contactMetaData.php',
    ),
    13 => 
    array (
      'meta_data' => '<basepath>/SugarModules/relationships/relationships/sel_selkirk_client_sel_selkirk_serviceMetaData.php',
    ),
    14 => 
    array (
      'meta_data' => '<basepath>/SugarModules/relationships/relationships/sel_selkirk_client_sel_selkirk_activityMetaData.php',
    ),
  ),
  'image_dir' => '<basepath>/icons',
  'copy' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/modules/sel_Selkirk_Activity',
      'to' => 'modules/sel_Selkirk_Activity',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/modules/sel_Selkirk_Service',
      'to' => 'modules/sel_Selkirk_Service',
    ),
    2 => 
    array (
      'from' => '<basepath>/SugarModules/modules/sel_Selkirk_Funding',
      'to' => 'modules/sel_Selkirk_Funding',
    ),
    3 => 
    array (
      'from' => '<basepath>/SugarModules/modules/sel_Selkirk_Contact',
      'to' => 'modules/sel_Selkirk_Contact',
    ),
    4 => 
    array (
      'from' => '<basepath>/SugarModules/modules/sel_Selkirk_Team',
      'to' => 'modules/sel_Selkirk_Team',
    ),
    5 => 
    array (
      'from' => '<basepath>/SugarModules/modules/sel_Selkirk_Document',
      'to' => 'modules/sel_Selkirk_Document',
    ),
    6 => 
    array (
      'from' => '<basepath>/SugarModules/modules/sel_Selkirk_Project',
      'to' => 'modules/sel_Selkirk_Project',
    ),
    7 => 
    array (
      'from' => '<basepath>/SugarModules/modules/sel_Selkirk_Business_Case',
      'to' => 'modules/sel_Selkirk_Business_Case',
    ),
    8 => 
    array (
      'from' => '<basepath>/SugarModules/modules/sel_Selkirk_Approvals',
      'to' => 'modules/sel_Selkirk_Approvals',
    ),
    9 => 
    array (
      'from' => '<basepath>/SugarModules/modules/sel_Selkirk_MileStone',
      'to' => 'modules/sel_Selkirk_MileStone',
    ),
    10 => 
    array (
      'from' => '<basepath>/SugarModules/modules/sel_Selkirk_Client',
      'to' => 'modules/sel_Selkirk_Client',
    ),
    11 => 
    array (
      'from' => '<basepath>/SugarModules/modules/sel_Selkirk_Partner',
      'to' => 'modules/sel_Selkirk_Partner',
    ),
  ),
  'language' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Activity.php',
      'to_module' => 'sel_Selkirk_Activity',
      'language' => 'en_us',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Activity.php',
      'to_module' => 'sel_Selkirk_Activity',
      'language' => 'es_es',
    ),
    2 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Activity.php',
      'to_module' => 'sel_Selkirk_Activity',
      'language' => 'ru_ru',
    ),
    3 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Contact.php',
      'to_module' => 'sel_Selkirk_Contact',
      'language' => 'en_us',
    ),
    4 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Contact.php',
      'to_module' => 'sel_Selkirk_Contact',
      'language' => 'es_es',
    ),
    5 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Contact.php',
      'to_module' => 'sel_Selkirk_Contact',
      'language' => 'ru_ru',
    ),
    6 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/Users.php',
      'to_module' => 'Users',
      'language' => 'en_us',
    ),
    7 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/Users.php',
      'to_module' => 'Users',
      'language' => 'es_es',
    ),
    8 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/Users.php',
      'to_module' => 'Users',
      'language' => 'ru_ru',
    ),
    9 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Team.php',
      'to_module' => 'sel_Selkirk_Team',
      'language' => 'en_us',
    ),
    10 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Team.php',
      'to_module' => 'sel_Selkirk_Team',
      'language' => 'es_es',
    ),
    11 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Team.php',
      'to_module' => 'sel_Selkirk_Team',
      'language' => 'ru_ru',
    ),
    12 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Client.php',
      'to_module' => 'sel_Selkirk_Client',
      'language' => 'en_us',
    ),
    13 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Client.php',
      'to_module' => 'sel_Selkirk_Client',
      'language' => 'es_es',
    ),
    14 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Client.php',
      'to_module' => 'sel_Selkirk_Client',
      'language' => 'ru_ru',
    ),
    15 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Document.php',
      'to_module' => 'sel_Selkirk_Document',
      'language' => 'en_us',
    ),
    16 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Document.php',
      'to_module' => 'sel_Selkirk_Document',
      'language' => 'es_es',
    ),
    17 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Document.php',
      'to_module' => 'sel_Selkirk_Document',
      'language' => 'ru_ru',
    ),
    18 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
      'language' => 'en_us',
    ),
    19 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
      'language' => 'es_es',
    ),
    20 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
      'language' => 'ru_ru',
    ),
    21 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Document.php',
      'to_module' => 'sel_Selkirk_Document',
      'language' => 'en_us',
    ),
    22 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Document.php',
      'to_module' => 'sel_Selkirk_Document',
      'language' => 'es_es',
    ),
    23 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Document.php',
      'to_module' => 'sel_Selkirk_Document',
      'language' => 'ru_ru',
    ),
    24 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Service.php',
      'to_module' => 'sel_Selkirk_Service',
      'language' => 'en_us',
    ),
    25 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Service.php',
      'to_module' => 'sel_Selkirk_Service',
      'language' => 'es_es',
    ),
    26 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Service.php',
      'to_module' => 'sel_Selkirk_Service',
      'language' => 'ru_ru',
    ),
    27 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Document.php',
      'to_module' => 'sel_Selkirk_Document',
      'language' => 'en_us',
    ),
    28 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Document.php',
      'to_module' => 'sel_Selkirk_Document',
      'language' => 'es_es',
    ),
    29 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Document.php',
      'to_module' => 'sel_Selkirk_Document',
      'language' => 'ru_ru',
    ),
    30 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Service.php',
      'to_module' => 'sel_Selkirk_Service',
      'language' => 'en_us',
    ),
    31 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Service.php',
      'to_module' => 'sel_Selkirk_Service',
      'language' => 'es_es',
    ),
    32 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Service.php',
      'to_module' => 'sel_Selkirk_Service',
      'language' => 'ru_ru',
    ),
    33 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
      'language' => 'en_us',
    ),
    34 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
      'language' => 'es_es',
    ),
    35 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
      'language' => 'ru_ru',
    ),
    36 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Funding.php',
      'to_module' => 'sel_Selkirk_Funding',
      'language' => 'en_us',
    ),
    37 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Funding.php',
      'to_module' => 'sel_Selkirk_Funding',
      'language' => 'es_es',
    ),
    38 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Funding.php',
      'to_module' => 'sel_Selkirk_Funding',
      'language' => 'ru_ru',
    ),
    39 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
      'language' => 'en_us',
    ),
    40 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
      'language' => 'es_es',
    ),
    41 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
      'language' => 'ru_ru',
    ),
    42 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_MileStone.php',
      'to_module' => 'sel_Selkirk_MileStone',
      'language' => 'en_us',
    ),
    43 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_MileStone.php',
      'to_module' => 'sel_Selkirk_MileStone',
      'language' => 'es_es',
    ),
    44 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_MileStone.php',
      'to_module' => 'sel_Selkirk_MileStone',
      'language' => 'ru_ru',
    ),
    45 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
      'language' => 'en_us',
    ),
    46 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
      'language' => 'es_es',
    ),
    47 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
      'language' => 'ru_ru',
    ),
    48 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Partner.php',
      'to_module' => 'sel_Selkirk_Partner',
      'language' => 'en_us',
    ),
    49 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Partner.php',
      'to_module' => 'sel_Selkirk_Partner',
      'language' => 'es_es',
    ),
    50 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Partner.php',
      'to_module' => 'sel_Selkirk_Partner',
      'language' => 'ru_ru',
    ),
    51 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
      'language' => 'en_us',
    ),
    52 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
      'language' => 'es_es',
    ),
    53 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
      'language' => 'ru_ru',
    ),
    54 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Business_Case.php',
      'to_module' => 'sel_Selkirk_Business_Case',
      'language' => 'en_us',
    ),
    55 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Business_Case.php',
      'to_module' => 'sel_Selkirk_Business_Case',
      'language' => 'es_es',
    ),
    56 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Business_Case.php',
      'to_module' => 'sel_Selkirk_Business_Case',
      'language' => 'ru_ru',
    ),
    57 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
      'language' => 'en_us',
    ),
    58 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
      'language' => 'es_es',
    ),
    59 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
      'language' => 'ru_ru',
    ),
    60 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Team.php',
      'to_module' => 'sel_Selkirk_Team',
      'language' => 'en_us',
    ),
    61 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Team.php',
      'to_module' => 'sel_Selkirk_Team',
      'language' => 'es_es',
    ),
    62 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Team.php',
      'to_module' => 'sel_Selkirk_Team',
      'language' => 'ru_ru',
    ),
    63 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
      'language' => 'en_us',
    ),
    64 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
      'language' => 'es_es',
    ),
    65 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
      'language' => 'ru_ru',
    ),
    66 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Approvals.php',
      'to_module' => 'sel_Selkirk_Approvals',
      'language' => 'en_us',
    ),
    67 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Approvals.php',
      'to_module' => 'sel_Selkirk_Approvals',
      'language' => 'es_es',
    ),
    68 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Approvals.php',
      'to_module' => 'sel_Selkirk_Approvals',
      'language' => 'ru_ru',
    ),
    69 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Business_Case.php',
      'to_module' => 'sel_Selkirk_Business_Case',
      'language' => 'en_us',
    ),
    70 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Business_Case.php',
      'to_module' => 'sel_Selkirk_Business_Case',
      'language' => 'es_es',
    ),
    71 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Business_Case.php',
      'to_module' => 'sel_Selkirk_Business_Case',
      'language' => 'ru_ru',
    ),
    72 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Contact.php',
      'to_module' => 'sel_Selkirk_Contact',
      'language' => 'en_us',
    ),
    73 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Contact.php',
      'to_module' => 'sel_Selkirk_Contact',
      'language' => 'es_es',
    ),
    74 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Contact.php',
      'to_module' => 'sel_Selkirk_Contact',
      'language' => 'ru_ru',
    ),
    75 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Client.php',
      'to_module' => 'sel_Selkirk_Client',
      'language' => 'en_us',
    ),
    76 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Client.php',
      'to_module' => 'sel_Selkirk_Client',
      'language' => 'es_es',
    ),
    77 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Client.php',
      'to_module' => 'sel_Selkirk_Client',
      'language' => 'ru_ru',
    ),
    78 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Service.php',
      'to_module' => 'sel_Selkirk_Service',
      'language' => 'en_us',
    ),
    79 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Service.php',
      'to_module' => 'sel_Selkirk_Service',
      'language' => 'es_es',
    ),
    80 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Service.php',
      'to_module' => 'sel_Selkirk_Service',
      'language' => 'ru_ru',
    ),
    81 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Client.php',
      'to_module' => 'sel_Selkirk_Client',
      'language' => 'en_us',
    ),
    82 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Client.php',
      'to_module' => 'sel_Selkirk_Client',
      'language' => 'es_es',
    ),
    83 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Client.php',
      'to_module' => 'sel_Selkirk_Client',
      'language' => 'ru_ru',
    ),
    84 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Activity.php',
      'to_module' => 'sel_Selkirk_Activity',
      'language' => 'en_us',
    ),
    85 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Activity.php',
      'to_module' => 'sel_Selkirk_Activity',
      'language' => 'es_es',
    ),
    86 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Activity.php',
      'to_module' => 'sel_Selkirk_Activity',
      'language' => 'ru_ru',
    ),
    87 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Client.php',
      'to_module' => 'sel_Selkirk_Client',
      'language' => 'en_us',
    ),
    88 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Client.php',
      'to_module' => 'sel_Selkirk_Client',
      'language' => 'es_es',
    ),
    89 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/sel_Selkirk_Client.php',
      'to_module' => 'sel_Selkirk_Client',
      'language' => 'ru_ru',
    ),
    90 => 
    array (
      'from' => '<basepath>/SugarModules/language/application/ru_ru.lang.php',
      'to_module' => 'application',
      'language' => 'ru_ru',
    ),
    91 => 
    array (
      'from' => '<basepath>/SugarModules/language/application/en_us.lang.php',
      'to_module' => 'application',
      'language' => 'en_us',
    ),
    92 => 
    array (
      'from' => '<basepath>/SugarModules/language/application/es_es.lang.php',
      'to_module' => 'application',
      'language' => 'es_es',
    ),
  ),
  'vardefs' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_contact_sel_selkirk_activity_sel_Selkirk_Activity.php',
      'to_module' => 'sel_Selkirk_Activity',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_contact_sel_selkirk_activity_sel_Selkirk_Contact.php',
      'to_module' => 'sel_Selkirk_Contact',
    ),
    2 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_team_users_Users.php',
      'to_module' => 'Users',
    ),
    3 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_team_users_sel_Selkirk_Team.php',
      'to_module' => 'sel_Selkirk_Team',
    ),
    4 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_document_sel_selkirk_client_sel_Selkirk_Client.php',
      'to_module' => 'sel_Selkirk_Client',
    ),
    5 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_document_sel_selkirk_client_sel_Selkirk_Document.php',
      'to_module' => 'sel_Selkirk_Document',
    ),
    6 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_document_sel_selkirk_project_sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
    ),
    7 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_document_sel_selkirk_project_sel_Selkirk_Document.php',
      'to_module' => 'sel_Selkirk_Document',
    ),
    8 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_document_sel_selkirk_service_sel_Selkirk_Service.php',
      'to_module' => 'sel_Selkirk_Service',
    ),
    9 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_document_sel_selkirk_service_sel_Selkirk_Document.php',
      'to_module' => 'sel_Selkirk_Document',
    ),
    10 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_project_sel_selkirk_service_sel_Selkirk_Service.php',
      'to_module' => 'sel_Selkirk_Service',
    ),
    11 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_project_sel_selkirk_service_sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
    ),
    12 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_project_sel_selkirk_funding_sel_Selkirk_Funding.php',
      'to_module' => 'sel_Selkirk_Funding',
    ),
    13 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_project_sel_selkirk_funding_sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
    ),
    14 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_project_sel_selkirk_milestone_sel_Selkirk_MileStone.php',
      'to_module' => 'sel_Selkirk_MileStone',
    ),
    15 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_project_sel_selkirk_milestone_sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
    ),
    16 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_project_sel_selkirk_partner_sel_Selkirk_Partner.php',
      'to_module' => 'sel_Selkirk_Partner',
    ),
    17 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_project_sel_selkirk_partner_sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
    ),
    18 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_project_sel_selkirk_business_case_sel_Selkirk_Business_Case.php',
      'to_module' => 'sel_Selkirk_Business_Case',
    ),
    19 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_project_sel_selkirk_business_case_sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
    ),
    20 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_project_sel_selkirk_team_sel_Selkirk_Team.php',
      'to_module' => 'sel_Selkirk_Team',
    ),
    21 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_project_sel_selkirk_team_sel_Selkirk_Project.php',
      'to_module' => 'sel_Selkirk_Project',
    ),
    22 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_business_case_sel_selkirk_approvals_sel_Selkirk_Approvals.php',
      'to_module' => 'sel_Selkirk_Approvals',
    ),
    23 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_business_case_sel_selkirk_approvals_sel_Selkirk_Business_Case.php',
      'to_module' => 'sel_Selkirk_Business_Case',
    ),
    24 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_client_sel_selkirk_contact_sel_Selkirk_Contact.php',
      'to_module' => 'sel_Selkirk_Contact',
    ),
    25 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_client_sel_selkirk_contact_sel_Selkirk_Client.php',
      'to_module' => 'sel_Selkirk_Client',
    ),
    26 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_client_sel_selkirk_service_sel_Selkirk_Service.php',
      'to_module' => 'sel_Selkirk_Service',
    ),
    27 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_client_sel_selkirk_service_sel_Selkirk_Client.php',
      'to_module' => 'sel_Selkirk_Client',
    ),
    28 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_client_sel_selkirk_activity_sel_Selkirk_Activity.php',
      'to_module' => 'sel_Selkirk_Activity',
    ),
    29 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/sel_selkirk_client_sel_selkirk_activity_sel_Selkirk_Client.php',
      'to_module' => 'sel_Selkirk_Client',
    ),
  ),
  'layoutfields' => 
  array (
    0 => 
    array (
      'additional_fields' => 
      array (
      ),
    ),
    1 => 
    array (
      'additional_fields' => 
      array (
        'Users' => 'sel_selkirk_team_users_name',
      ),
    ),
    2 => 
    array (
      'additional_fields' => 
      array (
      ),
    ),
    3 => 
    array (
      'additional_fields' => 
      array (
      ),
    ),
    4 => 
    array (
      'additional_fields' => 
      array (
      ),
    ),
    5 => 
    array (
      'additional_fields' => 
      array (
      ),
    ),
    6 => 
    array (
      'additional_fields' => 
      array (
      ),
    ),
    7 => 
    array (
      'additional_fields' => 
      array (
      ),
    ),
    8 => 
    array (
      'additional_fields' => 
      array (
      ),
    ),
    9 => 
    array (
      'additional_fields' => 
      array (
      ),
    ),
  ),
);