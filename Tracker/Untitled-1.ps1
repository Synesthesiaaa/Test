<! DOCTYPE html>  
<Html>  
   <Head>  
      <script language="vbscript" type="text/vbscript">  
         Sub Sample ()  
          Dim iRow  
          Set objExcel = CreateObject ("Excel. Application")  
         Set objWorkbook = objExcel.Workbooks.Open ("S:\EmployeeNewHireExcel.xlsx")   
          objExcel.Application.Visible = True  
          ObjWorkbook.Windows (1).Visible = True  
          Set XlSheet =objWorkbook.Sheets (1)  
          XlSheet.Activate  
          iRow = 1  
          With objExcel  
              Do while .Cells (iRow, 1).value <> ""  
                  .Cells (iRow, 1).activate  
                  iRow = iRow + 1  
              Loop  
                 .Cells (iRow, 1).value=Document.GetElementsByName ("License#") (0).Value  
                 .Cells (iRow, 2).value=Document.GetElementsByName ("LicenseDate") (0).Value  
                 .Cells (iRow, 3).value=Document.GetElementsByName ("LicenseExpiration") (0).Value  
                 .Cells (iRow, 4).value=Document.GetElementsByName ("LicenseRenewalDate") (0).Value
				 .Cells (iRow, 5).value=Document.GetElementsByName ("Department") (0).Value
				 .Cells (iRow, 6).value=Document.GetElementsByName ("LastName") (0).Value
				 .Cells (iRow, 7).value=Document.GetElementsByName ("FirstName") (0).Value
				 .Cells (iRow, 8).value=Document.GetElementsByName ("HomePhone") (0).Value
				 .Cells (iRow, 9).value=Document.GetElementsByName ("MobilePhone") (0).Value
				 .Cells (iRow, 10).value=Document.GetElementsByName ("StartDate") (0).Value
				 .Cells (iRow, 11).value=Document.GetElementsByName ("90120Day") (0).Value
				 .Cells (iRow, 12).value=Document.GetElementsByName ("SSN") (0).Value
				 .Cells (iRow, 13).value=Document.GetElementsByName ("DriverLicense") (0).Value
				 .Cells (iRow, 14).value=Document.GetElementsByName ("DRLicenseExp") (0).Value
				 .Cells (iRow, 15).value=Document.GetElementsByName ("VehicleMake") (0).Value
				 .Cells (iRow, 16).value=Document.GetElementsByName ("VehicleModel") (0).Value
				 .Cells (iRow, 17).value=Document.GetElementsByName ("Email") (0).Value
				 .Cells (iRow, 18).value=Document.GetElementsByName ("BDay") (0).Value
				 .Cells (iRow, 18).value=Document.GetElementsByName ("SeperationDate") (0).Value
				 
                 MsgBox "Data Added Successfully”, vbinformation  
				 
                 Document.GetElementsByName ("License#") (0).Value=""  
                 Document.GetElementsByName ("LicenseDate") (0).Value=""  
                 Document.GetElementsByName ("LicenseExpiration") (0).Value=""  
                 Document.GetElementsByName ("LicenseRenewalDate") (0).Value=""
				 Document.GetElementsByName ("Department") (0).Value=""
				 Document.GetElementsByName ("LastName") (0).Value=""
				 Document.GetElementsByName ("FirstName") (0).Value=""
				 Document.GetElementsByName ("HomePhone") (0).Value=""
				 Document.GetElementsByName ("MobilePhone") (0).Value=""
				 Document.GetElementsByName ("StartDate") (0).Value=""
				 Document.GetElementsByName ("90120Day") (0).Value=""
				 Document.GetElementsByName ("SSN") (0).Value=""
				 Document.GetElementsByName ("DriverLicense") (0).Value=""
				 Document.GetElementsByName ("DRLicenseExp") (0).Value=""
				 Document.GetElementsByName ("VehicleMake") (0).Value=""
				 Document.GetElementsByName ("VehicleModel") (0).Value=""
				 Document.GetElementsByName ("Email") (0).Value=""	
				 Document.GetElementsByName ("BDay") (0).Value=""
				 Document.GetElementsByName ("SeperationDate") (0).Value=""
             End With  
             ObjWorkbook. Save  
             ObjWorkbook. Close  
             Set objWorkbook = Nothing  
             Set objExcel = Nothing  
         End Sub  
      </script>  
      <style type="text/css">  
         fieldset {  
            border: #00cc00 2px solid;  
            padding: 10px;  
            color: green;  
      </style>  
   <body  
<form>  
   <fieldset>  
      <legend>Pure Ohio Wellness</legend>  
      <center>  
         <img src="C:\wamp64\www\joomlalatest\images\Logo.png" width="200" height="auto" alt="POW Logo"><br>  
         License Number</br>   
         <input type="text" name="License#" Value=""></br>  
		 
         License Date :</br>  
         <input type="text" name="LicenseDate" Value=""></br>  
		 
         License Expiration Date :</br>
         <input type="text" name="LicenseExpiration" Value=""></br>  
		 
         License Renewal Date :</br>
         <input type="text" name="LicenseRenewalDate" Value=""></br>  
		 
		  Department :</br>
         <input type="text" name="Department" Value=""></br>  
		 
		  Last Name :</br>
         <input type="text" name="LastName" Value=""></br>  
		 
		  First Name :</br>
         <input type="text" name="FirstName" Value=""></br>  
		 
		  Home Phone # :</br>
         <input type="text" name="HomePhone" Value=""></br>  
		 
		  Mobile Phone # :</br>
         <input type="text" name="MobilePhone" Value=""></br>  
		 
		  Start Date :</br>
         <input type="text" name="StartDate" Value=""></br>  
		 
		  90/120 Day :</br>
         <input type="text" name="90120Day" Value=""></br>  
		 
		  Social Security Number :</br>  
         <input type="text" name="SSN" Value=""></br>  
		 
		  Driver License Expiration Date :</br> 
         <input type="text" name="DRLicenseExp" Value=""></br>  
		 
		  Vehicle Make :</br> 
         <input type="text" name="VehicleMake" Value=""></br>  
		 
		  Vehicle Model :</br>
         <input type="text" name="VehicleModel" Value=""></br>  
		 
		  Email Address :</br>
         <input type="text" name="Email" Value=""></br>  
		 
		 Birthdate :</br>
         <input type="text" name="BDay" Value=""></br>  
		 
		 Seperation Date :</br> 
         <input type="text" name="SeperationDate" Value=""></br>  
		 
         </br>  
         <input type="button" onclick="Sample()" value="Submit" /></br>  
      </center>  
   </fieldset>  
<form>  
</body>  
</html>