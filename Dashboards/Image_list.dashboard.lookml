- dashboard: image_list
  title: Image list
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: y7WqvYFS88wkQsOvV9OJmD
  elements:
  - title: Images
    name: Images
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Tcia CancerType: series.tcia_cancerType
      BodyPartExamined: series.BodyPartExamined
      ContrastBolusAgent: series.ContrastBolusAgent
      Modality: series.Modality
      ClinicalTrialSponsorName: series.ClinicalTrialSponsorName
      ScanningSequence: series.ScanningSequence
      SegmentationType: image.SegmentationType
      PatientSex: patient.PatientSex
      PatientAge: patient.PatientAge
      PatientWeight: patient.PatientWeight
      EthnicGroup: patient.EthnicGroup
      PatientAddressState: patient.PatientAddressState
    row: 0
    col: 0
    width: 24
    height: 15
  filters:
  - name: Tcia CancerType
    title: Tcia CancerType
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
    listens_to_filters: []
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
    listens_to_filters: []
    field: series.ContrastBolusAgent
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
    listens_to_filters: []
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
    listens_to_filters: []
    field: series.ClinicalTrialSponsorName
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
    listens_to_filters: []
    field: series.ScanningSequence
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
    listens_to_filters: []
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
    listens_to_filters: []
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
    listens_to_filters: []
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
    listens_to_filters: []
    field: patient.PatientAddressState
