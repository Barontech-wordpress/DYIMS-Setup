<style>

@media screen and (max-width: 480px) {
        .tab{
        width: 100% !important;
        height: auto !important;
        }
        #DPT img{
            min-width: auto !important;
        }

        .tabcontent {
        width: 100% !important;
        }
 }
 .tab {
  float: left;
  /* border: 1px solid #ccc;
  background-color: #f1f1f1; */
  width: 30%;
  height: 100%;
}

/* Style the buttons inside the tab */
.tab button {
  
  display: block;
  font-weight: 600;
  color: #239cc1;
  margin: 13px 0px;
  box-shadow: 5px 5px 5px 3px #9d9d9d;
  background-color: inherit;
  /* color: black; */
  padding: 5px 12px;
  width: 80%;
  border: 0px;
  outline: none;
  text-align: left;
  cursor: pointer;
  transition: 0.3s;
  font-size: 13px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  /*background-color: #ddd;*/
   background-color: #173162;
  color: #fff;
}

/* Create an active/current "tab button" class */
.tab button.active {
  background-color: #173162;
  color: #fff;
}

/* Style the tab content */
.tabcontent {
  float: left;
  padding: 0px 12px;
  /* border: 1px solid #ccc; */
  width: 70%;
  /* border-left: none; */
  /* height: 300px; */
}
.tabcontent h3{
    color: #239cc1;
    font-size: 28px;
    margin: 15px 0px;
}
.tabcontent{
    margin: 10px 0px;
}
/* courses section */
.un-list ul{
    list-style-type: none;
    color: #173162;
}
.un-list ul li i
{
    color: #173162;
}
.un-list ul li{
    font-size:15px;
    padding: 10px 0px 10px 20px; 
    /* font-weight: 300;  */
}
.un-list li.blue{
    background-color: #239cc1;
    color: #fff;  
    
}
/* fee structure */
.custom-table thead tr, .custom-table thead th {
    color: #173162;}
.custom-table {
  margin: 23px 0px;  
  min-width: 700px; }
  .custom-table thead tr, .custom-table thead th {
    border-top: none;
    border-bottom: none !important; }
  .custom-table tbody th, .custom-table tbody td {
    color: #fff;
    font-weight: 600;
    padding-bottom: 20px;
    padding-top: 20px;
    }
    .custom-table tbody th small, .custom-table tbody td small {
      color: #b3b3b3;
      font-weight: 300;
     }
     .custom-table tbody tr th:first-child, .custom-table tbody tr td:first-child {
      border-top-left-radius: 7px;
      border-bottom-left-radius: 7px; }
    .custom-table tbody tr th:last-child, .custom-table tbody tr td:last-child {
      border-top-right-radius: 7px;
      border-bottom-right-radius: 7px; 
    }
    .custom-table tbody tr.spacer td {
    padding: 0 !important;
    height: 10px;
    border-radius: 0 !important;
    background: transparent !important; }
  
.page-header-area {
  margin-top: 150px;
  padding: 150px 0 140px;
  background-image: url(./../../../assets/images/front/program.jpg) !important;
  background-repeat: no-repeat;
  /* background-size: contain; */
  background-size: cover;
  /* background-position: center bottom */
  background-position: 100% auto;
  background-attachment: fixed;
  color: #ffffff;
  position: relative;
  z-index: 1;
}

ul.points{
    /*list-style-type:none;*/
    padding-top: 12px;
}
.points li{
    padding: 5px 0px;
    font-size: 17px;
    color: #505050;
}
</style>    
<div class="page-header-area">
    <div class="container">
        <div class="page-header-content">
            <h2 class="title"><span class="inner"><?php echo $this->lang->line('program_page_title'); ?></span></h2>
            <!-- <ul class="links">
                <li><a href="<?php echo site_url(); ?>"><?php echo $this->lang->line('home'); ?></a></li>
                <li><a href="javascript:void(0);"><?php echo $this->lang->line('contact_us'); ?></a></li>
            </ul> -->
            <h2 class="title-2">
                 <?php echo $this->lang->line('dpt'); ?>
            </h2>
        </div>
    </div>
</div>

<div class="page-contact-info-area_">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-12">
                <?php $this->load->view('layout/message'); ?> 
            </div>
        </div>
    </div>
</div>

<div class="page-contact-info-area" style="background-image: url(./../../../assets/images/front/Human Nutritions-min.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-12 ">
                        <div class="tab col-sm-12">
                            <button class="tablinks" onclick="openCity(event, 'Nutrition')" id="defaultOpen" href="">Doctor of Physical Therapy (DPT)</button>
                            <button class="tablinks" onclick="window.location.href='#Health_Sector'">Role In The Health Sector</button>
                            <button class="tablinks" onclick="window.location.href='#Choose'">Why You Should Choose This Course</button>
                            <button class="tablinks" onclick="window.location.href='#Specialization'">Specialization</button>
                            <button class="tablinks" onclick="window.location.href='#Courses'">Courses</button>
                            <button class="tablinks" onclick="window.location.href='#Faculty'">Faculty</button>
                            <button class="tablinks" onclick="window.location.href='#Fee'">Fee Structure </button>
                            <button class="tablinks" onclick="window.location.href='#Criteria'">Eligbility Criteria</button>
                            <button class="tablinks" onclick="window.location.href='#Schedule'">Admission Schedule</button>
                            <button class="tablinks" onclick="window.location.href='#Scholarships'">Scholarships</button>
                        </div>

                        <div id="DPT" class="tabcontent col-sm-12">
                            <div class="container">
                                <h3>Introduction: </h3>
                                <div>
                                <!-- <img src="<?php echo site_url('/assets/images/student.png');?>" > -->
                                <!-- <?php echo $this->lang->line('our_testimonial_text'); ?> -->
                                     <img src="<?php echo site_url('/assets/images/food-and-nutrition_33.jpg');?>" alt="tab image" style="margin: 10px 0px;max-width: 500px;">

                                     <p style="color:#6d6d6d;padding-top:12px;font-size:18px;font-weight:500">
                                     This allied health science program is very important for the rehabilitation of disabled patients who have lost their power of mobility by any injury or disease. This profession is aimed at improving the lives of those people. Physiotherapists are also qualified to treat patients who went through any surgery or bone fracture. </p> 
                                     <p style="color:#6d6d6d;padding-top:7px;font-size:18px;font-weight:500">
                                     Students are taught to restore the activity of muscles and joints. They use manual therapy, exercise, electrotherapy, cryotherapy, heat therapy, and Kinesio taping. This therapy helps the patient to make movements again easily without any pain or use of support equipment.</p> 
                                   
                                </div>    
                            </div>    
                        </div>

                        <div id="Health_Sector" class="tabcontent">
                            <div class="container">
                                <h3>Role in Health Sector</h3>

                                <p style="color:#6d6d6d;padding-top:12px;font-size:18px;font-weight:500">Qualified physiotherapists are highly appreciated for their and can work alongside Doctors. They can work as a Clinician in different wards of the Hospital including:</p> 
                                  <ul class="points"> 
                                        <li>Intensive care unit.</li>
                                        <li>Orthopedics.</li>
                                        <li>Pediatrics.</li>
                                        <li>Musculoskeletal OPDs.</li>
                                        <li>Neurological department.</li>
                                </ul>
                            </div>       
                        </div>

                        <div id="Choose" class="tabcontent">
                            <div class="container">
                                 
                            <h3>Why You Should Choose this Program</h3>

                            <p style="color:#6d6d6d;padding-top:12px;font-size:18px;font-weight:500">
                            <ul class="points"> 
                                    <li>It is a necessary field, without it the recovery of patients is impossible.</li>
                                    <li>It is a highly paid and respected profession.</li>
                                    <li>Your help can make people walk on their feet again and can perform work with their own hands.</li>
                                    <li>You can open your clinic for treating people.</li>
                                    <li>You can earn by providing home services too.</li>
                                    <li>You can join the sports institution and can look after the athletes.</li>
                            </ul>
                            </p> 

                            </div>       
                        </div>

                         <div id="Specialization" class="tabcontent">
                            <div class="container">
                                    
                                <h3>Specialization:</h3>
                                <!-- <p style="color:#6d6d6d;padding-top:12px;font-size:18px;font-weight:500">The Dietitians can do specialization in these fields:</p>
                                -->
                                <ul class="points"> 
                                    <li>Wound Management.</li>
                                    <li>Electrophysiology.</li>
                                    <li>Cardiovascular.</li>
                                    <li>Geriatrics.</li>
                                    <li>Neurology.</li>
                                    <li>Pulmonary.</li>
                                    <li>Sports.</li>
                              </ul>

                            </div> 
                        </div>

                        <div id="Courses" class="tabcontent">
                            <div class="container un-list">
                                    
                                    <h3>Courses</h3>
        
                                    <div class="row">
                                        <div class="col-lg-6 col-12">
                                            <ul >
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Anatomy.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Physiology.</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>English.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Pakistan Studies</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Introduction to Computer.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Biomechanics and Ergonomics.</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Prosthetics and Orthotics.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Cardiopulmonary Physiotherapy</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Integumentary Physical Therapy.</li>
                                            </ul>    
                                        </div>
                                        <div class="col-lg-6 col-12" >
                                            <ul>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Surgery.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Physical agents and Electrotherapy.</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Therapeutic Exercises.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Neurological Physical Therapy.</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Medical Physics.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Kinesiology.</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Radiology and Diagnostic Imaging.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Community Medicine and Rehabilitation.</li>
                                                <!-- <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Research Methodology.</li> -->
                                            </ul> 
                                        </div>
                                    </div>
        
                                    </div> 
                           </div>
                           
                           
                           <div id="Faculty" class="tabcontent">
                            <div class="container">
                                    
                                <h3>Faculty</h3>
                                <p style="color:#6d6d6d;padding-top:12px;font-size:18px;font-weight:500">We have highly skilled Teachers on board who are experts in their field. Their years of experience in field practice will help the students to become capable Physiotherapists.</p>
                                    <table class="table table-bordered" style="margin-top:15px;">
                                    <thead>
                                      <tr>
                                        <th>SR. #</th>
                                        <th>Name</th>
                                        <th>Father Name</th>
                                        <th>Qualification</th>
                                        <th>Designation</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      <tr style="background-color: ;">
                                        <td>1</td>
                                        <td>Saima Sadaf</td>
                                        <td>Sh. Ghulam Jillani</td>
                                        <td>M.Phil, DPT</td>
                                        <td>Principal/HOD</td>
                                      </tr>
                                      <tr style="background-color: ;">
                                        <td>2</td>
                                        <td>Sehrish Riaz</td>
                                        <td>Syed Riaz Hussain Shah</td>
                                        <td>M.Phil, DPT</td>
                                        <td>Assistant Professor</td>
                                      </tr>
                                      <tr style="background-color: ;">
                                        <td>3</td>
                                        <td>Nadia ishtiaq</td>
                                        <td>Ishtiaq Ahmed </td>
                                        <td>Mphil, DPT</td>
                                        <td>Assistant Professor</td>
                                      </tr>
                                      <tr style="background-color: ;">
                                        <td>4</td>
                                        <td>Zartasha Seemab</td>
                                        <td>Malik Ilahi Bakhsh</td>
                                        <td>DPT, MPH</td>
                                        <td>Lecturer (DPT)</td>
                                      </tr>
                                      <tr style="background-color: ;">
                                        <td>5</td>
                                        <td>Tarana Niaz</td>
                                        <td>Niaz Ahmad</td>
                                        <td>DPT</td>
                                        <td>Lecturer (DPT)</td>
                                      </tr>
                                      <tr style="background-color: ;">
                                        <td>6</td>
                                        <td>Mubeen Fraz</td>
                                        <td>Muhammad Hayat</td>
                                        <td>DPT</td>
                                        <td>Lecturer (DPT)</td>
                                      </tr>
                                      <tr style="background-color: ;">
                                        <td>7</td>
                                        <td>Naghmee Shereen</td>
                                        <td></td>
                                        <td>DPT</td>
                                        <td>Lecturer (DPT)</td>
                                      </tr>
                                    </tbody>
                                  </table>

                            </div> 
                        </div>

                        <div id="Fee" class="tabcontent">
                            <div class="container">
                                    
                            <h3>Fee Structure</h3>
                            <p style="margin-top: -17px;">We have set an affordable and reasonable fee structure for our students.<br>
                                   <small style="color:#000;font-size:12px;font-weight:550;"> Program duration 5 years.</small>
                            </p> 
                            <div class="table-responsive custom-table-responsive">

                                    <table class="table custom-table">
                                    <thead>
                                        <tr>  

                                        <!-- <th scope="col">Order</th> -->
                                        <th scope="col">Sr#</th>
                                        <th scope="col">Admission Fee</th>
                                        <th scope="col">Semester Fee</th>
                                        <th scope="col">Security Fee (Refundable)</th>
                                        <th scope="col">Total Fee</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr scope="row" style="background-color: #239cc1;">
                                        <!-- <th scope="row"> </th> -->
                                        <td>1</td>
                                        <td>30,000</td>
                                        <td>85,000</td>
                                        <td>10,000</td>
                                        <td>105,000</td>
                                        </tr>
                                        <tr class="spacer"><td colspan="100"></td></tr>
                                        <tr scope="row" style="background-color: #239cc1;">            
                                        <td>2</td>
                                        <td>0</td>
                                        <td>70,000</td>
                                        <td>0</td>
                                        <td>70,000</td>
                                        </tr>
                                        <tr class="spacer"><td colspan="100"></td></tr>
                                        <tr scope="row" style="background-color: #239cc1;">             
                                        <td>3</td>
                                        <td>0</td>
                                        <td>70,000</td>
                                        <td>0</td>
                                        <td>70,000</td>
                                        </tr>
                                        <tr class="spacer"><td colspan="100"></td></tr>
                                        <tr scope="row" style="background-color: #239cc1;">
                                        <td>4</td>
                                        <td>0</td>
                                        <td>70,000</td>
                                        <td>0</td>
                                        <td>70,000</td>
                                        </tr>
                                        <tr class="spacer"><td colspan="100"></td></tr>
                                        <tr scope="row" style="background-color: #239cc1;">
                                        <td>5</td>
                                        <td>0</td>
                                        <td>70,000</td>
                                        <td>0</td>
                                        <td>70,000</td>
                                        </tr>
                                        <tr class="spacer"><td colspan="100"></td></tr>
                                        <tr scope="row" style="background-color: #239cc1;">
                                        <td>Total 5 Semester Fee:</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>305,000</td>
                                        </tr>
                                        
                                    </tbody>
                                    </table>
                                </div>
                                <ul class="points"> 
                                        <li>All sort of Charges including University Registration, University Sports fee, Tuition fee, Clinical Rotation Charges, Hospital Charges, Library and Laboratory Charges.  </li>
                                </ul>
                            </div> 
                        </div>

                        <div id="Criteria" class="tabcontent">
                            <div class="container">
                                <h3>Eligibility Criteria:</h3>

                                <p style="color:#6d6d6d;padding-top:12px;font-size:18px;font-weight:500">After graduation, the Dietitian and Nutritionist will be able to work as a:</p> 
                                  <ul class="points"> 
                                        <li>Fsc (Pre-Medical) with minimum 60% marks as per HEC criteria. </li>
                                        <!-- <li>Minimum 60% marks in Fsc pre-medical or 50 % equivalence marks in A-levels (Biology is a must) for all programs.</li>
                                        <li>Minimum 45% marks in Fsc pre-medical or 45 % equivalence marks in A-levels (Biology is a must) for Human Nutrition and Dietetics only.</li>
                                        <li>Minimum 60 % marks in Matriculation.</li> -->
                                </ul>
                            </div>       
                        </div>
                        
 
                        <div id="Schedule" class="tabcontent">
                                <h3>Admission Schedule:</h3>

                                <p style="color:#6d6d6d;padding-top:12px;font-size:18px;font-weight:500">We are excited to have you in the Qadir Ali family so we offer admissions once a year. You can register yourself and can get admission easily:</p> 
                                  <ul class="points"> 
                                        <li><strong>Fall Semester:</strong> Starting in September.</li>
                                        <li><strong>Spring Semester:</strong> Starting in January.</li>
                                 </ul>
                        </div>

                        <div id="Scholarships" class="tabcontent">
                         <h3>Scholarship:</h3>

                                <p style="color:#6d6d6d;padding-top:12px;font-size:18px;font-weight:500">We have a very reasonable fee structure but still, we have fixed a 10% quota for scholarships. As we believe in the welfare of society and want to support the unprivileged people of our community. Students from the following categories can avail of our scholarships:</p> 
                                  <ul class="points"> 
                                        <li>Disabled students.</li>
                                        <li>Merit-based scholarship.</li>
                                        <li>Women.</li>
                                        <li>Need-based scholarship.</li>
                                 </ul>
                        </div> 

                       <script>
                                // function openCity(evt, cityName) {
                                // var i, tabcontent, tablinks;
                                // tabcontent = document.getElementsByClassName("tabcontent");
                                // for (i = 0; i < tabcontent.length; i++) {
                                //     tabcontent[i].style.display = "none";
                                // }
                                // tablinks = document.getElementsByClassName("tablinks");
                                // for (i = 0; i < tablinks.length; i++) {
                                //     tablinks[i].className = tablinks[i].className.replace(" active", "");
                                // }
                                // document.getElementById(cityName).style.display = "block";
                                // evt.currentTarget.className += " active";
                                // }

                                // Get the element with id="defaultOpen" and click on it
                                document.getElementById("defaultOpen").click();
                        </script> 
                </div>
            </div>
        </div>
    </div>
</div>

<!-- <?php if(isset($this->setting->google_map) && !empty($this->setting->google_map)){ ?>
<div class="map-area">
    <?php echo $this->setting->google_map; ?>    
</div>
<?php }?> -->

<!-- <script type="text/javascript">
     $('#contact_us').validate();
</script>  -->