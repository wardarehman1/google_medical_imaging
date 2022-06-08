connection: "lookerdbconnection-google-mi"

include: "/views/**/*.view"            # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: instance {
  # join: study {
  #   type: left_outer
  #   sql_on: ${study.StudyInstanceUID} = ${instance.SOP_instance_uid} ;;
  #   relationship: many_to_one
  #   }

  join: patient {
    type: left_outer
    sql_on: ${instance.patient_id} = ${patient.patient_id} ;;
    relationship: many_to_one
  }

  # join: modality  {
  #   type: left_outer
  #   sql_on: ${patient.PatientID}  = ${modality.PatientID} ;;
  #   relationship: many_to_one
  # }
}
