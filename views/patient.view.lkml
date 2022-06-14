view: patient {
  sql_table_name: `g-medical-imaging.Presentation_Layer.patient1`
    ;;
  drill_fields: [patient_id]

  dimension: patient_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.patient_id ;;
  }

  dimension: patient_sex {
    type: string
    sql: ${TABLE}.patient_sex ;;
  }

  dimension: patients_age {
    type: string
    sql: ${TABLE}.PatientAge ;;
  }

  dimension: patient_weight {
    type: string
    sql: ${TABLE}.PatientWeight ;;
  }

  dimension: patient_address {
    type: string
    sql: ${TABLE}.PatientAddress ;;
  }

  dimension: Ethnic_Group {
    type: string
    sql: ${TABLE}.Ethnic_Group ;;
  }

  dimension: Occupation {
    type: string
    sql: ${TABLE}.Occupation ;;
  }

  dimension: Smoking_Status {
    type: string
    sql: ${TABLE}.SmokingStatus ;;
  }

  dimension: Pregnancy_status {
    type: string
    sql: ${TABLE}.PregnancyStatus ;;
  }

  dimension: body_part_examined {
    type: string
    sql: ${TABLE}.Body_Part_Examined ;;
  }

  dimension: contrast_bolus_agent {
    type: string
    sql: ${TABLE}.ContrastBolusAgent ;;
  }

  dimension: manufacturer_model_name {
    type: string
    sql: ${TABLE}.Manufacturer_Model_Name ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.Manufacturer ;;
  }

  dimension: modality {
    type: string
    sql: ${TABLE}.modality ;;
  }


  dimension: slice_thickness {
    type: string
    sql: ${TABLE}.SliceThickness ;;
  }

  dimension: KVP {
    type: string
    sql: ${TABLE}.KVP ;;
  }

  dimension: body_part_thickness {
    type: string
    sql: ${TABLE}.BodyPartThickness ;;
  }

  dimension: pixel_spacing {
    type: string
    sql: ${TABLE}.PixelSpacing ;;
  }

  dimension: XRay_tube_current {
    type: string
    sql: ${TABLE}.XRayTubeCurrent ;;
  }

  dimension: reconstruction_diameter {
    type: string
    sql: ${TABLE}.ReconstructionDiameter ;;
  }

  dimension: annotation_display_formatID {
    type: string
    sql: ${TABLE}.AnnotationDisplayFormatID ;;
  }



  measure: count {
    type: count
    drill_fields: [patient_id]
  }
}
