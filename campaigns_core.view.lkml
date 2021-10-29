include: "//@{CONFIG_PROJECT_NAME}/campaigns.view"

view: campaigns {
  extends: [campaigns_config]
}

view: campaigns_core {
  sql_table_name: @{FACEBOOK_ADS_SCHEMA_NAME}.facebook_campaigns_@{FACEBOOK_ADS_ACCOUNT_ID} ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  #   - dimension: buying_type
  #     type: string
  #     sql: ${TABLE}.buying_type

  dimension: effective_status {
    type: string
    sql: ${TABLE}.effective_status ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: objective {
    type: string
    sql: ${TABLE}.objective ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
