view: instance {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql:SELECT
           SELECT
    SOPInstanceUID as instances
    ,PatientID as patient_id
    ,StudyInstanceUID as StudyInstanceUID
    ,SeriesInstanceUID as SeriesInstanceUID
    ,InstanceCreationDate as InstanceCreationDate
    ,instance_size as size_on_disk
    FROM `bigquery-public-data.idc_current.dicom_all`
             ;;
  }
  }
