view: patient {
  sql_table_name: `g-medical-imaging.Presentation_Layer.patient`
    ;;
  drill_fields: [patient_id]

  dimension: patient_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.patient_id ;;
  }

  dimension: patient_sex {
    type: string
    sql: ${TABLE}.patient_sex ;;
  }

  dimension: patients_age {
    type: string
    sql: ${TABLE}.patients_age ;;
  }

  dimension: patient_weight {
    type: string
    sql: ${TABLE}.PatientWeight ;;
  }

  dimension: patient_address {
    type: string
    sql: ${TABLE}.PatientAddress ;;
  }

  dimension: Ethnic_Group {
    type: string
    sql: ${TABLE}.Ethnic_Group ;;
  }

  dimension: Occupation {
    type: string
    sql: ${TABLE}.Occupation ;;
  }

  dimension: Smoking_Status {
    type: string
    sql: ${TABLE}.SmokingStatus ;;
  }

  dimension: Pregnancy_status {
    type: string
    sql: ${TABLE}.PregnancyStatus ;;
  }

  measure: count {
    type: count
    drill_fields: [patient_id]
  }
}
