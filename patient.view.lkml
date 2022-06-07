 view: patient {
   derived_table: {
   sql: SELECT
        PatientID as patient_id
        ,case when PatientSex = 'M' then "Male"
              when PatientSex = 'F' then "Female"
              when PatientSex is null then null else "Other" end
              as patient_sex,
        case
              when PatientAge = ' ' then Null
              when PatientAge = 'N-A' then Null
              else Replace(REPLACE(PatientAge, 'Y', ''),'0','') end
              as patients_age
         FROM `bigquery-public-data.idc_current.dicom_all`
       ;;
 }

#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
 }
