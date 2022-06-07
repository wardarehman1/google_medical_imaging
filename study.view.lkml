
 view: study {
   # Or, you could make this view a derived table, like this:
  derived_table: {
     sql:SELECT
     StudyInstanceUID as studies
    ,StudyDescription as study_description
    ,collection_id as collections
    ,StudyDate as study_date
    ,IF(Modality = "SM", CONCAT("https://viewer.imaging.datacommons.cancer.gov/slim/studies/", StudyInstanceUID), CONCAT("https://viewer.imaging.datacommons.cancer.gov/viewer/", StudyInstanceUID)) as study_viewer_URL
    ,CONCAT("https://doi.org/", Source_DOI) as collection_page_url
    ,SeriesInstanceUID as series
    ,SeriesDescription as series_description
    FROM `bigquery-public-data.idc_current.dicom_all`
       ;;
   }
#
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
