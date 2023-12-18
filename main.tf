resource "newrelic_alert_policy" "count" {
    count=3
  name = "alert-policy.${count.index+1}"
  incident_preference = "PER_POLICY" # PER_POLICY is default
}
resource "newrelic_alert_policy" "for-each" {
    for_each = var.policy-value
    name = each.value.name
}
