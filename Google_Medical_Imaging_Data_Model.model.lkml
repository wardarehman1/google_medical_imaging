connection: "lookerdbconnection-google-mi"

include: "/Views/**/*.view"            # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard



#datagroup: GMI_default_datagroup {
#sql_trigger: SELECT MAX(InstanceCreationDate) FROM `g-medical-imaging.presentation.image`;;
#max_cache_age: "48 hour"
#}

#persist_with: GMI_default_datagroup

explore: image{

  join: series {
    type: left_outer
    sql_on: ${series.SeriesInstanceUID} = ${image.SeriesInstanceUID} ;;
    relationship: many_to_one
  }

  join: patient{
    type: left_outer
    sql_on: ${image.PatientId} = ${patient.PatientId} ;;
    relationship: many_to_one
  }

#  join: modality {
#    type: left_outer
#    sql_on: ${modality.patient_id} = ${instance.patient_id} ;;
#    relationship: many_to_one
#  }

}

explore:  compare_manufacturer{}
explore:  compare_modality{}
explore:  compare_location {}


explore: image_2{

  join: series_2 {
    type: left_outer
    sql_on: ${series_2.SeriesInstanceUID} = ${image_2.SeriesInstanceUID} ;;
    relationship: many_to_one
  }

  join: patient_2{
    type: left_outer
    sql_on: ${image_2.PatientId} = ${patient_2.PatientId} ;;
    relationship: many_to_one
  }
}
