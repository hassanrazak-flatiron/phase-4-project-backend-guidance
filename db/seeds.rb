# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

rochelle = User.create(first_name:"Rochelle", last_name:"Katzman", email: "rochelleK@gmail.com",password:'1234')
veronique = User.create(first_name:"Veronique", last_name:"Cadet", email: "vero-cadet@gmail.com",password:'1234')
hassan = User.create(first_name:"Hassan", last_name:"Razak", email: "hassan-razak@gmail.com",password:'1234')

ortho = Career.create(
    name:"Orthodontist",
     description:"Orthodontists are dentists who specialize in straightening teeth. They design and create appliances like braces to realign teeth and jaws.",
     min_edu_req:"Bachelor's, Master's, Specialty",
     time_to_complete:11,
     avg_cost_edu:523000,
     ave_salary:229000,
     salary_1:181000,
     salary_2:201000,
     salary_3:288000,
     salary_4: 330000
     )
     curator = Career.create(
    name:"Cuseum Curator",
     description:"Museum curators oversee collections of artwork and historic items and may conduct instructional, research, or public service activities of the institution.",
     min_edu_req:"Bachelor's and Master's Degrees",
     time_to_complete:8,
     avg_cost_edu:250000,
     ave_salary:56000,
     salary_1:38000,
     salary_2:44000,
     salary_3:61000,
     salary_4: 66000
     )
     vet = Career.create(
    name:"Veterinarian",
     description:"Veterinarians care for the health of animals and diagnose, treat, and research medical conditions and diseases. Most veterinarians work in private clinics and hospitals. Others travel to farms or work in settings such as laboratories, classrooms, or zoos.",
     min_edu_req:"Bachelor's and Master's Degrees",
     time_to_complete:8,
     avg_cost_edu:300000,
     ave_salary:94000,
     salary_1:55000,
     salary_2:74000,
     salary_3:111000,
     salary_4: 130000
     )
     
     
    

     ent_law = Career.create(
    name:"Entertainment Lawyer",
     description:"Entertainment lawyers represent clients in the entertainment industry and negotiate on their behalf, review contracts and advise on client agreements. Entertainment lawyers usually keep a percentage of their clients’ earned contracts.",
     min_edu_req:"Bachelor's and JD",
     time_to_complete:7,
     avg_cost_edu:217000,
     ave_salary:91000,
     salary_1:64000,
     salary_2:72000,
     salary_3:106000,
     salary_4: 113000
     )
     
     programmer = Career.create(
    name:"Software Programmer",
     description:"Programmers write code for computer programs and mobile applications. They also are involved in maintaining, debugging and troubleshooting systems and software to ensure that everything is running smoothly.",
     min_edu_req:"Bachelor's Degree",
     time_to_complete:4,
     avg_cost_edu:167000,
     ave_salary:101000,
     salary_1:59000,
     salary_2:88000,
     salary_3:134000,
     salary_4: 171000
     )

     programmer_bootcamp = Career.create(
    name:"Software Programmer",
     description:"Programmers write code for computer programs and mobile applications. They also are involved in maintaining, debugging and troubleshooting systems and software to ensure that everything is running smoothly.",
     min_edu_req:"Bootcamp",
     time_to_complete:1,
     avg_cost_edu:18000,
     ave_salary:91000,
     salary_1:59000,
     salary_2:88000,
     salary_3:134000,
     salary_4: 171000
     )

     graphic_des = Career.create(
    name:"Graphic Designer",
     description:"Graphic designers create advertisements, brochures, magazines, reports, and other materials using computer software or by hand.",
     min_edu_req:"Bachelor's Degree",
     time_to_complete:4,
     avg_cost_edu:161000,
     ave_salary:50000,
     salary_1:42000,
     salary_2:47000,
     salary_3:55000,
     salary_4: 71000
     )
     ee = Career.create(
    name:"Environmental Engineer",
     description:"Environmental engineers use the principles of engineering, soil science, biology, and chemistry research and improve environmental problems. They are often involved in recycling, waste disposal, public health, and water and air pollution control.",
     min_edu_req:"Bachelor's Degree",
     time_to_complete:4,
     avg_cost_edu:160000,
     ave_salary:88000,
     salary_1:75000,
     salary_2:85000,
     salary_3:97000,
     salary_4: 109000
     )
     trainer = Career.create(
    name:"Athletic Trainer",
     description:"Athletic trainers are health care professionals who treat athletes by preventing, diagnosing, and treating injuries and illnesses.",
     min_edu_req:"Bachelor's Degree",
     time_to_complete:4,
     avg_cost_edu:150000,
     ave_salary:48000,
     salary_1:39000,
     salary_2:45000,
     salary_3:55000,
     salary_4: 65000
     )
     adv_dir = Career.create(
    name:"Advertising Director",
     description:"Advertising directors are marketing executives who manage programs and creative campaigns to promote products and services to increase sales.",
     min_edu_req:"Bachelor's Degree",
     time_to_complete:4,
     avg_cost_edu:145000,
     ave_salary:117000,
     salary_1:73000,
     salary_2:87000,
     salary_3:121000,
     salary_4: 156000
     )
     teacher = Career.create(
    name:"Music Teacher",
     description:"K-12 music teachers lead courses in general music education, choir, instruments, and more for students in Kindergarten through 6th grade.",
     min_edu_req:"Bachelor's Degree",
     time_to_complete:4,
     avg_cost_edu:141000,
     ave_salary:46000,
     salary_1:38000,
     salary_2:42000,
     salary_3:55000,
     salary_4: 61000
     )

     Path.create(priority:1,user_id:rochelle.id,career_id:ortho.id)
     Path.create(priority:2,user_id:rochelle.id,career_id:vet.id)
     Path.create(priority:3,user_id:rochelle.id,career_id:curator.id)
     Path.create(priority:1,user_id:vero.id,career_id:ent_law.id)
     Path.create(priority:2,user_id:vero.id,career_id:programmer.id)
     Path.create(priority:3,user_id:vero.id,career_id:programmer_bootcamp.id)
     Path.create(priority:1,user_id:hassan.id,career_id:graphic_des.id)
     Path.create(priority:2,user_id:hassan.id,career_id:ee.id)
     Path.create(priority:3,user_id:hassan.id,career_id:trainer.id)

    
     
     
     
     
     
     
     
     
     