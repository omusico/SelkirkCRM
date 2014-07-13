
<?php
// Send to?
$to = "lperepolkin1@selkirk.ca";
 
// The Subject
$subject = "Email Test";
 
// The message
$message = "This is a test.\n
How much is Linux worth today?\n
End of email message!";
 
// In case any of our lines are larger than 70 characters, we should use wordwrap()
$message = wordwrap($message, 70);
 
// Send email
// Returns TRUE if the mail was successfully accepted for delivery, FALSE otherwise. 
// Use if command to display email message status
if ( mail($to, $subject, $message) )
{
     echo("Your email message successfully sent.");
}
else
{
     echo("Sorry, message delivery failed. Contact webmaster for more info.");
}
?>

