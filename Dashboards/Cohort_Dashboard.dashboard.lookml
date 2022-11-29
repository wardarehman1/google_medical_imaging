- dashboard: cohort_dashboard
  title: Cohort Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: jtdlST26AswSZ5SKn4mNG7
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |2-

      <p align="left">

      <b><font color="Black" size="6">Image Details</font></b>

      </p>
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Segmentation Type
    name: Segmentation Type
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_column
    fields: [image.SegmentationType, image.count]
    filters: {}
    sorts: [image.SegmentationType]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    series_colors:
      image.count: "#FDEC85"
    defaults_version: 1
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 35
    col: 9
    width: 7
    height: 6
  - title: Series
    name: Series
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: single_value
    fields: [image.series]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 2
    col: 8
    width: 4
    height: 2
  - title: Studies
    name: Studies
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: single_value
    fields: [image.studies]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 2
    col: 4
    width: 4
    height: 2
  - title: Cases
    name: Cases
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: single_value
    fields: [image.cases]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 2
    col: 16
    width: 4
    height: 2
  - title: Instances
    name: Instances
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: single_value
    fields: [image.instances]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 2
    col: 12
    width: 4
    height: 2
  - title: MultiPlanar Excitation
    name: MultiPlanar Excitation
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_column
    fields: [series.MultiPlanarExcitation, image.count]
    sorts: [series.MultiPlanarExcitation]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 4a543302-b64d-409c-9863-679b5b230aac
      options:
        steps: 5
    series_types: {}
    series_colors: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 16
    col: 12
    width: 12
    height: 6
  - title: ContrastBolusIngredient
    name: ContrastBolusIngredient
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_column
    fields: [image.count, series.ContrastBolusIngredient]
    filters: {}
    sorts: [image.count desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    defaults_version: 1
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 35
    col: 0
    width: 9
    height: 6
  - title: ContrastBolusRoute
    name: ContrastBolusRoute
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_column
    fields: [image.count, series.ContrastBolusRoute]
    sorts: [image.count desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    series_colors:
      image.count: "#10C871"
    defaults_version: 1
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 28
    col: 0
    width: 9
    height: 7
  - title: ContrastBolusTotalDose
    name: ContrastBolusTotalDose
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_column
    fields: [image.count, series.ContrastBolusTotalDose]
    filters:
      series.ContrastBolusTotalDose: "-NULL"
    sorts: [image.count desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: a3f9463f-88e2-450e-9363-9525c96ecd6d
      options:
        steps: 5
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    series_types: {}
    series_colors: {}
    defaults_version: 1
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 28
    col: 16
    width: 8
    height: 7
  - title: Modality
    name: Modality
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_column
    fields: [image.count, series.Modality]
    sorts: [image.count desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    series_colors:
      image.count: "#C2DD67"
    defaults_version: 1
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 4
    col: 12
    width: 12
    height: 6
  - title: CancerType
    name: CancerType
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_area
    fields: [image.count, series.tcia_cancerType]
    filters: {}
    sorts: [image.count desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    series_types: {}
    series_colors: {}
    ordering: none
    show_null_labels: false
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 10
    col: 0
    width: 12
    height: 6
  - title: TumorLocation
    name: TumorLocation
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_area
    fields: [image.count, series.tcia_tumorLocation]
    filters: {}
    sorts: [image.count desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
      options:
        steps: 5
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    series_types: {}
    series_colors: {}
    ordering: none
    show_null_labels: false
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 10
    col: 12
    width: 12
    height: 6
  - title: ContrastBolusAgent
    name: ContrastBolusAgent
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_bar
    fields: [series.ContrastBolusAgent, image.count]
    filters: {}
    sorts: [image.count desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
      options:
        steps: 5
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    series_types: {}
    series_colors: {}
    defaults_version: 1
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 28
    col: 9
    width: 7
    height: 7
  - title: Gender wise Studies
    name: Gender wise Studies
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_pie
    fields: [patient.PatientSex, image.studies]
    sorts: [image.studies desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    series_colors: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 43
    col: 0
    width: 8
    height: 6
  - title: Instance Creation in the Timeline
    name: Instance Creation in the Timeline
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_column
    fields: [image.InstanceCreationDate_date, image.cases]
    fill_fields: [image.InstanceCreationDate_date]
    filters:
      image.InstanceCreationDate_month: 9 months
    sorts: [image.InstanceCreationDate_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 1ebd8493-ebcc-4e57-a4ff-ab3e6111da24
      options:
        steps: 5
    series_types: {}
    series_colors:
      image.cases: "#faaea5"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 16
    col: 0
    width: 12
    height: 6
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |2-

      <p align="left">

      <b><font color="Black" size="6">Patient Details</font></b>

      </p>
    row: 41
    col: 0
    width: 24
    height: 2
  - title: Study Viewer URL
    name: Study Viewer URL
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_grid
    fields: [image.study_viewer_URL]
    sorts: [image.study_viewer_URL]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      image.cases:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    note_state: collapsed
    note_display: above
    note_text: Click on the Study Viewer URL to open the study in the image viewer
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 4
    col: 0
    width: 12
    height: 6
  - title: Manufacturer in Series
    name: Manufacturer in Series
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_bar
    fields: [series.manufacturer, image.series]
    sorts: [image.series desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688
      options:
        steps: 5
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    series_types: {}
    series_colors:
      image.series: "#3EB0D5"
    defaults_version: 1
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 22
    col: 0
    width: 12
    height: 6
  - title: Manufacturer Model Name in Series
    name: Manufacturer Model Name in Series
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_bar
    fields: [image.series, series.ManufacturerModelName]
    sorts: [image.series desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
      options:
        steps: 5
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    series_types: {}
    series_colors:
      image.series: "#c98cf5"
    defaults_version: 1
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 22
    col: 12
    width: 12
    height: 6
  - title: PatientAge in Series
    name: PatientAge in Series
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_column
    fields: [patient.PatientAge, image.series]
    sorts: [patient.PatientAge]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 1ebd8493-ebcc-4e57-a4ff-ab3e6111da24
      options:
        steps: 5
    series_colors:
      image.series: "#C2DD67"
    defaults_version: 1
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 43
    col: 8
    width: 8
    height: 6
  - title: PatientWeight
    name: PatientWeight
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_column
    fields: [image.series, patient.PatientWeight]
    sorts: [patient.PatientWeight]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 1ebd8493-ebcc-4e57-a4ff-ab3e6111da24
      options:
        steps: 5
    series_colors:
      image.series: "#4276BE"
    defaults_version: 1
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 43
    col: 16
    width: 8
    height: 6
  - title: Smoking Status in Series
    name: Smoking Status in Series
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_column
    fields: [image.series, patient.SmokingStatus]
    sorts: [image.series desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 1ebd8493-ebcc-4e57-a4ff-ab3e6111da24
      options:
        steps: 5
    series_colors:
      image.series: "#9174F0"
    defaults_version: 1
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 49
    col: 0
    width: 8
    height: 6
  - title: Ethnic Group
    name: Ethnic Group
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_grid
    fields: [patient.EthnicGroup, image.studies]
    sorts: [patient.EthnicGroup]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 1ebd8493-ebcc-4e57-a4ff-ab3e6111da24
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      image.studies:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: circle
    series_colors:
      image.series: "#9174F0"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    interpolation: linear
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 49
    col: 8
    width: 8
    height: 6
  - title: States in Series
    name: States in Series
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_map
    fields: [patient.PatientAddressState, image.series]
    sorts: [patient.PatientAddressState]
    limit: 500
    column_limit: 50
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 49
    col: 16
    width: 8
    height: 6
  - title: Total Images
    name: Total Images
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: single_value
    fields: [image.images]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 2
    col: 0
    width: 4
    height: 2
  - title: Total Patients
    name: Total Patients
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: single_value
    fields: [patient.count]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 2
    col: 20
    width: 4
    height: 2
  - title: Scanning Sequence
    name: Scanning Sequence
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_column
    fields: [image.count, series.ScanningSequence]
    filters: {}
    sorts: [image.count desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    series_colors:
      image.count: "#AEC8C1"
    defaults_version: 1
    listen:
      Modality: series.Modality
      ContrastBolusAgent: series.ContrastBolusAgent
      SegmentationType: image.SegmentationType
      ScanningSequence: series.ScanningSequence
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
      PatientWeight: patient.PatientWeight
      Tcia TumorLocation: series.tcia_tumorLocation
      BodyPartExamined: series.BodyPartExamined
      'Tcia CancerType ': series.tcia_cancerType
    row: 35
    col: 16
    width: 8
    height: 6
  filters:
  - name: 'Tcia CancerType '
    title: 'Tcia CancerType '
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Google_Medical_Imaging_Data_Model
    explore: image
    listens_to_filters: []
    field: series.tcia_cancerType
  - name: Tcia TumorLocation
    title: Tcia TumorLocation
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Google_Medical_Imaging_Data_Model
    explore: image
    listens_to_filters: ['Tcia CancerType ']
    field: series.tcia_tumorLocation
  - name: BodyPartExamined
    title: BodyPartExamined
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Google_Medical_Imaging_Data_Model
    explore: image
    listens_to_filters: ['Tcia CancerType ']
    field: series.BodyPartExamined
  - name: Modality
    title: Modality
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Google_Medical_Imaging_Data_Model
    explore: image
    listens_to_filters: ['Tcia CancerType ']
    field: series.Modality
  - name: ScanningSequence
    title: ScanningSequence
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Google_Medical_Imaging_Data_Model
    explore: image
    listens_to_filters: ['Tcia CancerType ']
    field: series.ScanningSequence
  - name: ContrastBolusAgent
    title: ContrastBolusAgent
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: Google_Medical_Imaging_Data_Model
    explore: image
    listens_to_filters: ['Tcia CancerType ']
    field: series.ContrastBolusAgent
  - name: ClinicalTrialSponsorName
    title: ClinicalTrialSponsorName
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: Google_Medical_Imaging_Data_Model
    explore: image
    listens_to_filters: ['Tcia CancerType ']
    field: series.ClinicalTrialSponsorName
  - name: SegmentationType
    title: SegmentationType
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: Google_Medical_Imaging_Data_Model
    explore: image
    listens_to_filters: ['Tcia CancerType ']
    field: image.SegmentationType
  - name: PatientSex
    title: PatientSex
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: Google_Medical_Imaging_Data_Model
    explore: image
    listens_to_filters: ['Tcia CancerType ']
    field: patient.PatientSex
  - name: PatientAge
    title: PatientAge
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: Google_Medical_Imaging_Data_Model
    explore: image
    listens_to_filters: []
    field: patient.PatientAge
  - name: PatientWeight
    title: PatientWeight
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: Google_Medical_Imaging_Data_Model
    explore: image
    listens_to_filters: []
    field: patient.PatientWeight
  - name: EthnicGroup
    title: EthnicGroup
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: Google_Medical_Imaging_Data_Model
    explore: image
    listens_to_filters: ['Tcia CancerType ']
    field: patient.EthnicGroup
  - name: PatientAddressState
    title: PatientAddressState
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Google_Medical_Imaging_Data_Model
    explore: image
    listens_to_filters: ['Tcia CancerType ']
    field: patient.PatientAddressState
