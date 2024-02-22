<html>
<style type="text/css">

/* Login */
.login-popup {
  display: none;
  position: fixed;
  z-index: 1;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: #ffffff;
  background-color: rgba(0,0,0,0.4);
}

.login-popup-content {
  margin: 10% auto;
  padding: 0px 4px 9px 20px;
  /* border: 1px solid rgb(136, 136, 136); */
  width: 26%;
}

.close {
  color: black;
  float: right;
  font-size: 34px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}

.form-box {
  max-width: 300px;
  background: #f1f7fe;
  overflow: hidden;
  border-radius: 16px;
  color: #4e2525;

}

.form {
  position: relative;
  display: flex;
  flex-direction: column;
  padding: 32px 24px 24px;
  gap: 16px;
  text-align: center;
}

/*Form text*/
.title {
  font-weight: bold;
  font-size: 1.6rem;
}

.subtitle {
  font-size: 1rem;
  color: #666;
}

/*Inputs box*/
.form-container {
  overflow: hidden;
  border-radius: 8px;
  background-color: #fff;
  margin: 1rem 0 .5rem;
  width: 100%;
}

.input {
  background: none;
  border: 0;
  outline: 0;
  height: 40px;
  width: 100%;
  border-bottom: 1px solid #222020;
  font-size: .9rem;
  padding: 8px 15px;
}

.form-section {
  padding: 16px;
  font-size: .85rem;
  background-color: #e0ecfb;
  box-shadow: rgb(0 0 0 / 8%) 0 -1px;
}

.form-section a {
  font-weight: bold;
  color: #0066ff;
  transition: color .3s ease;
}

.form-section a:hover {
  color: #005ce6;
  text-decoration: underline;
}

/*Button*/
.form button {
  background-color: #4e2525;
  color: white;
  border: 0;
  border-radius: 24px;
  padding: 10px 16px;
  font-size: 1rem;
  font-weight: 600;
  cursor: pointer;
  transition: background-color .3s ease;
}

.form button:hover {
  background-color: white;
  color : black;
}

.btn {
    display: grid;
    text-align: center;
    margin-top: 20%;
    height: 144px;
}
@media only screen and (max-width: 1023px) {

  .form-box {
    max-width: 559px;
    background: #f1f7fe;
    overflow: hidden;
    border-radius: 16px;
    color: #010101;
    margin-top: 586px;
}
.login-popup-content {
    width: 60%;
}.form {
    position: relative;
    display: flex;
    flex-direction: column;
    /* padding: 144px 20px 0px; */
    gap: 45px;
    text-align: center;
    height: 353px;
    width: 343px;
    justify-content: center;
    padding: 100px;
}
.btn {
    display: grid;
    text-align: center;
    margin-top: 79%;
    height: 144px;
}

}
</style>
<body>
<div class="btn">
<button onclick="stuLogin()">Student Login</button>
<button id="login-link" >Admin Login</button>
<button onclick="stuReg()">Student Registration</button>
</div>



<div id="login-popup" class="login-popup">
    <div class="login-popup-content">
      <span class="close" onclick="closeLoginPopup()">&times;</span>
      <div class="form-box">
        <form class="form" action="adminLogin" >
          <span class="title">Admin Login</span>
          <div class="form-container">
            <input type="text" class="input" name="name" placeholder="Name" required="required">
            <input type="number" class="input" name="pass" placeholder="Password" required="required">
          </div>
          <button>Login</button>
        </form>
      </div>
    </div>
    </div>
    
    <p style="color:red;">
                ${flash.error}
            </p>

<script type="text/javascript">

function stuLogin() {
	document.myForm.action="studentLogin";
	document.myForm.submit();
}
function stuReg() {
	document.myForm.action="studentRegistration"
	document.myForm.submit();
}



/* PopUp */

// Function to toggle the visibility of the pop-up window
function togglePopup() {
    var popup = document.getElementById("popupWindow");
    if (popup.style.display === "none") {
      popup.style.display = "block";
    } else {
      popup.style.display = "none";
    }
  }

  // Function to close the pop-up window
  function closePopup() {
    document.getElementById("popupWindow").style.display = "none";
  }

//   FD

function togglePopupp() {
    var popup = document.getElementById("popupWindoww");
    if (popup.style.display === "none") {
      popup.style.display = "block";
    } else {
      popup.style.display = "none";
    }
  }

  // Function to close the pop-up window
  function closePopupp() {
    document.getElementById("popupWindoww").style.display = "none";
  }

//   Debitcard
function togglePopu() {
    var popup = document.getElementById("popupWindo");
    if (popup.style.display === "none") {
      popup.style.display = "block";
    } else {
      popup.style.display = "none";
    }
  }

  // Function to close the pop-up window
  function closePopu() {
    document.getElementById("popupWindo").style.display = "none";
  }

// Login
document.getElementById("login-link").addEventListener("click", function(event) {
  event.preventDefault();
  document.getElementById("login-popup").style.display = "block";
});

function closeLoginPopup() {
  document.getElementById("login-popup").style.display = "none";
}

</script>
</body>
</html>
