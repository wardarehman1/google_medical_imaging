view: modality {
  sql_table_name: `g-medical-imaging.Presentation_Layer.modality`
    ;;

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

  dimension: patient_id {
    type: string
    sql: ${TABLE}.Patient_ID ;;
  }

  dimension: size_on_disk {
    type: string
    sql: ${TABLE}.size_on_disk ;;
  }

  dimension: surrogate_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.SurrogateKey ;;
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
    drill_fields: [manufacturer_model_name]
  }
}
