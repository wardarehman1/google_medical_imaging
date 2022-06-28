view: image {
  sql_table_name: `g-medical-imaging.presentation.image_V1`;;
  drill_fields: [SOPInstanceUID]

  dimension: SOPInstanceUID {
    primary_key: yes
    type: string
    sql: ${TABLE}.SOPInstanceUID ;;
  }

  dimension_group: InstanceCreationDate {
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

  dimension: PatientId {
    type: string
    sql: ${TABLE}.PatientId ;;
  }

  dimension: SegmentationType {
    type: string
    sql: ${TABLE}.SegmentationType ;;
  }

  dimension: study_viewer_URL {
    type: string
    sql: ${TABLE}.study_viewer_URL ;;
  }

  dimension: size_on_disk {
    type: number
    sql: ${TABLE}.size_on_disk ;;
  }

  dimension: StudyInstanceUID {
    type: string
    sql: ${TABLE}.StudyInstanceUID ;;
  }

  dimension: SeriesInstanceUID {
    type: string
    sql: ${TABLE}.SeriesInstanceUID ;;
  }

  measure: count {
    type: count
    # drill_fields: [series_instance_uid]
  }

  measure: cases {
    type: count_distinct
    sql: ${PatientId} ;;
    value_format: "[>=1000000]0,,\"M\";[>=1000]0,\"K\";0"
  }

  measure: count_size_on_disk {
    type: sum
    sql: ${size_on_disk} ;;
    value_format: "[>=1000000000000]0,,,,\"T\";[>=1000000000]0,,,\"B\";0"
  }

  measure: studies {
    type: count_distinct
    sql: ${StudyInstanceUID} ;;
    value_format: "[>=1000000]0,,\"M\";[>=1000]0,\"K\";0"
  }

  measure: series {
    type: count_distinct
    sql: ${SeriesInstanceUID} ;;
    value_format: "[>=1000000]0,,\"M\";[>=1000]0,\"K\";0"
  }

  measure: instances {
    type: count_distinct
    sql: ${SOPInstanceUID} ;;
    value_format: "[>=1000000]0,,\"M\";[>=1000]0,\"K\";0"
  }






}
