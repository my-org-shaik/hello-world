<dashboard>
  <!-- A title for the dashboard -->
  <label>Basic Dashboard</label>
  
  <!-- Provide a description -->
  <description>Illustrate the basic structures of a dashboard</description>

  <!-- Place panels within rows -->
  <row>

    <!-- This basic dashboard has only a single panel -->
    <panel>
    
      <table>
        <title>Top Sourcetypes (Last 24 hours)</title>

        <!-- A search powers the panel -->
        <search>
          <query>
          index=_internal | top limit=100 sourcetype | eval percent = round(percent,2)
          </query>
          <!-- Specify a time range for the search -->
          <earliest>-24h@h</earliest>
          <latest>now</latest>
        </search>

        <!-- Use options to further define how to display result data -->
        <option name="wrap">true</option>
        <option name="rowNumbers">true</option>
      </table>
    </panel>
  </row>

</dashboard>































<!--
<form action="action_page.php">
  <div class="container">
    <h1>New user Register for DevOps Learning</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
     
    <label for="Name"><b>Enter Name</b></label>
    <input type="text" placeholder="Enter Full Name" name="Name" id="Name" required>
    <br>
    
    <label for="mobile"><b>Enter mobile</b></label>
    <input type="text" placeholder="Enter moible number" name="mobile" id="mobile" required>
    <br>

    <label for="email"><b>Enter Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" id="email" required>
    <br>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="psw" required>
    <br>

    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>
    <hr>
    <br>
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
    <button type="submit" class="registerbtn">Register</button>
  </div>
  <div class="container signin">
    <p>Already have an account? <a href="#">Sign in</a>.</p>
  </div>

   <h1> Thankyou, Happy Learning </h1>

  
</form>
-->
