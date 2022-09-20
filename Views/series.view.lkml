view: series {
  # Or, you could make this view a derived table, like this:
  #sql_table_name:`g-medical-imaging.presentation.series_v1`;;
  derived_table: {
    sql:with CTE as(
        select
          dicom.SeriesInstanceUID,
          dicom.SeriesDescription,
          dicom.StudyInstanceUID,
          dicom.StudyDescription,
          dicom.StudyDate,
          dicom.StudyStatusID,
          dicom.StudyComments,
          dicom.ManufacturerModelName,
          dicom.Manufacturer,
            case when dicom.MultiPlanarExcitation ='Yes' then null end as MultiPlanarExcitation,
            case when dicom.ContrastBolusAgent='OMNIPAQUE' then null end as ContrastBolusAgent,
            case when dicom.ContrastBolusIngredient ='IODINE' then null end as ContrastBolusIngredient,
            case when dicom.ContrastBolusRoute ='Oral&IV' then null end as ContrastBolusRoute,
            case when dicom.ContrastBolusTotalDose='80' then null end as ContrastBolusTotalDose,
          ARRAY_TO_STRING(dicom.ScanningSequence, "Null") as ScanningSequence,
          dicom.ScanArc,
          dicom.ScanLength,
          dicom.Modality,
          dicom.tcia_tumorLocation,
          dicom.tcia_cancerType,
          dicom.collection_id,
          dicom.Source_DOI,
          dicom.ClinicalTrialSponsorName,
          dicom.BodyPartExamined,
          dicom.SliceThickness,
          dicom.KVP
        FROM `bigquery-public-data.idc_current.dicom_all` dicom
),
      CTE2 as
(
        select
          CTE.SeriesInstanceUID,
          CTE.SeriesDescription,
          CTE.StudyInstanceUID,
          CTE.StudyDescription,
          CTE.StudyDate,
          CTE.StudyStatusID,
          CTE.StudyComments,
          CTE.ManufacturerModelName,
          CTE.Manufacturer,
        case

            when CTE.MultiPlanarExcitation is null then fhoffa.x.random_int(0,3)
            else fhoffa.x.random_int(0,3)
            end as MultiPlanarExcitation,
        case

            when CTE.ContrastBolusAgent is null then fhoffa.x.random_int(0,7)
            else fhoffa.x.random_int(0,7)
            end as ContrastBolusAgent,
        case

            when CTE.ContrastBolusIngredient is null then fhoffa.x.random_int(0,7)
            else fhoffa.x.random_int(0,7)
            end as ContrastBolusIngredient,
        case

            when CTE.ContrastBolusRoute is null then fhoffa.x.random_int(0,7)
            else fhoffa.x.random_int(0,7)
            end as ContrastBolusRoute,
          CTE.ScanningSequence,
          CTE.ScanArc,
          CTE.ScanLength,
          CTE.Modality,
          CTE.tcia_tumorLocation,
          CTE.tcia_cancerType,
          CTE.collection_id,
          CTE.Source_DOI,
          CTE.ClinicalTrialSponsorName,
          CTE.BodyPartExamined,
          CTE.SliceThickness,
          CTE.KVP
        from CTE
)

        select
          CTE2.SeriesInstanceUID,
          CTE2.SeriesDescription,
          CTE2.StudyInstanceUID,
          CTE2.StudyDescription,
          CTE2.StudyDate,
          CTE2.StudyStatusID,
          CTE2.StudyComments,
          CTE2.ManufacturerModelName,
          CTE2.Manufacturer,
          mpe.MultiPlanarExcitationType as MultiPlanarExcitation,
          cba.ContrastBolusAgentType as ContrastBolusAgent,
          cbi.ContrastBolusIngredientTYPE as ContrastBolusIngredient,
          cbd.ContrastBolusTotalDoseTYPE as ContrastBolusTotalDose,
          cbr.ContrastBolusRouteTYPE as ContrastBolusRoute,
          CTE2.ScanningSequence,
          CTE2.ScanArc,
          CTE2.ScanLength,
          CTE2.Modality,
          CTE2.tcia_tumorLocation,
          CTE2.tcia_cancerType,
          CTE2.collection_id,
          CTE2.Source_DOI,
          CTE2.ClinicalTrialSponsorName,
          CTE2.BodyPartExamined,
          CTE2.SliceThickness,
          CTE2.KVP
        from CTE2
        left join `g-medical-imaging.landing.MultiPlanarExcitation`  mpe on mpe.MultiPlanarExcitationID=CTE2.MultiPlanarExcitation
        left join `g-medical-imaging.landing.ContrastBolusAgent` cba on cba.ContrastBolusAgentID=CTE2.ContrastBolusAgent
        left join `g-medical-imaging.landing.ContrastBolusIngredient` cbi on cbi.ContrastBolusIngredientID=CTE2.ContrastBolusIngredient
        left join `g-medical-imaging.landing.ContrastBolusTotalDose` cbd on cbd.ContrastBolusTotalDoseID=CTE2.ContrastBolusRoute
        left join `g-medical-imaging.landing.ContrastBolusRoute` cbr on cbr.ContrastBolusRouteID=CTE2.ContrastBolusRoute;;

    persist_for: "48 hours"
    #datagroup_trigger: GMI_default_datagroup
  }

drill_fields: [SeriesInstanceUID]

dimension: SeriesInstanceUID {
  group_label: "Series Details"
  primary_key: yes
  type: string
  sql: ${TABLE}.SeriesInstanceUID ;;
}

dimension: StudyDescription {
  group_label: "Study Details"
  type: string
  sql: ${TABLE}.StudyDescription ;;
}

dimension: StudyInstanceUID {
  group_label: "Study Details"
  type: string
  sql: ${TABLE}.StudyInstanceUID ;;
}

  dimension_group: StudyDate {
    group_label: "Study Details"
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


dimension: study_viewer_URL {
  group_label: "Study Details"
  type: string
  sql: ${TABLE}.study_viewer_URL ;;

}

dimension: SeriesDescription {
  group_label: "Series Details"
  type: string
  sql: ${TABLE}.SeriesDescription ;;
}

dimension: tcia_cancerType {
  group_label: "Cancer Details"
  type: string
  sql: ${TABLE}.tcia_cancerType ;;
}

dimension: tcia_tumorLocation {
  group_label: "Cancer Details"
  type: string
  sql: ${TABLE}.tcia_tumorLocation ;;
}

  dimension: ManufacturerModelName {
    group_label: "Manufacturer Details"
    type: string
    sql: ${TABLE}.ManufacturerModelName ;;
  }

  dimension: manufacturer {
    group_label: "Manufacturer Details"
    type: string
    sql: ${TABLE}.Manufacturer ;;
  }

  dimension: StudyComments {
    group_label: "Study Details"
    type: string
    sql: ${TABLE}.StudyComments ;;
  }

  dimension: ContrastBolusAgent {
    group_label: "ContrastBolusAgent Details"
    type: string
    sql: ${TABLE}.ContrastBolusAgent ;;
  }

  dimension: BodyPartExamined {
    group_label: "Patient Details"
    type: string
    sql: ${TABLE}.BodyPartExamined ;;
  }

  dimension: SliceThickness {
    group_label: "Patient Details"
    type: string
    sql: ${TABLE}.SliceThickness ;;
  }

  dimension: KVP {
    type: string
    sql: ${TABLE}.KVP ;;
  }

  dimension: ClinicalTrialSponsorName {
    type: string
    sql: ${TABLE}.ClinicalTrialSponsorName ;;
  }

  dimension: MultiPlanarExcitation {
    type: string
    sql: ${TABLE}.MultiPlanarExcitation ;;
  }

  dimension: ContrastBolusIngredient {
    group_label: "ContrastBolusAgent Details"
    type: string
    sql: ${TABLE}.ContrastBolusIngredient ;;
  }


  dimension: ContrastBolusRoute {
    group_label: "ContrastBolusAgent Details"
    type: string
    sql: ${TABLE}.ContrastBolusRoute ;;
  }

  dimension: ContrastBolusTotalDose {
    group_label: "ContrastBolusAgent Details"
    type: string
    sql: ${TABLE}.ContrastBolusTotalDose ;;
  }

  dimension: ScanningSequence {
    type: string
    sql: ${TABLE}.ScanningSequence ;;
  }

  dimension: Modality {
    type: string
    sql: ${TABLE}.Modality ;;
  }

  dimension: collection_id {
    type: string
    sql: ${TABLE}.collection_id ;;
  }

  dimension: Source_DOI {
    type: string
    sql: ${TABLE}.Source_DOI ;;
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
