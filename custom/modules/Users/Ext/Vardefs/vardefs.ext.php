<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2012-08-23 23:17:02
$dictionary["User"]["fields"]["dash_dashboardmanager_users_2"] = array (
  'name' => 'dash_dashboardmanager_users_2',
  'type' => 'link',
  'relationship' => 'dash_dashboardmanager_users_2',
  'source' => 'non-db',
  'vname' => 'LBL_DASH_DASHBOARDMANAGER_USERS_2_FROM_DASH_DASHBOARDMANAGER_TITLE',
  'id_name' => 'dash_dashboardmanager_users_2dash_dashboardmanager_ida',
);
$dictionary["User"]["fields"]["dash_dashboardmanager_users_2_name"] = array (
  'name' => 'dash_dashboardmanager_users_2_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_DASH_DASHBOARDMANAGER_USERS_2_FROM_DASH_DASHBOARDMANAGER_TITLE',
  'save' => true,
  'id_name' => 'dash_dashboardmanager_users_2dash_dashboardmanager_ida',
  'link' => 'dash_dashboardmanager_users_2',
  'table' => 'dash_dashboardmanager',
  'module' => 'dash_DashboardManager',
  'rname' => 'name',
);
$dictionary["User"]["fields"]["dash_dashboardmanager_users_2dash_dashboardmanager_ida"] = array (
  'name' => 'dash_dashboardmanager_users_2dash_dashboardmanager_ida',
  'type' => 'link',
  'relationship' => 'dash_dashboardmanager_users_2',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_DASH_DASHBOARDMANAGER_USERS_2_FROM_USERS_TITLE',
);


// created: 2012-08-23 23:17:02
$dictionary["User"]["fields"]["dash_dashboardmanager_users_1"] = array (
  'name' => 'dash_dashboardmanager_users_1',
  'type' => 'link',
  'relationship' => 'dash_dashboardmanager_users_1',
  'source' => 'non-db',
  'vname' => 'LBL_DASH_DASHBOARDMANAGER_USERS_1_FROM_DASH_DASHBOARDMANAGER_TITLE',
  'id_name' => 'dash_dashboardmanager_users_1dash_dashboardmanager_ida',
);
$dictionary["User"]["fields"]["dash_dashboardmanager_users_1_name"] = array (
  'name' => 'dash_dashboardmanager_users_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_DASH_DASHBOARDMANAGER_USERS_1_FROM_DASH_DASHBOARDMANAGER_TITLE',
  'save' => true,
  'id_name' => 'dash_dashboardmanager_users_1dash_dashboardmanager_ida',
  'link' => 'dash_dashboardmanager_users_1',
  'table' => 'dash_dashboardmanager',
  'module' => 'dash_DashboardManager',
  'rname' => 'name',
);
$dictionary["User"]["fields"]["dash_dashboardmanager_users_1dash_dashboardmanager_ida"] = array (
  'name' => 'dash_dashboardmanager_users_1dash_dashboardmanager_ida',
  'type' => 'link',
  'relationship' => 'dash_dashboardmanager_users_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_DASH_DASHBOARDMANAGER_USERS_1_FROM_USERS_TITLE',
);


// created: 2012-08-23 23:17:02
$dictionary["User"]["fields"]["dash_dashboardmanager_users"] = array (
  'name' => 'dash_dashboardmanager_users',
  'type' => 'link',
  'relationship' => 'dash_dashboardmanager_users',
  'source' => 'non-db',
  'vname' => 'LBL_DASH_DASHBOARDMANAGER_USERS_FROM_DASH_DASHBOARDMANAGER_TITLE',
  'id_name' => 'dash_dashboardmanager_usersdash_dashboardmanager_ida',
);
$dictionary["User"]["fields"]["dash_dashboardmanager_users_name"] = array (
  'name' => 'dash_dashboardmanager_users_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_DASH_DASHBOARDMANAGER_USERS_FROM_DASH_DASHBOARDMANAGER_TITLE',
  'save' => true,
  'id_name' => 'dash_dashboardmanager_usersdash_dashboardmanager_ida',
  'link' => 'dash_dashboardmanager_users',
  'table' => 'dash_dashboardmanager',
  'module' => 'dash_DashboardManager',
  'rname' => 'name',
);
$dictionary["User"]["fields"]["dash_dashboardmanager_usersdash_dashboardmanager_ida"] = array (
  'name' => 'dash_dashboardmanager_usersdash_dashboardmanager_ida',
  'type' => 'link',
  'relationship' => 'dash_dashboardmanager_users',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_DASH_DASHBOARDMANAGER_USERS_FROM_USERS_TITLE',
);



$dictionary["User"]["fields"]["SecurityGroups"] = array (
    'name' => 'SecurityGroups',
    'type' => 'link',
    'relationship' => 'securitygroups_users',
    'source' => 'non-db',
    'module' => 'SecurityGroups',
    'bean_name' => 'SecurityGroup',
    'vname' => 'LBL_SECURITYGROUPS',
);  
        
$dictionary["User"]["fields"]['securitygroup_noninher_fields'] = array (
    'name' => 'securitygroup_noninher_fields',
    'rname' => 'id',
    'relationship_fields'=>array('id' => 'securitygroup_noninherit_id', 'noninheritable' => 'securitygroup_noninheritable', 'primary_group' => 'securitygroup_primary_group'),
    'vname' => 'LBL_USER_NAME',
    'type' => 'relate',
    'link' => 'SecurityGroups',         
    'link_type' => 'relationship_info',
    'source' => 'non-db',
    'Importable' => false,
    'duplicate_merge'=> 'disabled',

);
        
        
$dictionary["User"]["fields"]['securitygroup_noninherit_id'] = array(
    'name' => 'securitygroup_noninherit_id',
    'type' => 'varchar',
    'source' => 'non-db',
    'vname' => 'LBL_securitygroup_noninherit_id',
);

$dictionary["User"]["fields"]['securitygroup_noninheritable'] = array(
    'name' => 'securitygroup_noninheritable',
    'type' => 'bool',
    'source' => 'non-db',
    'vname' => 'LBL_SECURITYGROUP_NONINHERITABLE',
);

$dictionary["User"]["fields"]['securitygroup_primary_group'] = array(
    'name' => 'securitygroup_primary_group',
    'type' => 'bool',
    'source' => 'non-db',
    'vname' => 'LBL_PRIMARY_GROUP',
);




 // created: 2014-06-10 15:15:13
$dictionary['User']['fields']['address_state']['merge_filter']='disabled';
$dictionary['User']['fields']['address_state']['default']='B.C.';
$dictionary['User']['fields']['address_state']['required']=false;
$dictionary['User']['fields']['address_state']['len']='25';

 

// created: 2014-09-02 14:59:48
$dictionary["User"]["fields"]["sel_selkirk_team_users"] = array (
  'name' => 'sel_selkirk_team_users',
  'type' => 'link',
  'relationship' => 'sel_selkirk_team_users',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Team',
  'bean_name' => 'sel_Selkirk_Team',
  'vname' => 'LBL_SEL_SELKIRK_TEAM_USERS_FROM_SEL_SELKIRK_TEAM_TITLE',
);

?>