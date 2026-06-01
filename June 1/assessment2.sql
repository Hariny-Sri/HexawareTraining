create database hospital_capstone_db;

use hospital_capstone_db;

create table patients
(
    patient_id int primary key,
    patient_name varchar(100),
    gender varchar(10),
    age int,
    city varchar(50),
    phone varchar(15)
);

create table departments
(
    department_id int primary key,
    department_name varchar(100)
);

create table doctors
(
    doctor_id int primary key,
    doctor_name varchar(100),
    specialization varchar(100),
    department_id int,
    consultation_fee decimal(10,2),
    foreign key(department_id) references departments(department_id)
);

create table appointments
(
    appointment_id int primary key,
    patient_id int,
    doctor_id int,
    appointment_date date,
    appointment_status varchar(30),
    foreign key(patient_id) references patients(patient_id),
    foreign key(doctor_id) references doctors(doctor_id)
);

create table treatments
(
    treatment_id int primary key,
    appointment_id int,
    treatment_name varchar(100),
    treatment_cost decimal(10,2),
    foreign key(appointment_id) references appointments(appointment_id)
);

create table bills
(
    bill_id int primary key,
    patient_id int,
    appointment_id int,
    bill_date date,
    total_amount decimal(10,2),
    bill_status varchar(30),
    foreign key(patient_id) references patients(patient_id),
    foreign key(appointment_id) references appointments(appointment_id)
);

create table payments
(
    payment_id int primary key,
    bill_id int,
    payment_mode varchar(30),
    paid_amount decimal(10,2),
    payment_status varchar(30),
    foreign key(bill_id) references bills(bill_id)
);

insert into departments values
(1,'Cardiology'),
(2,'Neurology'),
(3,'Orthopedics'),
(4,'Pediatrics'),
(5,'Dermatology');


insert into doctors values
(101,'Dr. Arjun','Cardiologist',1,1200),
(102,'Dr. Priya','Neurologist',2,1500),
(103,'Dr. Karthik','Orthopedic',3,1000),
(104,'Dr. Meena','Pediatrician',4,900),
(105,'Dr. Ravi','Dermatologist',5,800),
(106,'Dr. Nisha','Cardiologist',1,1300),
(107,'Dr. Surya','Neurologist',2,1400),
(108,'Dr. Deepa','Orthopedic',3,1100);

insert into patients values
(1,'Rahul','Male',35,'Hyderabad','9876543210'),
(2,'Sneha','Female',28,'Chennai','9876543211'),
(3,'Arun','Male',42,'Hyderabad','9876543212'),
(4,'Divya','Female',31,'Bangalore','9876543213'),
(5,'Kiran','Male',55,'Mumbai','9876543214'),
(6,'Meera','Female',24,'Chennai','9876543215'),
(7,'Vijay','Male',39,'Hyderabad','9876543216'),
(8,'Anjali','Female',48,'Delhi','9876543217'),
(9,'Rohit','Male',27,'Chennai','9876543218'),
(10,'Pooja','Female',36,'Bangalore','9876543219'),
(11,'Manoj','Male',44,'Mumbai','9876543220'),
(12,'Keerthi','Female',29,'Hyderabad','9876543221');

insert into appointments values
(1001,1,101,'2026-01-05','Completed'),
(1002,2,102,'2026-01-06','Completed'),
(1003,3,103,'2026-01-07','Cancelled'),
(1004,4,104,'2026-01-08','Completed'),
(1005,5,105,'2026-01-09','Completed'),
(1006,6,106,'2026-01-10','Completed'),
(1007,7,107,'2026-01-11','Pending'),
(1008,8,108,'2026-01-12','Completed'),
(1009,9,101,'2026-01-13','Completed'),
(1010,10,102,'2026-01-14','Completed'),
(1011,11,103,'2026-01-15','Completed'),
(1012,12,104,'2026-01-16','Pending'),
(1013,1,105,'2026-01-17','Completed'),
(1014,2,106,'2026-01-18','Completed'),
(1015,3,107,'2026-01-19','Completed'),
(1016,4,108,'2026-01-20','Completed'),
(1017,5,101,'2026-01-21','Completed'),
(1018,6,102,'2026-01-22','Completed'),
(1019,7,103,'2026-01-23','Pending'),
(1020,8,104,'2026-01-24','Completed');

