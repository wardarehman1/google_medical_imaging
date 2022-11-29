connection: "lookerdbconnection-google-mi"

include: "/Views/**/*.view"            # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
include: "/Dashboards/**/*.dashboard"
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
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
