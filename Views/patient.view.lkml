view: patient {
  #sql_table_name: `g-medical-imaging.presentation.patient`;;
  derived_table: {
    sql: with dicom_base as (
      SELECT
            distinct PatientID as PatientId
            ,rank() over (partition by PatientId order by PatientAge desc) rank
        ,case
            when PatientSex = 'M' then 1
            when PatientSex = 'F' then 0
            when PatientSex is null then fhoffa.x.random_int(0,1)
            else fhoffa.x.random_int(0,1)
        end as PatientSex_key
        ,case
            when PatientAge = ' ' then null
            when PatientAge = '' then null
            when lower(PatientAge) like '%d' then null
            when lower(PatientAge) like '%m' then null
            when PatientAge = '999' then '99'
            when PatientAge = 'N-A' then null
            else Replace(REPLACE(lower(PatientAge), 'y', ''),'0','')
        end as PatientAge
      FROM
      `bigquery-public-data.idc_current.dicom_all`),

      dicom_key as (
      select
            * except (PatientAge)
        ,case
            when PatientAge is null then fhoffa.x.random_int(10,100)
            when PatientAge = '' then fhoffa.x.random_int(10,100)
            when PatientAge = '999' then 99
            else cast(PatientAge as integer)
        end as PatientAge
            ,fhoffa.x.random_int(60,301) PatientWeight
            ,fhoffa.x.random_int(1,57) PatientAddressState_key
            ,fhoffa.x.random_int(1,7) EthnicGroup_key
            ,fhoffa.x.random_int(1,21) Occupation_key
            ,fhoffa.x.random_int(1,6) SmokingStatus_key
      from dicom_base
      where rank = 1),

    dicom_enriched as (
      select dk.* except (rank
                  ,PatientSex_key
                  ,PatientAddressState_key
                  ,EthnicGroup_key
                  ,Occupation_key
                  ,SmokingStatus_key)
      ,case
            when PatientSex_key = 0 then 'Female'
            when PatientSex_key = 1 then 'Male'
            else 'Other'
      end as PatientSex
      ,case
            when EthnicGroup_key = 1 then 'Caucasian'
            when EthnicGroup_key = 2 then 'African American'
            when EthnicGroup_key = 3 then 'Asian'
            when EthnicGroup_key = 4 then 'Hispanic'
            when EthnicGroup_key = 5 then 'Aboriginal'
            when EthnicGroup_key = 6 then 'Pacific Islander'
      end as EthnicGroup
      ,case
             when PatientAge < 18 then 'Student'
            when Occupation_key = 1 then 'Accountant'
            when Occupation_key = 2 then 'Adminstrator'
            when Occupation_key = 3 then 'Artist'
            when Occupation_key = 4 then 'Business Analyst'
            when Occupation_key = 5 then 'Construction Worker'
            when Occupation_key = 6 then 'Cook'
            when Occupation_key = 7 then 'Data Engineer'
            when Occupation_key = 8 then 'Daycare Operator'
            when Occupation_key = 9 then 'Entreprenuer'
            when Occupation_key = 10 then 'Freelancer'
            when Occupation_key = 11 then 'Homemaker'
            when Occupation_key = 12 then 'Mechanic'
            when Occupation_key = 13 then 'Nurse'
            when Occupation_key = 14 then 'Physician'
            when Occupation_key = 15 then 'Aboriginal'
            when Occupation_key = 16 then 'Program Director'
            when Occupation_key = 17 then 'Project Manager'
            when Occupation_key = 18 then 'Server'
            when Occupation_key = 19 then 'Social Worker'
            when Occupation_key = 20 then 'Teacher'
      end as Occupation
      ,if(SmokingStatus_key < 5, 'No', 'Yes') as SmokingStatus
      ,l.state as PatientAddressState
      FROM dicom_key dk
      join `g-medical-imaging.landing.location` l on dk.PatientAddressState_key = l.location_id),

  main as (SELECT * from dicom_enriched)

  select * from main;;

  persist_for: "48 hours"

}

  drill_fields: [PatientId]

  dimension: PatientId {
    primary_key: yes
    type: string
    sql: ${TABLE}.PatientId ;;
  }

  dimension: PatientSex {
    type: string
    sql: ${TABLE}.PatientSex ;;
  }

  dimension: PatientAge {
    type: tier
    tiers: [0,10,20,30,40,50,60,70,80]
    style: integer
    sql: ${TABLE}.PatientAge ;;
  }


  dimension: PatientWeight {
    type: tier
    tiers: [20,30,40,50,60,70,80,90,100,120,130,140,150,160,170,180,190,200,210,220]
    style: integer
    sql: ${TABLE}.PatientWeight ;;
  }

  dimension: PatientAddressState{
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.PatientAddressState ;;
  }

  dimension: country {
    type: string

    sql: ${TABLE}.country ;;
  }

  dimension: EthnicGroup {
    type: string
    sql: ${TABLE}.EthnicGroup ;;
  }

  dimension: Occupation {
    type: string
    sql: ${TABLE}.Occupation ;;
  }

  dimension: SmokingStatus {
    type: string
    sql: ${TABLE}.SmokingStatus ;;
  }


  measure: count {
    type: count
    drill_fields: [PatientId]
    value_format: "[>=1000000]0,,\"M\";[>=1000]0,\"K\";0"
  }
}
