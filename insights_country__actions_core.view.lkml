include: "//@{CONFIG_PROJECT_NAME}/insights_country__actions.view"

view: ad_actions_by_country {
  extends: [ad_actions_by_country_config]
}

view: ad_actions_by_country_core {
  sql_table_name: @{FACEBOOK_ADS_SCHEMA_NAME}.facebook_ad_insights_country_@{FACEBOOK_ADS_ACCOUNT_ID}__actions ;;

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

  measure: total_actions {
    type: sum
    sql: ${TABLE}.value ;;
  }
}