
view: study {
  # Or, you could make this view a derived table, like this:
  sql_table_name:`g-medical-imaging.Presentation_Layer.study`;;


dimension: Study_Instance_UID {
  primary_key: yes
  type: string
  sql: ${TABLE}.StudyInstanceUID ;;
}

dimension: Study_Description {
  type: string
  sql: ${TABLE}.StudyDescription ;;
}

dimension: Collection_id {
  type: string
  sql: ${TABLE}.Collection_id ;;
}

  dimension_group: Study_Date {
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
    sql: ${TABLE}.StudyDate ;;
  }


dimension: ClinicalTrialSponsorName {
  type: string
  sql: ${TABLE}.ClinicalTrialSponsorName ;;
}

dimension: study_viewer_URL {
  type: string
  sql: ${TABLE}.study_viewer_URL ;;
}

dimension: collection_page_URL {
  type: string
  sql: ${TABLE}.collection_page_URL ;;
}

dimension: SeriesInstanceUID {
  type: string
  sql: ${TABLE}.SeriesInstanceUID ;;
}

dimension: SeriesDescription {
  type: string
  sql: ${TABLE}.SeriesDescription ;;
}

dimension: tcia_cancerType {
  type: string
  sql: ${TABLE}.tcia_cancerType ;;
}

dimension: tcia_tumorLocation {
  type: string
  sql: ${TABLE}.tcia_tumorLocation ;;
}

  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
#}

# view: study {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
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
