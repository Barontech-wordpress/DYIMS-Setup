<div class="page-header-area">
    <div class="container">
        <div class="page-header-content">
            <h2 class="title"><span class="inner"><?php echo $this->lang->line('about_page'); ?></span></h2>
            <!-- <ul class="links">
                <li><a href="<?php echo site_url(); ?>"><?php echo $this->lang->line('home'); ?></a></li>
                <li><a href="javascript:void(0);"><?php echo $this->lang->line('about_school'); ?></a></li>
            </ul> -->
            <h2 class="title-2">
                <?php if(isset($this->setting->school_name)){ ?>
                <?php echo $this->setting->school_name; ?>
                <?php }else{ ?>
                        <?php echo SMS; ?>
                <?php } ?>
            </h2>
        </div>
    </div>
</div>

<style>
   @media only screen and (max-width:480px)
   {
       .about-area{
        background-color: white;
        padding: 100px 05px !important;
       }
   }
    .about-area{
        background-color: white;
        padding: 100px 50px;
    }
    .content-box {
        margin-bottom: 20px;
    }
    .content-box h1{
        color: #173162;
        font-size: 21px;
        font-weight: 600;
    }
    .content-box p{
        color: #000;
        font-size: 15px;
        font-weight: normal;
        line-height: 21px;
        text-align: justify;
    }
    .content-box .black-text{
         color: #000;
        font-size: 16px;
        font-weight: 600;
    }
    .content-image-box{
        text-align:center;
        
    }
    .content-image-box .name{
        font-size: 12px;
        font-weight: 800;
        color:#173162;
    }
    .content-image-box .designation{
        font-size: 14px;
        color:#173162;
        line-height: 9px;
    }
    .content-box ul li{
        line-height: 30px;
        color: black;
    }
    table td{
        font-size: 18px;
    }
