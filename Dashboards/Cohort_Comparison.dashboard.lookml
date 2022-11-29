- dashboard: cohort_comparison
  title: Cohort Comparison
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: cyCdTev5mswPSFavLNbeO8
  elements:
  - title: Manufacturer Involvement in Studies
    name: Manufacturer Involvement in Studies
    model: Google_Medical_Imaging_Data_Model
    explore: compare_manufacturer
    type: looker_column
    fields: [compare_manufacturer.cohort, compare_manufacturer.total_image_studies,
      compare_manufacturer.series_manufacturer]
    pivots: [compare_manufacturer.cohort]
    sorts: [compare_manufacturer.total_image_studies desc 0, compare_manufacturer.cohort]
    limit: 500
    query_timezone: America/Los_Angeles
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
    series_types: {}
    series_colors:
      Cohort A - compare_manufacturer.total_image_studies: "#ac5252"
      Cohort B - compare_manufacturer.total_image_studies: "#3f75c8"
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 0
    col: 0
    width: 9
    height: 5
  - title: Series Modality Between Cohorts
    name: Series Modality Between Cohorts
    model: Google_Medical_Imaging_Data_Model
    explore: compare_modality
    type: looker_bar
    fields: [compare_modality.cohort, compare_modality.series_modality, compare_modality.total_image_urls]
    pivots: [compare_modality.cohort]
    sorts: [compare_modality.cohort, compare_modality.series_modality]
    limit: 500
    query_timezone: America/Los_Angeles
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
    series_types: {}
    series_colors:
      Cohort B - compare_modality.total_image_urls: "#3f75c8"
      Cohort A - compare_modality.total_image_urls: "#ac5252"
    defaults_version: 1
    listen: {}
    row: 0
    col: 9
    width: 9
    height: 5
  - title: Patients in the United States
    name: Patients in the United States
    model: Google_Medical_Imaging_Data_Model
    explore: compare_location
    type: looker_map
    fields: [compare_location.cohort, compare_location.patient_address_state, compare_location.total_patient_count]
    pivots: [compare_location.cohort]
    sorts: [compare_location.total_patient_count desc 0, compare_location.cohort]
    limit: 500
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: true
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
    map_value_colors: ["#ac5252", "#3f75c8"]
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
    listen: {}
    row: 5
    col: 0
    width: 18
    height: 10