insert into treatments values
(1,1001,'ECG',3000),
(2,1002,'Brain Scan',6000),
(3,1004,'Child Checkup',2000),
(4,1005,'Skin Therapy',3500),
(5,1006,'Heart Checkup',5000),
(6,1008,'Bone Scan',4500),
(7,1009,'ECG',3000),
(8,1010,'Brain Scan',6000),
(9,1011,'Knee Treatment',5500),
(10,1013,'Skin Therapy',3500),
(11,1014,'Heart Checkup',5000),
(12,1015,'Neuro Therapy',7000),
(13,1016,'Bone Scan',4500),
(14,1017,'ECG',3000),
(15,1018,'Brain Scan',6000);

insert into bills values
(501,1,1001,'2026-01-05',4200,'Paid'),
(502,2,1002,'2026-01-06',7500,'Paid'),
(503,4,1004,'2026-01-08',2900,'Paid'),
(504,5,1005,'2026-01-09',4300,'Paid'),
(505,6,1006,'2026-01-10',6300,'Paid'),
(506,8,1008,'2026-01-12',5600,'Paid'),
(507,9,1009,'2026-01-13',4200,'Paid'),
(508,10,1010,'2026-01-14',7500,'Paid'),
(509,11,1011,'2026-01-15',6500,'Paid'),
(510,1,1013,'2026-01-17',4300,'Paid'),
(511,2,1014,'2026-01-18',6300,'Paid'),
(512,3,1015,'2026-01-19',8500,'Paid'),
(513,4,1016,'2026-01-20',5600,'Paid'),
(514,5,1017,'2026-01-21',4200,'Unpaid'),
(515,6,1018,'2026-01-22',7500,'Paid');

insert into payments values
(1,501,'UPI',4200,'Paid'),
(2,502,'Card',7500,'Paid'),
(3,503,'Cash',2900,'Paid'),
(4,504,'UPI',4300,'Paid'),
(5,505,'Card',6300,'Paid'),
(6,506,'UPI',5600,'Paid'),
(7,507,'Cash',4200,'Paid'),
(8,508,'Card',7500,'Paid'),
(9,509,'UPI',6500,'Paid'),
(10,510,'Cash',4300,'Paid'),
(11,511,'UPI',6300,'Paid'),
(12,512,'Card',8500,'Paid'),
(13,513,'UPI',5600,'Paid'),
(14,514,'UPI',0,'Pending'),
(15,515,'Card',7500,'Paid');



select * from patients;

select * from doctors;

select * from patients
where city = 'Hyderabad';

select d.*
from doctors d
join departments dp on d.department_id = dp.department_id
where dp.department_name = 'Cardiology';

select * from appointments
where appointment_date > '2026-01-01';

select * from appointments
where appointment_status = 'Cancelled';

select * from bills
where total_amount > 5000;

select * from payments
where payment_mode = 'UPI';

select * from patients
where age between 30 and 50;

select * from doctors
where consultation_fee > 800;



select count(*) as total_patients
from patients;

select count(*) from doctors;

select count(*) from appointments;

select avg(consultation_fee) from doctors;

select max(treatment_cost) from treatments;

select sum(total_amount) from bills;

select sum(paid_amount) from payments;

select city, count(*) from patients
group by city;

select specialization, count(*) from doctors
group by specialization;

select appointment_status, count(*) 
from appointments
group by appointment_status;


select p.patient_name,
a.appointment_date,
a.appointment_status
from patients p
join appointments a
on p.patient_id = a.patient_id;

select d.doctor_name,
dp.department_name
from doctors d
join departments dp
on d.department_id = dp.department_id;

select p.patient_name,
d.doctor_name,
a.appointment_date
from appointments a
join patients p
on a.patient_id = p.patient_id
join doctors d
on a.doctor_id = d.doctor_id;

select a.appointment_id,
t.treatment_name,
t.treatment_cost
from appointments a
join treatments t
on a.appointment_id = t.appointment_id;

select b.bill_id,
p.patient_name,
b.total_amount
from bills b
join patients p
on b.patient_id = p.patient_id;

select b.bill_id,
py.payment_mode,
py.paid_amount,
py.payment_status
from bills b
join payments py
on b.bill_id = py.bill_id;

