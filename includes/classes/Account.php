<?php
  /*creating a class name Account
   */
  class Account
  {
    private $con;
    private $errorArray;

    public function __construct($con)/*giving a constructor to Account classs */
    {
      $this->con = $con;
      $this->errorArray = array();
    }
/*loginForm */
    public function login($un, $pw){

      $pw = md5($pw);

      $query = mysqli_query($this->con, "SELECT * FROM users WHERE username='$un' AND password='$pw'");
      if (mysqli_num_rows($query) == 1) {
        return true;
      }
      else {
        array_push($this->errorArray, Constant::$loginFailed);
        return false;
      }
    }

    public function register($un, $fn, $ln, $em, $em2, $pw, $pw2)
    {
        $this->  validateUsername($un);
        $this->  validateFirstname($fn);
        $this->  validateLastname($ln);
        $this->  validateEmails($em, $em2);
        $this->  validatePasswords($pw, $pw2);

        if (empty($this->errorArray) == true) {
          // inster into SQLDatabase
          return $this->insertUserDetails($un, $fn, $ln, $em, $pw);
        }
        else {
          return false;
        }
    }

    public function  getError($error){
      if (!in_array($error, $this->errorArray)) {
        $error = "";
      }
      return "<span class='errorMessage'>$error</span>";
    }

    private function insertUserDetails($un, $fn, $ln, $em, $pw)
    {
      $encryptedPw = md5($pw); //to encrypet the passwords
      $profilePic = "pepsi/images/profile-pics/shake.png";
      $date = date("Y-m-d");

      $result =mysqli_query($this->con, "INSERT INTO users VALUES('', '$un', '$fn', '$ln', '$em', '$encryptedPw', '$date', '$profilePic')");
      return $result;
    }


    private function validateUsername($un){
      if(strlen($un) > 25 || strlen($un) < 4){
        array_push($this->errorArray, Constant::$usernameCharacters);
        return;
      }

      $checkUsernameQuery = mysqli_query($this->con, "SELECT username FROM users WHERE username='$un'");
      if (mysqli_num_rows($checkUsernameQuery) != 0) {
        array_push($this->errorArray, Constant::$Takenusername);
        return;
      }

    }

    private function validateFirstname($fn){
      if(strlen($fn) > 25 || strlen($fn) < 2){
        array_push($this->errorArray, Constant::$firstNameCharacters);
        return;
      }

    }

    private function validateLastname($ln){
      if(strlen($ln) > 25 || strlen($ln) < 2){
        array_push($this->errorArray, Constant::$lastNameCharacters);
        return;
      }

    }

    private function validateEmails($em, $em2){
      if ($em != $em2) {
          array_push($this->errorArray, Constant::$emailDoNotMtach);
          return;
      }
      if (!filter_var($em, FILTER_VALIDATE_EMAIL)) {
        array_push($this->errorArray, Constant::$emailInvalid);
        return;
      }

      $checkEmailQuery = mysqli_query($this->con, "SELECT email FROM users WHERE email='$em'");
      if (mysqli_num_rows($checkEmailQuery) != 0) {
        array_push($this->errorArray, Constant::$Takenemail);
        return;
      }

    }

    private function validatePasswords($pw, $pw2){
      if ($pw != $pw2) {
        array_push($this->errorArray, Constant::$passwordDoNotMatch);
        return;
      }
      if (preg_match('/[^A-Za-z0-9@#$%&*]/', $pw)) {
        array_push($this->errorArray, Constant::$passwordNotAlfanumeric);
        return;
      }
      if (strlen($pw) > 30 || strlen($pw) <8) {
        array_push($this->errorArray, Constant::$passwordCharacters);
        return;
      }
    }
  }


 ?>
