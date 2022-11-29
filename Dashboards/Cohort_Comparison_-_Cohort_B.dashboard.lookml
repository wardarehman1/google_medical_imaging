- dashboard: cohort_comparison__cohort_b
  title: Cohort Comparison - Cohort B
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  filters_bar_collapsed: true
  preferred_slug: SnFALam0jUVKCYtUQB8myQ
  elements:
  - title: Total Cases
    name: Total Cases
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: single_value
    fields: [image.cases]
    filters:
      series.ContrastBolusAgent: ''
      series.Modality: ''
      series.ClinicalTrialSponsorName: ''
      series.ScanningSequence: ''
      patient.PatientSex: ''
      patient.PatientAddressState: ''
      patient.EthnicGroup: ''
      patient.PatientAge: ''
      patient.PatientWeight: ''
      series.tcia_cancerType: ''
      series.tcia_tumorLocation: ''
      series.BodyPartExamined: ''
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
      SegmentationType: image.SegmentationType
    row: 0
    col: 2
    width: 2
    height: 3
  - title: Total Images
    name: Total Images
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: single_value
    fields: [image.images]
    filters:
      series.ContrastBolusAgent: ''
      series.Modality: ''
      series.ClinicalTrialSponsorName: ''
      series.ScanningSequence: ''
      patient.PatientSex: ''
      patient.PatientAddressState: ''
      patient.EthnicGroup: ''
      patient.PatientAge: ''
      patient.PatientWeight: ''
      series.tcia_cancerType: ''
      series.tcia_tumorLocation: ''
      series.BodyPartExamined: ''
    limit: 500
    column_limit: 50
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
      SegmentationType: image.SegmentationType
    row: 0
    col: 8
    width: 2
    height: 3
  - title: Total Instances
    name: Total Instances
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: single_value
    fields: [image.instances]
    filters:
      series.ContrastBolusAgent: ''
      series.Modality: ''
      series.ClinicalTrialSponsorName: ''
      series.ScanningSequence: ''
      patient.PatientSex: ''
      patient.PatientAddressState: ''
      patient.EthnicGroup: ''
      patient.PatientAge: ''
      patient.PatientWeight: ''
      series.tcia_cancerType: ''
      series.tcia_tumorLocation: ''
      series.BodyPartExamined: ''
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
      SegmentationType: image.SegmentationType
    row: 0
    col: 0
    width: 2
    height: 3
  - title: Total Series
    name: Total Series
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: single_value
    fields: [image.series]
    filters:
      series.ContrastBolusAgent: ''
      series.Modality: ''
      series.ClinicalTrialSponsorName: ''
      series.ScanningSequence: ''
      patient.PatientSex: ''
      patient.PatientAddressState: ''
      patient.EthnicGroup: ''
      patient.PatientAge: ''
      patient.PatientWeight: ''
      series.tcia_cancerType: ''
      series.tcia_tumorLocation: ''
      series.BodyPartExamined: ''
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
      SegmentationType: image.SegmentationType
    row: 0
    col: 4
    width: 2
    height: 3
  - title: Total Patients
    name: Total Patients
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: single_value
    fields: [patient.count]
    filters:
      series.ContrastBolusAgent: ''
      series.Modality: ''
      series.ClinicalTrialSponsorName: ''
      series.ScanningSequence: ''
      patient.PatientSex: ''
      patient.PatientAddressState: ''
      patient.EthnicGroup: ''
      patient.PatientAge: ''
      patient.PatientWeight: ''
      series.tcia_cancerType: ''
      series.tcia_tumorLocation: ''
      series.BodyPartExamined: ''
    limit: 500
    column_limit: 50
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
      SegmentationType: image.SegmentationType
    row: 0
    col: 6
    width: 2
    height: 3
  - title: Patients in US
    name: Patients in US
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_map
    fields: [patient.PatientAddressState, patient.count]
    filters:
      series.ContrastBolusAgent: ''
      series.Modality: ''
      series.ClinicalTrialSponsorName: ''
      series.ScanningSequence: ''
      patient.PatientSex: ''
      patient.PatientAddressState: ''
      patient.EthnicGroup: ''
      patient.PatientAge: ''
      patient.PatientWeight: ''
      series.tcia_cancerType: ''
      series.tcia_tumorLocation: ''
      series.BodyPartExamined: ''
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
      SegmentationType: image.SegmentationType
    row: 3
    col: 0
    width: 10
    height: 6
  - title: Manufactures involved in Studies
    name: Manufactures involved in Studies
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_column
    fields: [image.studies, series.manufacturer]
    filters:
      series.ContrastBolusAgent: ''
      series.Modality: ''
      series.ClinicalTrialSponsorName: ''
      series.ScanningSequence: ''
      patient.PatientSex: ''
      patient.PatientAddressState: ''
      patient.EthnicGroup: ''
      patient.PatientAge: ''
      patient.PatientWeight: ''
      series.tcia_cancerType: ''
      series.tcia_tumorLocation: ''
      series.BodyPartExamined: ''
    sorts: [image.studies desc 0]
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
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    series_types: {}
    listen:
      SegmentationType: image.SegmentationType
    row: 0
    col: 10
    width: 7
    height: 9
  - title: Modality in Studies
    name: Modality in Studies
    model: Google_Medical_Imaging_Data_Model
    explore: image
    type: looker_bar
    fields: [image.studies, series.Modality]
    filters:
      series.ContrastBolusAgent: ''
      series.Modality: ''
      series.ClinicalTrialSponsorName: ''
      series.ScanningSequence: ''
      patient.PatientSex: ''
      patient.PatientAddressState: ''
      patient.EthnicGroup: ''
      patient.PatientAge: ''
      patient.PatientWeight: ''
      series.tcia_cancerType: ''
      series.tcia_tumorLocation: ''
      series.BodyPartExamined: ''
    sorts: [image.studies desc 0]
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
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    series_types: {}
    listen:
      SegmentationType: image.SegmentationType
    row: 0
    col: 17
    width: 7
    height: 9
  filters:
  - name: Tcia CancerType
    title: Tcia CancerType
    type: field_filter
    default_value: Uterine Carcinosarcoma
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Google_Medical_Imaging_Data_Model
    explore: image
    listens_to_filters: [Tcia TumorLocation, BodyPartExamined]
    field: series.tcia_cancerType
  - name: Tcia TumorLocation
    title: Tcia TumorLocation
    type: field_filter
    default_value: Uterus
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Google_Medical_Imaging_Data_Model
    explore: image
    listens_to_filters: [Tcia CancerType, BodyPartExamined]
    field: series.tcia_tumorLocation
  - name: BodyPartExamined
    title: BodyPartExamined
    type: field_filter
    default_value: Uterus
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Google_Medical_Imaging_Data_Model
    explore: image
    listens_to_filters: [Tcia CancerType, Tcia TumorLocation]
    field: series.BodyPartExamined
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
    listens_to_filters: [Modality, ScanningSequence, ClinicalTrialSponsorName, SegmentationType,
      PatientSex, PatientAge, Tcia CancerType, Tcia TumorLocation, BodyPartExamined]
    field: series.ContrastBolusAgent
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
    listens_to_filters: [Modality, ContrastBolusAgent, ClinicalTrialSponsorName, SegmentationType,
      PatientSex, PatientAge, Tcia CancerType, Tcia TumorLocation, BodyPartExamined]
    field: series.ScanningSequence
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
    listens_to_filters: [ScanningSequence, ContrastBolusAgent, ClinicalTrialSponsorName,
      SegmentationType, PatientSex, PatientAge, Tcia CancerType, Tcia TumorLocation,
      BodyPartExamined]
    field: series.Modality
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
    listens_to_filters: [Modality, ScanningSequence, ContrastBolusAgent, SegmentationType,
      PatientSex, PatientAge, Tcia CancerType, Tcia TumorLocation, BodyPartExamined]
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
    listens_to_filters: [Modality, ScanningSequence, ContrastBolusAgent, ClinicalTrialSponsorName,
      PatientSex, PatientAge, Tcia CancerType, Tcia TumorLocation, BodyPartExamined]
    field: image.SegmentationType
  - name: PatientSex
    title: PatientSex
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: Google_Medical_Imaging_Data_Model
    explore: image
    listens_to_filters: [Modality, ScanningSequence, ContrastBolusAgent, ClinicalTrialSponsorName,
      SegmentationType, PatientAge, Tcia CancerType, Tcia TumorLocation, BodyPartExamined]
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
    listens_to_filters: [Tcia CancerType, Tcia TumorLocation, BodyPartExamined]
    field: patient.PatientAddressState
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
    listens_to_filters: [Tcia CancerType, Tcia TumorLocation, BodyPartExamined]
    field: patient.EthnicGroup
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