select p.patient_name,
d.doctor_name,
dp.department_name,
a.appointment_date,
a.appointment_status,
t.treatment_name,
t.treatment_cost,
b.total_amount,
py.payment_status
from appointments a
join patients p on a.patient_id = p.patient_id
join doctors d on a.doctor_id = d.doctor_id
join departments dp on d.department_id = dp.department_id
left join treatments t on a.appointment_id = t.appointment_id
left join bills b on a.appointment_id = b.appointment_id
left join payments py on b.bill_id = py.bill_id;



select doctor_id,
count(*) as total_appointments
from appointments
group by doctor_id;

select dp.department_name,
count(*) as total_appointments
from appointments a
join doctors d on a.doctor_id = d.doctor_id
join departments dp on d.department_id = dp.department_id
group by dp.department_name;

select dp.department_name,
sum(b.total_amount) as revenue
from bills b
join appointments a on b.appointment_id = a.appointment_id
join doctors d on a.doctor_id = d.doctor_id
join departments dp on d.department_id = dp.department_id
group by dp.department_name;

select treatment_name,
sum(treatment_cost) as total_treatment_cost
from treatments
group by treatment_name;

select p.city,
sum(b.total_amount) as total_billing
from bills b
join patients p on b.patient_id = p.patient_id
group by p.city;

select d.doctor_name,
count(*) as total_appointments
from appointments a
join doctors d on a.doctor_id = d.doctor_id
group by d.doctor_name
having count(*) > 2;

select dp.department_name,
sum(b.total_amount) as revenue
from bills b
join appointments a on b.appointment_id = a.appointment_id
join doctors d on a.doctor_id = d.doctor_id
join departments dp on d.department_id = dp.department_id
group by dp.department_name
having sum(b.total_amount) > 20000;

select city,
count(*) as patient_count
from patients
group by city
having count(*) > 2;



select *
from patients
where patient_id in
(select patient_id from appointments);

select *
from patients
where patient_id not in
(select patient_id from appointments);

select *
from doctors
where doctor_id not in
(select doctor_id from appointments);

select *
from bills
where total_amount >
(select avg(total_amount) from bills);

select *
from patients
where patient_id =
(
select patient_id
from bills
where total_amount =
(select max(total_amount) from bills)
);

select *
from doctors
where consultation_fee >
(select avg(consultation_fee) from doctors);

select distinct p.*
from patients p
join appointments a on p.patient_id = a.patient_id
join doctors d on a.doctor_id = d.doctor_id
join departments dp on d.department_id = dp.department_id
where dp.department_name = 'Cardiology';

select *
from bills
where bill_status = 'Unpaid';

select *
from appointments
where appointment_id in
(select appointment_id from treatments);

select p.patient_id,
p.patient_name,
sum(b.total_amount) as total_billing
from patients p
join bills b on p.patient_id = b.patient_id
group by p.patient_id,p.patient_name
having sum(b.total_amount) >
(
select avg(total_bill)
from
(
select sum(total_amount) as total_bill
from bills
group by patient_id
) x
);



select *
from appointments
where appointment_id not in
(select appointment_id from treatments);

select *
from bills
where bill_id not in
(select bill_id from payments);

select *
from payments
where paid_amount is null
or paid_amount = 0;

select a.*, b.bill_id
from appointments a
join bills b
on a.appointment_id = b.appointment_id
where a.appointment_status = 'Cancelled';

select b.bill_id,
b.total_amount,
p.paid_amount
from bills b
join payments p
on b.bill_id = p.bill_id
where p.payment_status = 'Paid'
and p.paid_amount < b.total_amount;

select *
from doctors
where department_id not in
(select department_id from departments);

select *
from appointments
where patient_id not in
(select patient_id from patients)
or doctor_id not in
(select doctor_id from doctors);


select p.patient_name,
p.city,
count(distinct a.appointment_id) as total_appointments,
sum(b.total_amount) as total_bill_amount,
sum(py.paid_amount) as total_paid_amount,
sum(b.total_amount) - sum(coalesce(py.paid_amount,0)) as pending_amount
from patients p
left join appointments a on p.patient_id = a.patient_id
left join bills b on p.patient_id = b.patient_id
left join payments py on b.bill_id = py.bill_id
group by p.patient_id,
p.patient_name,
p.city;
