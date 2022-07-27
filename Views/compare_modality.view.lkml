view: compare_modality {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql:
      SELECT
        'Cohort A' as cohort,
        series.Modality  AS series_modality,
        COUNT(DISTINCT image.study_viewer_URL ) AS image_url
      FROM `g-medical-imaging.presentation.image_v1` AS image
      LEFT JOIN `g-medical-imaging.presentation.series_v1` AS series ON series.SeriesInstanceUID = image.SeriesInstanceUID
      WHERE (series.tcia_cancerType ) IN ('Sarcomas', 'Soft-tissue Sarcoma', 'Uterine Carcinosarcoma') AND (series.tcia_tumorLocation ) IN ('Chest-Abdomen-Pelvis, Leg, TSpine', 'Extremities', 'Uterus', 'Various (11 locations)') AND (series.BodyPartExamined ) = 'T-spine'
      GROUP BY 1,2
      UNION ALL
      SELECT
        'Cohort B' as cohort,
        series.Modality  AS series_modality,
        COUNT(DISTINCT image.study_viewer_URL ) AS image_url
      FROM `g-medical-imaging.presentation.image_v1` AS image
      LEFT JOIN `g-medical-imaging.presentation.series_v1` AS series ON series.SeriesInstanceUID = image.SeriesInstanceUID
      WHERE (series.tcia_cancerType ) IN ('Sarcomas', 'Soft-tissue Sarcoma', 'Uterine Carcinosarcoma') AND (series.tcia_tumorLocation ) IN ('Chest-Abdomen-Pelvis, Leg, TSpine', 'Extremities', 'Uterus', 'Various (11 locations)') AND (series.BodyPartExamined ) = 'Uterus'
      GROUP BY 1,2
      ;;
  }

  dimension: cohort {
    type: string
    sql: ${TABLE}.cohort ;;
  }

  dimension: series_modality {
    type: string
    sql: ${TABLE}.series_modality ;;
  }

  dimension: image_url {
    type: number
    sql: ${TABLE}.image_url ;;
  }

  measure: total_image_urls {
    type: sum
    sql: ${image_url} ;;
  }
}
