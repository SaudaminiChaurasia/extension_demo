view: connection_reg_r3 {
  sql_table_name: `ecomm.connection_reg_r3` ;;

  dimension: created_at {
    type: number
    sql: ${TABLE}.created_at ;;
  }
  dimension: expires_at {
    type: number
    sql: ${TABLE}.expires_at ;;
  }
  dimension: looker {
    type: string
    sql: ${TABLE}.looker ;;
  }
  dimension: reg_key {
    type: string
    sql: ${TABLE}.reg_key ;;
  }
  measure: count {
    type: count
  }
}
