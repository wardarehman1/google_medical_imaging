view: instance {
  sql_table_name: `g-medical-imaging.Presentation_Layer.instance`
    ;;
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

  dimension: instances {
    type: string
    sql: ${TABLE}.instances ;;
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

  measure: count {
    type: count
    # drill_fields: [series_instance_uid]
  }
}
