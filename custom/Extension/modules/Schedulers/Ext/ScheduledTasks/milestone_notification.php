
<?php

array_push($job_strings, 'milestone_notification');

function milestone_notification() {
    global $db;
    $sql = "SELECT * FROM selkirkcrm.vw_milestone_notify;";

    $rs = $db->query($sql);

    while ($row = $db->fetchByAssoc($rs)) {
        $message = "Team: " . $row['team_name'] . "\r\n";
        $message .= "Project: " . $row['project_name'] . "\r\n";
        $message .= "Milestone: " . $row['name'] . "\r\n";
        $message .= "Milestone Date: " . $row['milestone_date'] . "\r\n";
        $message .= "Email Address: "  . $row['email_address'] . "\r\n";

        $to = $row['email_address'];
	// $to = "lperepolkin1@selkirk.ca";
        send_milestone_notification($to, $message);
	
	$milestone_id = $row['milestone_id']; 

        $updateSql = "UPDATE sel_selkirk_milestone ";
        $updateSql .= "SET ";
        $updateSql .= "notifcation_sent =  CURDATE()";
        $updateSql .= "WHERE id =   '$milestone_id'  ";
        $db->query($updateSql);
    }

    return true;
}

function send_milestone_notification($to, $message) {

    $subject = "SelkirkCRM Milestone Notification";
    if (mail($to, $subject, $message, "From: cbrdi@selkirk.ca")) {
        echo("Your email message successfully sent.");
    } else {
        echo("Sorry, message delivery failed. Contact webmaster for more info.");
    }
}


