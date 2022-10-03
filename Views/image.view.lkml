view: image {
  #sql_table_name: `g-medical-imaging.presentation.image_v1`;;
  derived_table: {
    sql:with CTE as
          (
            select
              a.StudyInstanceUID,
              a.SeriesInstanceUID,
              a.SOPInstanceUID,
            case
              when a.SegmentationType = 'Binary' then 1
              when a.SegmentationType = 'Fractional' then 0
              when a.SegmentationType is null then fhoffa.x.random_int(0,2)
              else fhoffa.x.random_int(0,2)
                end as SegmentationType,
              a.InstanceCreationDate,
            IF(a.Modality = "SM", CONCAT("https://viewer.imaging.datacommons.cancer.gov/slim/studies/", a.StudyInstanceUID),
              CONCAT("https://viewer.imaging.datacommons.cancer.gov/viewer/", a.StudyInstanceUID)) as study_viewer_URL,
              a.gcs_url,
              a.PatientID
            FROM `bigquery-public-data.idc_current.dicom_all` a),

        CTE1 as (
            select
              p.StudyInstanceUID,
              p.SeriesInstanceUID,
              p.SOPInstanceUID,
            case
            when safe_cast(p.SegmentationType as string) = '0' then 'Binary'
            when safe_cast(p.SegmentationType as string) = '1' then 'Fractional'
              end as SegmentationType,
              p.InstanceCreationDate,
              p.study_viewer_URL,
              p.gcs_url,
              p.PatientID
            from CTE p
            )
              select * from CTE1;;
    persist_for: "48 hours"
    #persist_for: "24 hours"  ## Best practice would be to use `datagroup_trigger: ecommerce_etl` but we don't here for snowflake costs
    #datagroup_trigger: GMI_default_datagroup
    }

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
