include: "//@{CONFIG_PROJECT_NAME}/campaign_utm.view"

view: campaign_utm {
  extends: [campaign_utm_config]
}

view: campaign_utm_core {
  derived_table: {
    sql:
      SELECT
        id,
        regexp_matches(object_story_spec__link_data__link,'utm_campaign=([^&]*)') as utm_campaign
      FROM @{FACEBOOK_ADS_SCHEMA_NAME}.facebook_adcreative_@{FACEBOOK_ADS_ACCOUNT_ID}
      ;;
  }
  # later, dimension declarations reference the derived column(s)

  dimension: creative_id {
    type: number
    sql: ${TABLE}.id ;;
    primary_key: yes
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }
}
