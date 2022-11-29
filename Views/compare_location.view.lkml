view: compare_location {
  derived_table: {
    sql:
      SELECT
        'Cohort A' as cohort,
        patient.PatientAddressState  AS patient_address_state,
        COUNT(DISTINCT patient.PatientId ) AS patient_count
      FROM `g-medical-imaging.presentation.image_v1` AS image
      LEFT JOIN `g-medical-imaging.presentation.series_v1` AS series ON series.SeriesInstanceUID = image.SeriesInstanceUID
      LEFT JOIN `g-medical-imaging.presentation.patient` AS patient ON image.PatientId = patient.PatientId
      WHERE (series.tcia_cancerType ) IN ('Sarcomas', 'Soft-tissue Sarcoma', 'Uterine Carcinosarcoma') AND (series.tcia_tumorLocation ) IN ('Chest-Abdomen-Pelvis, Leg, TSpine', 'Extremities', 'Uterus', 'Various (11 locations)') AND (series.BodyPartExamined ) = 'T-SPINE'
      GROUP BY 1,2
      UNION ALL
      SELECT
        'Cohort B' as cohort,
        patient.PatientAddressState  AS patient_address_state,
        COUNT(DISTINCT patient.PatientId ) AS patient_count
      FROM `g-medical-imaging.presentation.image_v1` AS image
      LEFT JOIN `g-medical-imaging.presentation.series_v1` AS series ON series.SeriesInstanceUID = image.SeriesInstanceUID
      LEFT JOIN `g-medical-imaging.presentation.patient` AS patient ON image.PatientId = patient.PatientId
      WHERE (series.tcia_cancerType ) IN ('Sarcomas', 'Soft-tissue Sarcoma', 'Uterine Carcinosarcoma') AND (series.tcia_tumorLocation ) IN ('Chest-Abdomen-Pelvis, Leg, TSpine', 'Extremities', 'Uterus', 'Various (11 locations)') AND (series.BodyPartExamined ) = 'UTERUS'
      GROUP BY 1,2
      ;;
  }

  dimension: cohort {
    type: string
    sql: ${TABLE}.cohort ;;
  }

  dimension: patient_address_state {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.patient_address_state ;;
  }

  dimension: patient_count {
    type: number
    sql: ${TABLE}.patient_count ;;
  }

  measure: total_patient_count {
    type: sum
    sql: ${patient_count} ;;
  }
}
