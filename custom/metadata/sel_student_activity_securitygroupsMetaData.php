
<?php 
$dictionary["sel_student_activity_securitygroups"] = array ( 
'true_relationship_type' => 'many-to-many', 
'relationships' => 
array ( 
    'sel_student_activity_securitygroups' => 
    array ( 
    'lhs_module' => 'SecurityGroups', 
    'lhs_table' => 'securitygroups', 
    'lhs_key' => 'id', 
    'rhs_module' => 'sel_Student_Activity', 
    'rhs_table' => 'sel_student_activity', 
    'rhs_key' => 'id', 
    'join_table' => 'securitygroups_records', 
    'join_key_lhs' => 'securitygroup_id', 
    'join_key_rhs' => 'record_id', 
    'relationship_type' => 'many-to-many', 
    'relationship_role_column' => 'module', 
    'relationship_role_column_value' => 'sel_student_activity', 
    ), 
), 
); 
?>

