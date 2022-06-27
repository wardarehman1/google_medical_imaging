view: patient {
  sql_table_name: `g-medical-imaging.presentation.patient`
    ;;
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
    type: string
    sql: ${TABLE}.PatientAge ;;
  }

  dimension: PatientWeight {
    type: string
    sql: ${TABLE}.PatientWeight ;;
  }

  dimension: PatientAddressState{
    type: string
    sql: ${TABLE}.PatientAddressState ;;
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
  }
}
