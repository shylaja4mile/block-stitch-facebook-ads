include: "/views/*.view.lkml"

explore: ad_insights_by_country {


  join: ads {
    type: left_outer
    sql_on: ${ad_insights_by_country.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets {
    type: left_outer
    sql_on: ${ad_insights_by_country.adset_id} = ${adsets.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${ad_insights_by_country.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }

  join: country_coordinates {
    type: left_outer
    sql_on: ${ad_insights_by_country.country} = ${country_coordinates.country} ;;
    relationship: many_to_one
  }
}
