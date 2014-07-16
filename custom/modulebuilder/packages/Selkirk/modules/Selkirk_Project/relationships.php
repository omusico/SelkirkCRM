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

$relationships = array (
  'sel_selkirk_project_sel_selkirk_service' => 
  array (
    'rhs_label' => 'Services',
    'lhs_label' => 'Selkirk_Project',
    'rhs_subpanel' => 'default',
    'lhs_module' => 'sel_Selkirk_Project',
    'rhs_module' => 'sel_Selkirk_Service',
    'relationship_type' => 'one-to-many',
    'readonly' => false,
    'deleted' => false,
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => false,
    'relationship_name' => 'sel_selkirk_project_sel_selkirk_service',
  ),
  'sel_selkirk_project_sel_selkirk_funding' => 
  array (
    'rhs_label' => 'Funding',
    'lhs_label' => 'Selkirk_Project',
    'rhs_subpanel' => 'default',
    'lhs_module' => 'sel_Selkirk_Project',
    'rhs_module' => 'sel_Selkirk_Funding',
    'relationship_type' => 'one-to-many',
    'readonly' => false,
    'deleted' => false,
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => false,
    'relationship_name' => 'sel_selkirk_project_sel_selkirk_funding',
  ),
  'sel_selkirk_project_sel_selkirk_milestone' => 
  array (
    'rhs_label' => 'MileStones',
    'lhs_label' => 'Selkirk_Project',
    'rhs_subpanel' => 'default',
    'lhs_module' => 'sel_Selkirk_Project',
    'rhs_module' => 'sel_Selkirk_MileStone',
    'relationship_type' => 'one-to-many',
    'readonly' => false,
    'deleted' => false,
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => false,
    'relationship_name' => 'sel_selkirk_project_sel_selkirk_milestone',
  ),
  'sel_selkirk_project_sel_selkirk_partner' => 
  array (
    'rhs_label' => 'Partner Contributions',
    'lhs_label' => 'Selkirk_Project',
    'rhs_subpanel' => 'default',
    'lhs_module' => 'sel_Selkirk_Project',
    'rhs_module' => 'sel_Selkirk_Partner',
    'relationship_type' => 'one-to-many',
    'readonly' => false,
    'deleted' => false,
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => false,
    'relationship_name' => 'sel_selkirk_project_sel_selkirk_partner',
  ),
  'sel_selkirk_project_sel_selkirk_business_case' => 
  array (
    'rhs_label' => 'Business Cases',
    'lhs_label' => 'Projects',
    'lhs_subpanel' => 'default',
    'rhs_subpanel' => 'default',
    'lhs_module' => 'sel_Selkirk_Project',
    'rhs_module' => 'sel_Selkirk_Business_Case',
    'relationship_type' => 'many-to-many',
    'readonly' => false,
    'deleted' => false,
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => false,
    'relationship_name' => 'sel_selkirk_project_sel_selkirk_business_case',
  ),
  'sel_selkirk_project_sel_selkirk_team' => 
  array (
    'rhs_label' => 'Team',
    'lhs_label' => 'Project',
    'lhs_subpanel' => 'default',
    'rhs_subpanel' => 'default',
    'lhs_module' => 'sel_Selkirk_Project',
    'rhs_module' => 'sel_Selkirk_Team',
    'relationship_type' => 'many-to-many',
    'readonly' => false,
    'deleted' => false,
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => false,
    'relationship_name' => 'sel_selkirk_project_sel_selkirk_team',
  ),
  'sel_selkirk_project_securitygroups' => 
  array (
    'rhs_label' => 'Security Groups Management',
    'lhs_label' => 'Project',
    'lhs_subpanel' => 'default',
    'rhs_subpanel' => 'ForUsers',
    'lhs_module' => 'sel_Selkirk_Project',
    'rhs_module' => 'SecurityGroups',
    'relationship_type' => 'many-to-many',
    'readonly' => false,
    'deleted' => false,
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => false,
    'relationship_name' => 'sel_selkirk_project_securitygroups',
  ),
);