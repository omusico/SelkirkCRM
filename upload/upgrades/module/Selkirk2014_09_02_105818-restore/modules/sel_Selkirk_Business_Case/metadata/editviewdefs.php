<?php
$module_name = 'sel_Selkirk_Business_Case';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => true,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL1' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL2' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL3' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL4' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL5' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL6' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL7' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 'name',
          1 => 
          array (
            'name' => 'department_name',
            'label' => 'LBL_DEPARTMENT_NAME',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'date_prepared',
            'label' => 'LBL_DATE_PREPARED',
          ),
        ),
        2 => 
        array (
          0 => 'assigned_user_name',
        ),
      ),
      'lbl_editview_panel1' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'executive_summary',
            'studio' => 'visible',
            'label' => 'LBL_EXECUTIVE_SUMMARY',
          ),
        ),
        1 => 
        array (
          0 => 'description',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'anticipated_outcomes',
            'studio' => 'visible',
            'label' => 'LBL_ANTICIPATED_OUTCOMES',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'justification',
            'studio' => 'visible',
            'label' => 'LBL_JUSTIFICATION',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'recomendation',
            'studio' => 'visible',
            'label' => 'LBL_RECOMENDATION',
          ),
        ),
      ),
      'lbl_editview_panel2' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'project_overview',
            'studio' => 'visible',
            'label' => 'LBL_PROJECT_OVERVIEW',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'current_situation',
            'studio' => 'visible',
            'label' => 'LBL_CURRENT_SITUATION',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'project_description',
            'studio' => 'visible',
            'label' => 'LBL_PROJECT_DESCRIPTION ',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'project_assumptions',
            'studio' => 'visible',
            'label' => 'LBL_PROJECT_ASSUMPTIONS ',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'project_constraints',
            'studio' => 'visible',
            'label' => 'LBL_PROJECT_CONSTRAINTS ',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'major_project_milestones',
            'studio' => 'visible',
            'label' => 'LBL_MAJOR_PROJECT_MILESTONES',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'project_roll_over',
            'studio' => 'visible',
            'label' => 'LBL_PROJECT_ROLL_OVER',
          ),
        ),
      ),
      'lbl_editview_panel3' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'strategic_alignment_hdr',
            'studio' => 'visible',
            'label' => 'LBL_STRATEGIC_ALIGNMENT_HDR',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'strategic_alignment',
            'studio' => 'visible',
            'label' => 'LBL_STRATEGIC_ALIGNMENT',
          ),
        ),
      ),
      'lbl_editview_panel4' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'cost_benefit_analysis_hdr',
            'studio' => 'visible',
            'label' => 'LBL_COST_BENEFIT_ANALYSIS_HDR',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'tangible_intangible_benefits',
            'studio' => 'visible',
            'label' => 'LBL_TANGIBLE_INTANGIBLE_BENEFITS',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'new_revenues',
            'studio' => 'visible',
            'label' => 'LBL_NEW_REVENUES',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'community_profile',
            'studio' => 'visible',
            'label' => 'LBL_COMMUNITY_PROFILE',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'tangible_intangible_cost',
            'studio' => 'visible',
            'label' => 'LBL_TANGIBLE_INTANGIBLE_COST',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'labour_material',
            'studio' => 'visible',
            'label' => 'LBL_LABOUR_MATERIAL',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'job_impact_productivity_loss',
            'studio' => 'visible',
            'label' => 'LBL_JOB_IMPACT_PRODUCTIVITY_LOSS',
          ),
        ),
      ),
      'lbl_editview_panel5' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'overall_revenue_cost_project',
            'studio' => 'visible',
            'label' => 'LBL_OVERALL_REVENUE_COST_PROJECT',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'cashflow_projects',
            'studio' => 'visible',
            'label' => 'LBL_CASHFLOW_PROJECTS',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'pay_back_return_on_investment',
            'studio' => 'visible',
            'label' => 'LBL_PAY_BACK_RETURN_ON_INVESTMENT',
          ),
        ),
      ),
      'lbl_editview_panel6' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'alternative_analysis_hrd',
            'studio' => 'visible',
            'label' => 'LBL_ALTERNATIVE_ANALYSIS_HRD',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'alternative_analysis',
            'studio' => 'visible',
            'label' => 'LBL_ALTERNATIVE_ANALYSIS',
          ),
        ),
      ),
      'lbl_editview_panel7' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'risks',
            'studio' => 'visible',
            'label' => 'LBL_RISKS',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'future_development',
            'studio' => 'visible',
            'label' => 'LBL_FUTURE_DEVELOPMENT',
          ),
        ),
      ),
    ),
  ),
);
?>
