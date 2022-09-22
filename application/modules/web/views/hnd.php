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
                 <?php echo $this->lang->line('hnd'); ?>
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
                            <button class="tablinks" onclick="openCity(event, 'Nutrition')" id="defaultOpen" href="">Human Nutrition & Dietetics</button>
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

                        <div id="Nutrition" class="tabcontent col-sm-12">
                            <div class="container">
                                <h3>Introduction: </h3>
                                <div>
                                <!-- <img src="<?php echo site_url('/assets/images/student.png');?>" > -->
                                <!-- <?php echo $this->lang->line('our_testimonial_text'); ?> -->
                                     <img src="<?php echo site_url('/assets/images/food-and-nutrition_33.jpg');?>" alt="tab image" style="margin: 10px 0px;max-width: 500px;">

                                     <p style="color:#6d6d6d;padding-top:12px;font-size:18px;font-weight:500">
                                         Human nutrition and dietetics is an emerging field in Pakistan. It holds a vital role in disease management, so it is getting the deserved respect from the people. Through this program, students will be able to understand that how the human body does works, its diseases, and then there will be the main course of actions.</p> 
                                     <p style="color:#6d6d6d;padding-top:7px;font-size:18px;font-weight:500">
                                     Students will be skilled to assess nutritional problems and health complications by their knowledge. They will not give medicines to the patients for treatment instead they will be trained to treat patients through customized diet plans and medical nutrition therapy. Also, they will be able to treat critical patients who need nutrition support for survival.</p> 
                                   
                                </div>    
                            </div>    
                        </div>

                        <div id="Health_Sector" class="tabcontent">
                            <div class="container">
                                <h3>Role in Health Sector</h3>

                                <p style="color:#6d6d6d;padding-top:12px;font-size:18px;font-weight:500">After graduation, the Dietitian and Nutritionist will be able to work as a:</p> 
                                  <ul class="points"> 
                                        <li>Clinician in Hospitals.</li>
                                        <li>Community Healthcare Worker.</li>
                                        <li>Nutrition Educator.</li>
                                        <li>Sports Nutritionist and Coach.</li>
                                        <li>Food Service and Compliance. </li>
                                        <li>Healthcare Influencer.</li>
                                </ul>
                            </div>       
                        </div>

                        <div id="Choose" class="tabcontent">
                            <div class="container">
                                 
                            <h3>Why You Should Choose this Program</h3>

                            <p style="color:#6d6d6d;padding-top:12px;font-size:18px;font-weight:500">
                            <ul class="points"> 
                                    <li>If you think that health problems can be resolved just by the modification in lifestyle and diet then you should learn this art. </li>
                                    <li>You can earn at home by providing online consultations.</li>
                                    <li>If you are passionate to motivate people to make healthy eating choices then become a skilled dietitian and change the lives of people.</li>
                                    <li>You should choose this profession if you want to become a Health influencer.</li>
                                    <li>You can become a celebrity Nutritionist and can raise awareness.</li>
                            </ul>
                            </p> 

                            </div>       
                        </div>

                         <div id="Specialization" class="tabcontent">
                            <div class="container">
                                    
                                <h3>Why You Should Use Its Program</h3>
                                <p style="color:#6d6d6d;padding-top:12px;font-size:18px;font-weight:500">The Dietitians can do specialization in these fields:</p>
                                <ul class="points"> 
                                    <li>Renal and Kidney transplant</li>
                                    <li>Diabetic</li>
                                    <li>Nutrition Support</li>
                                    <li>Pediatric</li>
                              </ul>

                            </div> 
                        </div>

                        <div id="Courses" class="tabcontent">
                            <div class="container un-list">
                                    
                                    <h3>Courses</h3>
        
                                    <div class="row">
                                        <div class="col-lg-6 col-12">
                                            <ul >
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Pathology and Microbiology</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>English</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Introduction to Computer</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Pakistan Studies</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Introduction to Nutrition Sciences.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Exercise Physiology.</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Human Physiology.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Meal Management.</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Community Nutrition.</li>
                                            </ul>    
                                        </div>
                                        <div class="col-lg-6 col-12" >
                                            <ul>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Food Process Engineering.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Developmental Nutrition.</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Biochemistry & Genetics.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Critical Care and Emergency Nutrition</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Public Health Nutrition.</li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Nutrients and Drug Interaction.</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Food Laws and Regulations. </li>
                                                <li><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Food Microbiology.</li>
                                                <li class="blue"><span style="font-size:10px;"><i class="fas fa-circle"></i>&nbsp;&nbsp;&nbsp;&nbsp;</span>Research Methodology.</li>
                                            </ul> 
                                        </div>
                                    </div>
        
                                    </div> 
                           </div>
                           
                           
                           <div id="Faculty" class="tabcontent">
                            <div class="container">
                                    
                                <h3>Faculty</h3>
                                <p style="color:#6d6d6d;padding-top:12px;font-size:18px;font-weight:500">We have professional and experienced faculty members in the department of human and nutrition sciences. They are adept enough to make you the best Dietitians and Nutritionists.</p>
                                    <table class="table table-bordered" style="margin-top: 15px;">
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
                                        <td>Wahajul Hassan</td>
                                        <td>Ghulam Hur</td>
                                        <td>M.Sc. (Hons) Food Microbiology, M.Phil</td>
                                        <td>Sr. Lecturer (Nutrition)</td>
                                      </tr>
                                      <tr style="background-color: ;">
                                        <td>2</td>
                                        <td>Zarmina Mumtaz</td>
                                        <td>Mumtaz Ahmad</td>
                                        <td>BS (Hons) HND, MS (HND)</td>
                                        <td>Sr. Lecturer (Nutrition)</td>
                                      </tr>
                                      <tr style="background-color: ;">
                                        <td>3</td>
                                        <td>Muhammad Saqlain</td>
                                        <td>Malik Muhammad Aslam</td>
                                        <td>BS (Hons) HND, MS (HND)</td>
                                        <td>Sr. Lecturer (Nutrition)</td>
                                      </tr>
                                      <tr style="background-color: ;">
                                        <td>4</td>
                                        <td>M. Gulfam Khan</td>
                                        <td>Iftikhar Nawaz Khan</td>
                                        <td>B.Sc. (Hons) Human Nutrition</td>
                                        <td>Lecturer (Nutrition)</td>
                                      </tr>
                                      <tr style="background-color: ;">
                                        <td>5</td>
                                        <td>Umama Fatima Iqbal</td>
                                        <td>Sahib Zada Muhammad Iqbal</td>
                                        <td>B.Sc. (Hons) Human Nutrition</td>
                                        <td>Lecturer (Nutrition)</td>
                                      </tr>
                                      <tr style="background-color: ;">
                                        <td>6</td>
                                        <td>M. Jamal Hassan</td>
                                        <td>Altaf Ahmad</td>
                                        <td>BS (Hons) HND</td>
                                        <td>Lecturer (Nutrition)</td>
                                      </tr>
                                    </tbody>
                                  </table>

                            </div> 
                        </div>

                        <div id="Fee" class="tabcontent">
                            <div class="container">
                                    
                            <h3>Fee Structure</h3>
                            <p style="margin-top: -17px;">
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
                                        <td>70,000</td>
                                        <td>10,000</td>
                                        <td>95,000</td>
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
                                        <td>Total 4 Semester Fee:</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>305,000</td>
                                        </tr>
                                        
                                    </tbody>
                                    </table>
                                </div>

                            </div> 
                        </div>

                        <div id="Criteria" class="tabcontent">
                            <div class="container">
                                <h3>Eligibility Criteria:</h3>

                                <p style="color:#6d6d6d;padding-top:12px;font-size:18px;font-weight:500">After graduation, the Dietitian and Nutritionist will be able to work as a:</p> 
                                  <ul class="points"> 
                                        <li>Fsc (Pre-Medical) with minimum 45% marks as per HEC criteria. </li>
                                        <li>Minimum 60% marks in Fsc pre-medical or 50 % equivalence marks in A-levels (Biology is a must) for all programs.</li>
                                        <li>Minimum 45% marks in Fsc pre-medical or 45 % equivalence marks in A-levels (Biology is a must) for Human Nutrition and Dietetics only.</li>
                                        <li>Minimum 60 % marks in Matriculation.</li>
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