<?php
$connection = mysqli_connect('localhost', 'root', '', "db_foody");
$errors = array();
$lname = mysqli_real_escape_string($connection, $_POST['lname']);
if($lname == NULL) {
	$errors[] = "Last name field is empty.";
}

$fname = mysqli_real_escape_string($connection, $_POST['fname']);
if($fname == NULL) {
	$errors[] = "First name field is empty.";
}
$email = $_POST['email'];
if($email == NULL) {
	$errors[] = "Email field is empty.";
}

if (!check_email_address($email)) {
	$errors[] = "\"".$email."\" is not a valid email address.";
}
$errcount = count($errors);
if($errcount > 0) {
	echo "The following errors occurred when your form was submitted:<br /><br />";
	for($i=0; $i< $errcount; $i++) {

	echo $errors[$i]."<br />";
	}
	
}else{
	$querystring = "INSERT INTO tbl_users(user_id,user_lname,user_fname,user_email) VALUES(NULL,'".$lname."','".$fname."','".$email."')";
	$qpartner = mysqli_query($connection, $querystring);
	echo "Form submitted. Thank you for your interest!";
}

   function check_email_address($email) {
        // First, we check that there's one @ symbol, and that the lengths are right
        if (!preg_match("/^[^@]{1,64}@[^@]{1,255}$/", $email)) {
            // Email invalid because wrong number of characters in one section, or wrong number of @ symbols.
            return false; //return false do not submit
        }
        // Split it into sections to make life easier
        $email_array = explode("@", $email);// checking the front and back part from @
        $local_array = explode(".", $email_array[0]);// checking the front and back of main email name if there is any . in it. 
        for ($i = 0; $i < sizeof($local_array); $i++) {
            if (!preg_match("/^(([A-Za-z0-9!#$%&'*+\/=?^_`{|}~-][A-Za-z0-9!#$%&'*+\/=?^_`{|}~\.-]{0,63})|(\"[^(\\|\")]{0,62}\"))$/", $local_array[$i])) {
                return false;// invalid email address if it contains anything other than "."
            }                                                                              
        }                                                                                
        if (!preg_match("/^\[?[0-9\.]+\]?$/", $email_array[1])) { // Check if domain is IP. If not, it should be valid domain name
            $domain_array = explode(".", $email_array[1]);
            if (sizeof($domain_array) < 2) {// there is no gmail.com kind of thing
                return false; // Not enough parts to domain
            }
            for ($i = 0; $i < sizeof($domain_array); $i++) { // checking the domain name is valid or not 
                if (!preg_match("/^(([A-Za-z0-9][A-Za-z0-9-]{0,61}[A-Za-z0-9])|([A-Za-z0-9]+))$/", $domain_array[$i])) {
                    return false;
                }
            }
        }

        return true; //success return true
    }
?>