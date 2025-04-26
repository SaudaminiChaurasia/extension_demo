view: fan_experience_promo_email {
  sql_table_name: `ecomm.fan_experience_promo_email` ;;

  dimension: avg_unit_price {
    type: number
    sql: ${TABLE}.avg_unit_price ;;
  }
  dimension: centroid_label {
    type: string
    sql: ${TABLE}.centroid_label ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: event_usage {
    type: number
    sql: ${TABLE}.event_usage ;;
  }
  dimension: purchases {
    type: number
    sql: ${TABLE}.purchases ;;
  }
  dimension: users_first_name {
    type: string
    sql: ${TABLE}.users_first_name ;;
  }
  dimension: users_name {
    type: string
    sql: ${TABLE}.users_name ;;
  }
  measure: count {
    type: count
    drill_fields: [users_name, users_first_name]
  }
}
