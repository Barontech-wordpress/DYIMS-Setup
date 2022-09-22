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
                 <?php echo $this->lang->line('ott'); ?>
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
                                     This is a very critical technical profession in which students gain knowledge to join the operation unit team. They work alongside Surgeons, Anesthesiologists, and Nurses to make sure that everything goes safely in the operation theatre. These technicians are fully prepared to manage surgical instruments and drugs used in surgery. They are also skilled to use ventilators, defibrillators, ECG monitors, and other theater equipment. Their responsibilities include controlling infection chances, assisting the team, and monitoring the standards. Besides, the Surgeon’s capability for the success of the operations is dependent on the operation theatre technicians too.
</p> 
                                     <!-- <p style="color:#6d6d6d;padding-top:7px;font-size:18px;font-weight:500">
                                     Medical laboratory technicians will be able to identify microorganisms, blood-clotting problems, indicators in body fluids, and blood. Furthermore, they can cross-match donor and recipient blood before doing transfusions.  
</p>  -->
                                   
                                </div>    
                            </div>    
                        </div>

                        <div id="Health_Sector" class="tabcontent">
                            <div class="container">
                                <h3>Role in Health Sector</h3>

                                <p style="color:#6d6d6d;padding-top:12px;font-size:18px;font-weight:500">Operation theater technicians have a very responsible role in healthcare. No operation can be done without their assistance. They can work in given areas of the hospital:</p> 
                                  <ul class="points"> 
                                        <li>Hospitals' emergency wards.</li>
                                        <li>Operation theatres.</li>
                                        <li>Intensive care units.</li>
                                </ul>
                            </div>       
                        </div>

                        <div id="Choose" class="tabcontent">
                            <div class="container">
                                 
                            <h3>Why You Should Choose this Program</h3>

                            <p style="color:#6d6d6d;padding-top:12px;font-size:18px;font-weight:500">
                            <ul class="points"> 
                                    <li>You should choose this field if you want to work in critical conditions in hospitals. </li>
                                    <li>You can fulfill your dream of saving people by choosing this profession.</li>
                                    <li>If you are good at handling stress then this is your field.</li>
                                    <li>You can easily get a job abroad by pursuing this profession.</li>
                                    <li>You can excel more in the field by doing specialization.</li>
                                    <li>It is a respectable profession that can take the patient out of the death bed.</li>
                            </ul>
                            </p> 

                            </div>       
                        </div>

                         <div id="Specialization" class="tabcontent">
                            <div class="container">
                                    
                                <h3>Specialization:</h3>
                                <p style="color:#6d6d6d;padding-top:12px;font-size:18px;font-weight:500">You can do specialization to get the following designations:
</p>
                               
                                <ul class="points"> 
                                    <li>Audiometrist.</li>
                                    <li>Scrub Technicians.</li>
                                    <li>Surgical Technicians.</li>
                                    <li>Biomedical Engineer.</li>
                                    <li>Health technician manager.</li>
                                    <li>Laboratory manager.</li>
                                    <li>Medical assistant.</li>
                                    <!-- <li>Genito-urinary radiology.</li> -->
                              </ul>

                            </div> 
                        </div>

                        <div id="Courses" class="tabcontent">
                            <div class="container un-list">
                                    
                                    <h3>Courses</h3>
        
                                    <div class="row">
                                        <div class="col-lg-6 col-12">
                                            <ul >
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>General Anatomy.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Systemic Pathology</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>English.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Pakistan Studies</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Introduction to Computer.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Introduction to Anesthesia and Techniques.</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Fundamentals of Emergency Medical care.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>General pharmacology.</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Pharmacology for Surgical Technologist.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Medical Microbiology.</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Anesthesia Equipment.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Advanced Anatomy.</li>
                                                <!-- <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Food and Water Microbiology.</li>
                                                <li ><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Basic Research Methodology.</li> -->
                                            </ul>    
                                        </div>
                                        <div class="col-lg-6 col-12" >
                                            <ul>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>General Surgery.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>General Medicine.</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Infection Control.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Patient Care.</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Medical-Surgical Skills.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Operating Room Design and Environment.</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Genitourinary Surgeries.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Diagnostic Radiology.</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Ophthalmic Surgery.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Orthopedic Surgery.</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Pediatric Surgeries.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Pharmacology of  Surgical  Technologist.</li>
                                                <!-- <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Forensic Pathology and Odontology.</li> -->
                                            </ul> 
                                        </div>
                                    </div>
        
                                    </div> 
                           </div>
                           
                           
                           <div id="Faculty" class="tabcontent">
                            <div class="container">
                                    
                                <h3>Faculty</h3>
                                <!-- <p style="color:#6d6d6d;padding-top:12px;font-size:18px;font-weight:500">We have appointed top-notch radiographers in our faculty for the best education of our students. Resource persons are MBBS, MPhil, DLMS, and MLT (B.Sc.) degree holders.</p> -->
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
                                        <td>Dr. Muhammad Qasim</td>
                                        <td>Ghulam Sarwar</td>
                                        <td>MBBS FCPS Surgery</td>
                                        <td>AP (OTT)/HOD</td>
                                      </tr>
                                      <tr style="background-color: ;">
                                        <td>2</td>
                                        <td>Dr. Javed iqbal</td>
                                        <td>Noor Muhammad</td>
                                        <td>MBBS Post Grad Anesthesia</td>
                                        <td>Sr. Lecturer (OTT)</td>
                                      </tr>
                                      <tr style="background-color: ;">
                                        <td>3</td>
                                        <td>Dr. Habibullah</td>
                                        <td>Allah Baksh </td>
                                        <td>MBBS, Post Grad ENT</td>
                                        <td>Lecturer (OTT)</td>
                                      </tr>
                                      <tr style="background-color: ;">
                                        <td>4</td>
                                        <td>Dr. Ali Yahya</td>
                                        <td>Muhammad Yahya</td>
                                        <td>MBBS</td>
                                        <td>Lecturer (OTT)</td>
                                      </tr>
                                      <tr style="background-color: ;">
                                        <td>5</td>
                                        <td>Sana Shoukat</td>
                                        <td>Shaukat Ali</td>
                                        <td>BS (Hons) OTT</td>
                                        <td>Lecturer (OTT)</td>
                                      </tr>
                                      <tr style="background-color: ;">
                                        <td>6</td>
                                        <td>Sana Afzal</td>
                                        <td>M. Afzal</td>
                                        <td>BS (Hons) OTT</td>
                                        <td>Lecturer (OTT)</td>
                                      </tr>
                                      
                                    </tbody>
                                  </table>

                            </div> 
                        </div>

                        <div id="Fee" class="tabcontent">
                            <div class="container">
                                    
                            <h3>Fee Structure</h3>
                            <p style="margin-top: -17px;">We have set an affordable and reasonable fee structure for our students.<br>
                                   <small style="color:#000;font-size:12px;font-weight:550;"> Program duration 4 years.</small>
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
                                        <td>25,000</td>
                                        <td>75,000</td>
                                        <td>10,000</td>
                                        <td>100,000</td>
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