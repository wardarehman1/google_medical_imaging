  view: image_2 {

  sql_table_name: `g-medical-imaging.presentation.image_v1`;;

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
    group_label: "Study Details"
    type: string
    sql: ${TABLE}.study_viewer_URL ;;
    link: {
      label: "Images"
      url: "{{value}}"
    }
  }

  dimension: gcs_url {
    type: string
    sql: ${TABLE}.gcs_url ;;
    link: {
      label: "gcs_url"
      url: "{{value}}"
    }
  }

  dimension: study_viewer_URL_pic {
    type: string
    sql: ${study_viewer_URL} ;;
    html: <p><img height="100" src="https://viewer.imaging.datacommons.cancer.gov/slim/studies/2.25.10002364400405805979841287074388487930"></img></p>
      ;;
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


  measure: images {
    type: count_distinct
    sql: ${study_viewer_URL} ;;
    value_format: "[>=1000000]0,,\"M\";[>=1000]0,\"K\";0"
  }



}
