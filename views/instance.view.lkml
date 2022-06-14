view: instance {
  sql_table_name: `g-medical-imaging.Presentation_Layer.instance`;;
  drill_fields: [SOP_instance_uid]

  dimension: SOP_instance_uid {
    primary_key: yes
    type: string
    sql: ${TABLE}.SOPInstanceUID ;;
  }

  dimension_group: instance_creation {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.InstanceCreationDate ;;
  }

  dimension: patient_id {
    type: string
    sql: ${TABLE}.patient_id ;;
  }

  dimension: size_on_disk {
    type: number
    sql: ${TABLE}.size_on_disk ;;
  }

  dimension: study_instance_uid {
    type: string
    sql: ${TABLE}.StudyInstanceUID ;;
  }

  dimension: series_instance_UID {
    type: string
    sql: ${TABLE}.SeriesInstanceUID ;;
  }

  dimension: instances {
    type: string
    sql: ${TABLE}.instances ;;
  }

  measure: count {
    type: count
    # drill_fields: [series_instance_uid]
  }

  measure: cases {
    type: count_distinct
    sql: ${patient_id} ;;
  }

  measure: sizeondisk {
    type: sum
    sql: ${size_on_disk} ;;
  }

  measure: studies {
    type: count_distinct
    sql: ${study_instance_uid} ;;
  }

  measure: series {
    type: count_distinct
    sql: ${series_instance_UID} ;;
  }

  measure: instances_count {
    type: count_distinct
    sql: ${instances} ;;
  }






}
