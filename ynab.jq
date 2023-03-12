# csv formatted list of categories and their goal targets from "single budget month" response
jq -r '.data.month.categories
| sort_by(.category_group_id,.id)
| .[]
| [.name, .goal_target/1000*-1]
| join("|")'
Untitled-1

# list of goal targets from "single budget month" response
jq -r '.data.month.categories
| sort_by(.category_group_id,.id)
| .[].goal_target/1000*-1'
Untitled-1

# list of activities from "single budget month" response
jq -r '.data.month.categories
| sort_by(.category_group_id,.id)
| .[].activity/1000'
Untitled-1







# print income, budgeted and activity amounts from "single budget month" response
jq -r .data.month | "income = \(.income/1000)\nbudgeted = \(.budgeted/1000)\nactivity = \(.activity/1000)"
Untitled-1

# csv format of all goal fields of each category from "single budget month" response
jq -r '.data.month.categories
| sort_by(.category_group_id,.id)
| .[]
| [
    .name,
    .goal_type,
    .goal_target/1000*-1,
    .goal_target_month,
    .goal_percentage_complete,
    .goal_months_to_budget,
    .goal_under_funded,
    .goal_overall_funded,
    .goal_overall_left
    ]
| join("|")'
Untitled-1
