create table patients (PatientID int identity, 
                       PatientName varchar(50), 
                       PatientSexCode int)
                       
insert into patients(PatientName, PatientSexCode) 
            values ('Doe, Jane', 0)
insert into patients(PatientName, PatientSexCode) 
            values ('Doe, Dick', 1)
insert into patients(PatientName, PatientSexCode) 
            values ('Doe, Spot', 2)
insert into patients(PatientName, PatientSexCode) 
            values ('xxxxxxxx', 9)

select PatientName,
       case PatientSexCode
			when 0 then 'female'
			when 1 then 'male'
			when 2 then 'unknown'
			else 'Invalid PatientSexCode' 
        end AS "Patient Sex"
      from patients
--ya da
select PatientName,
       case 
			when PatientSexCode = 0 then 'female'
			when PatientSexCode = 1 then 'male'
			when PatientSexCode = 2 then 'unknown'
			else 'Invalid PatientSexCode' 
        end as "Patient Sex"
      from patients