#include: "//@{CONFIG_PROJECT_NAME}/ad_actions_by_placement_and_device.view"
include: "//@{CONFIG_PROJECT_NAME}/insights_placement_and_device__actions.view"

view: ad_actions_by_placement_and_device {
  extends: [ad_actions_by_placement_and_device_config]
}

view: ad_actions_by_placement_and_device_core {
  sql_table_name: @{FACEBOOK_ADS_SCHEMA_NAME}.facebook_ad_insights_placement_and_device_@{FACEBOOK_ADS_ACCOUNT_ID}__actions ;;

  dimension: ad_id {
    type: string
    sql: ${TABLE}._sdc_source_key_ad_id ;;
  }

  dimension: adset_id {
    type: string
    sql: ${TABLE}._sdc_source_key_adset_id ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}._sdc_source_key_campaign_id ;;
  }

  dimension_group: date_start {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}._sdc_source_key_date_start ;;
  }

  dimension: impression_device {
    type: string
    sql: ${TABLE}._sdc_source_key_impression_device ;;
  }

  dimension: placement {
    type: string
    sql: ${TABLE}._sdc_source_key_placement ;;
  }

  dimension: action_destination {
    type: string
    sql: ${TABLE}.action_destination ;;
  }

  dimension: action_type {
    type: string
    sql: ${TABLE}.action_type ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}