</style>
<?php if(isset($this->setting->about_text) && !empty($this->setting->about_text)){ ?>
   <div class="about-area">
        <div class="container">
            <!--<div class="row">-->
            <!--    <div class="col-lg-6 col-md-6 col-12">-->
            <!--        <div class="welcome-banner">-->
            <!--            <?php if(isset($this->setting->about_image) && !empty($this->setting->about_image)){ ?>-->
            <!--            <img class="wb-banner" src="<?php echo UPLOAD_PATH; ?>about/<?php echo $this->setting->about_image; ?>" alt="">-->
            <!--            <?php }else{ ?>-->
            <!--                <img class="wb-banner" src="<?php echo IMG_URL; ?>about-image.jpg" alt="">-->
            <!--            <?php } ?>  -->
            <!--        </div>-->
            <!--    </div>-->
            <!--    <div class="col-lg-5 offset-lg-1 col-md-6 col-12">-->
            <!--        <div class="welcome-content">-->
            <!--            <h2 class="title"><?php echo $this->lang->line('welcome_to'); ?></h2>-->
            <!--            <h2 class="title-2">-->
            <!--                <?php if(isset($this->setting->school_name)){ ?>-->
            <!--                <?php echo $this->setting->school_name; ?>-->
            <!--                <?php }else{ ?>-->
            <!--                      <?php echo SMS; ?>-->
            <!--                <?php } ?>-->
            <!--            </h2>-->
            <!--            <p class="text">-->
            <!--                <?php echo $this->setting->about_text; ?>...  -->
            <!--            </p>                        -->
            <!--        </div>-->
            <!--    </div>-->
            <!--</div>-->

                    <div class="row justify-content-center">
                        <div class="col-lg-12 col-md-12 col-12">
                            <div class="content-box">
                               
                                   <h1>Introduction to DYIMS</h1>
                                   <p>This Allied Sciences college is recently founded by Dr. Muhammad Yahya. He was the first surgeon in Layyah. While practicing in South Punjab he perceived that there is a dearth of qualified allied health professionals in the region. The contributing factor behind this scarcity of skilled professionals was the meager education resources. Students were not conversant with the fact that there are multiple disciplines except MBBS through which they can render services to humanity. Thus, the need of the hour was to modify the deep-rooted perception. Job positions were available in Qadir Ali hospital and other hospitals too but there were few people to hold charge of the designations.
                                        For this intent Professor Zafar Ali Chaudhry, VC Faisalabad University laid the groundwork for an allied health sciences college in 2019. The construction of the institute commenced in 2019 in the hub of Layyah. In no time the building blossomed into a phenomenal institute. The bottom rock manifesto of the institute was to provide quality education to the students. 
                                   </p>
                            </div>
                            <div class="content-box">
                               
                                   <h1>Qadir Ali Hospital History</h1>
                                   <p>Qadir Ali Hospital became functional as an eight-bed hospital in 2008, intending to provide general surgery services to the region's lower middle class who had scant good options. With the vigorous efforts and sweat of the passionate healthcare staff, the hospital upgraded to 60 beds. This milestone was aced in 12 years. This hospital is based on a 3 story building that is located on Main Kutchery Road, Layyah.</p>
                                   <p>  The hospital is offering inpatient and outpatient services. Also addressing Maternity, Gynecology, General & Laparoscopic Surgery, Chest Medicine, Internal Medicine Urology, Gastroenterology, Orthopedics, ENT, Neurosurgery, Ophthalmology, Neurology, Psychiatry, Cardiology & Dermatology.</p>
                            </div>
                            <div class="content-box">
                               
                                   <h1>DR. Yahya Professional Welfare Society</h1>
                                   <p>This welfare society works on the ideology of community service. Executive members of the society are devoted to reaching out to people who can seek health assistance on their own. For this drive, Dr. Yahya professional welfare society occasionally arranges well-organized free health camps. Qualified doctors volunteer themselves for the noble cause by checking and counseling natives without charging a penny. Society has previously organized special medical camps for eyes, ENT, and hepatitis checkups in different villages. Free lab investigations were performed, and patients were also given free medicines. This society also yearns for conducting awareness sessions, campaigns, and seminars for ensuring the health safety of the people.
                                   </p>
                            </div>
                        </div>
                        
                    </div>
                    <div class="row justify-content-center" style="background-color:#f3f3f3; padding: 30px 05px 60px 5px;margin-bottom: 30px;" >
                        <div class="col-lg-12 col-md-12 col-12">
                            <div class="row">
                               
                                   <div class="col-lg-10 col-12">
                                       <div class="content-box">
                                           <h1>Governor Message</h1>
                                           <p>I have served as a Chief Consultant of surgery and have been associated with top-notch institutes for years. This decision has made me proud as this institute will be the first allied health science college of South Punjab. Being the Chief Executive Officer I am strong-willed to provide the best academic environment to the students. Layyah’s first Allied health sciences college. 
                                               I aspire to strengthen the roots of this institute by utilizing my years of experience and prowess for flourishing this institute. My ambition is to make a very competent institution that can be at neck and neck with international medical institutes. The world is progressing in medicine and research at a swift pace that’s why I strive to keep the standard of institute advanced and modernized. Here at DYIMS, mentors will be striving to well-groom students so that they can confidently pitch in their professional life.
                                           <p>
                                       </div>
                                   </div>
                                   <div class="col-lg-2 col-12">
                                       <div class="content-image-box">
                                           <img src="<?php echo site_url('assets/images/governor.PNG');?>" alt="governor-img">
                                           <p class="name">Muhammad Sarwar</p>
                                           <p class="designation" style="margin:0px 2px">Governor&nbsp;Punjab/Chancellor</p>
                                       </div>
                                   </div>
                            </div>
                        </div>
                        <div>
                            <hr>
                        </div>
                        <div class="col-lg-12 col-md-12 col-12">
                            <div class="row">
                               
                                   <div class="col-lg-2 col-12">
                                       <div class="content-image-box">
                                           <img src="<?php echo site_url('assets/images/chairman.PNG');?>" alt="chairman-img">
                                           <p class="name">Dr. Yahya</p>
                                           <p class="designation">DYIMS Chairman</p>
                                       </div>
                                   </div>
                                   <div class="col-lg-10 col-12">
                                       <div class="content-box">
                                           <h1>Chairman Message</h1>
                                           <p>Being the 1st surgeon of Layyah I felt that I must go above and beyond the call of duty to render my services to people. Years back, I envisioned empowering the students of Layyah. I perceived that there was a dire need for healthcare technologists so from there ideology of DYIMS arose. </p>
                                           <p>Today, I am elated to proclaim that we have successfully transformed our vision into reality. I was headstrong and determined to enlighten the students about the significance of Allied health professions. My goal was to open new horizons of professional fields for the student of South Punjab and nearby vicinities. My love for my land has inspired me to lay the foundation of this DYIMS. I have made certain that all the facilities, faculty members, and infrastructure of the institute be level pegging to the National and International level. I am confident that students graduating from our institute will be respected in their province, in Pakistan, and the world. I am eager to see the students of Layyah growing and prospering in the medical field. Extending my best wishes to all the enrolling students.</p>
                                       </div>
                                    </div>
                            </div>
                        </div>
                        
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-lg-12 col-md-12 col-12">
                            <div class="content-box">
                               
                                   <h1>Affiliation</h1>
                                   <p>DYIMS is attached with two reputable hospitals and affiliated with a Government University where students can go for clinical rotations and practice. They can interact with patients and can have good exposure in these hospitals.</p>
                            </div>
                            <div class="content-box">
                               
                                   <h1 class="black-text">GC University Faisalabad:</h1>
                                   <p>
                                        Government College University, Faisalabad has emerged as a leading centre of learning and research in a short span of time. The University with its dynamic faculty and innovative syllabi has become a catalyst of intellectual, social and industrial change. It caters to the diverse needs of society by imparting education in almost all the major fields of learning.
                                        The Government College University’s journey started as a primary school in 1897 in the present building of Govt. College for Women, Karkhana Bazar, Faisalabad. It was promoted to High School and Intermediate College in 1905 and 1924 respectively. It was elevated to the degree level in 1933 and postgraduate disciplines were introduced in 1963. The long journey that started with the humble beginning reached its climax when it was granted the status of University in October 2002.
                                        The Government College University, Faisalabad has a long history of excellence and distinction as an institution. Renowned scholars and eminent personalities have served this institution in various capacities at various stages of its history. It has produced outstanding personnel who have earned great fame not only for themselves but also for the nation.
                                   </p>
                                   <p>
                                        The luminaries like Mr. Abdul Hameed, Mr. W.H.F. Armstrong, Mr. Lala Chattan Annand, Mr. Hashmat Khan, Mr. Taj Khyal, Mr. Namdar Khan, Mr. Karamat Hussain Jafari, Mr. Mukhtar Mahmood Qureshi, Mr. Asmat ullah Khan, Dr. Asif Iqbal Khan and Dr. Arif Zaidi have served this institution.
                                        The university is situated at the Jhang Road not far from the historical Clock Tower. The main campus is spread on 37 acres and the construction of new campus has been started on an area of 200 acres some 3-4 kilometers away from the main campus at Jhang Road.
                                        The University is offering educational degrees in different disciplines. The University is a hub of educational, social and cultural activities with a close liaison with industry
                                        DYIMS is attached with two reputable hospitals and affiliated with a Government University where students can go for clinical rotations and practice. They can interact with patients and can have good exposure in these hospitals.
                                    </p>
                            </div>
                            <div class="content-box">
                               
                                   <h1>Why choose DYIMS?</h1>
                                   <ul style="list-style-type:none;">
                                        <li>State of the art Purpose built building in campus with area of 3.5 acres.</li>
                                        <li>This institute is affiliated with top-notch organizations.</li>
                                        <li>Qualified faculty and modern education are available. </li>
                                        <li>Professional grooming is the forte of the institute.</li>
                                        <li>FCPS/Mphill Faculty will be teaching here.</li>
                                        <li>Functional Well-equipped Laboratories are available within campus.</li>  
                                        <li>Own Private Hospital for Clinical training and Work.</li>
                                        <li>Entrepreneurship will be inculcated in the students.</li>
                                        <li>Campus Management System. </li>
                                        <li>The fee structure is affordable though the facilities are exceptional.</li>
                                    </ul>
                            </div>
                        </div>
                        
                    </div>
                    <div class="row " style="margin: 23px 0px;">
                           <div class="col-lg-9 col-12">
                               <div class="content-box">
                                   <h1>Our Vision</h1>
                                   <p>Qadir Ali Hospital became functional as an eight-bed hospital in 2008, intending to provide general surgery services to the region's lower middle class who had scant good options. With the vigorous efforts and sweat of the passionate healthcare staff, the hospital upgraded to 60 beds. This milestone was aced in 12 years. This hospital is based on a 3 story building that is located on Main Kutchery Road, Layyah.</p>
                                   <p>The hospital is offering inpatient and outpatient services. Also addressing Maternity, Gynecology, General & Laparoscopic Surgery, Chest Medicine, Internal Medicine Urology, Gastroenterology, Orthopedics, ENT, Neurosurgery, Ophthalmology, Neurology, Psychiatry, Cardiology & Dermatology.</p>
                               </div>
                            </div>
                            <div class="col-lg-3 col-12">
                               <div class="content-image-box">
                                   <img src="<?php echo site_url('assets/images/vision.PNG');?>" alt="vision">
                               </div>
                           </div>
                    </div>
                    <div class="row" style="margin: 23px 0px;">
                               
                       <div class="col-lg-4 col-12">
                           <div class="content-image-box">
                               <img src="<?php echo site_url('assets/images/mission.PNG');?>" alt="mission-img">
                           </div>
                       </div>
                       <div class="col-lg-8 col-12">
                           <div class="content-box">
                               <h1>Our Mission</h1>
                               <ul style="list-style-type:none;">
                                    <li>State of the art Purpose built building in campus with area of 3.5 acres.</li>
                                    <li>This institute is affiliated with top-notch organizations.</li>
                                    <li>Qualified faculty and modern education are available. </li>
                                    <li>Professional grooming is the forte of the institute.</li>
                                </ul>
                           </div>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-lg-12 col-md-12 col-12">
                            <div class="content-box">
                               
                                   <h1>Core Values</h1>
                                   <table class="table table-striped table-bordered" border: "1px solid #ededed" style="margin-top: 17px;">
                                      <!--<thead>-->
                                      <!--  <tr>-->
                                      <!--    <th scope="col">#</th>-->
                                      <!--    <th scope="col">First</th>-->
                                      <!--    <th scope="col">Last</th>-->
                                      <!--    <th scope="col">Handle</th>-->
                                      <!--  </tr>-->
                                      <!--</thead>-->
                                      <tbody>
                                        <tr>
                                        <td>Discipline</td>
                                          <td>Honesty</td>
                                        </tr>
                                        <tr>
                                          <td>Excellence</td>
                                          <td>Respect</td>
                                        </tr>
                                        <tr>
                                          <td>Diversity</td>
                                          <td>Integrity</td>
                                        </tr>
                                         <tr>
                                          <td>Compassion</td>
                                          <td>Responsibility</td>
                                        </tr>
                                      </tbody>
                                    </table>
                            </div>
                        </div>
                        
                    </div>

        </div>
    </div>
<?php } ?>
