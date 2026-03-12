# Data Schema: Revenue Leak Detector

This document defines the dataset structure used to simulate business operations for DesignFlow, a SaaS design platform (Read project_spec.md for more details).

------------------------------------------------------------------------------------------

# 1. Accounts Table

Represents companies or users subscribed to the platform.

Columns:

account_id
company_size
industry
region
plan_type
signup_date
monthly_revenue

Example values:

company_size → solo / small_business / mid_market
plan_type → free / pro / team

---------------------------------------------------------------------------------------------

# 2. Deals Table

Represents potential customers evaluating the platform.

Columns:

deal_id
account_id
lead_source
created_date
deal_value
discount_pct
competitor_mentioned
stage
close_date
deal_status

Example values:

lead_source → website / referral / outbound / ads
stage → demo / proposal / negotiation
deal_status → won / lost

---------------------------------------------------------------------------------------------

# 3. Product Usage Table

Tracks how actively customers use the platform.

Columns:

account_id
week_start
projects_created
templates_used
ai_design_tool_usage
exports_count
collaboration_sessions
weekly_active_users

These metrics indicate product engagement.

---------------------------------------------------------------------------------------------

# 4. Support Tickets Table

Records customer support issues.

Columns:

ticket_id
account_id
created_date
ticket_type
priority
resolution_hours
csat_score
ticket_summary

Example ticket types:

bug
billing
feature_request
performance_issue

---------------------------------------------------------------------------------------------

# 5. Sales Notes Table

Notes written by sales representatives during deal discussions.

Columns:

note_id
deal_id
account_id
note_date
note_text

Example note text:

"Customer liked collaboration features but said Canva offers more templates."

---------------------------------------------------------------------------------------------

# 6. Cancellation Table

Represents customers who cancelled their subscription.

Columns:

cancellation_id
account_id
cancellation_date
tenure_months
refund_requested
cancellation_reason_text
churned_revenue

Example cancellation reason:

"Switched to competitor because our team already uses Canva."
