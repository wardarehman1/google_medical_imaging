view: patient_2 {

  sql_table_name: `g-medical-imaging.presentation.patient`;;

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
