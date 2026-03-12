# Revenue Leak Detector

# Project Overview:

Revenue Leak Detector is my data science project designed to identify why a SaaS company loses revenue through customer churn and lost sales deals. 
The system analyzes product usage data, support tickets, sales notes, and cancellation feedback to uncover patterns that explain revenue loss.

The final output will be an interactive analytics application
It highlights the most important drivers of churn and deal loss, identifies accounts at risk, and recommends operational actions to reduce revenue leakage.

-----------------------------------------------------------------------------------------

# Company Context:

Fictional Company

Design Flow:
DesignFlow is a cloud based graphic design platform. 
It is similar to: 
Canva or Adobe Express (Design Flow is a Close competitor)


The platform allows users to:

- create social media graphics
- design marketing materials
- edit images
- use prebuilt templates
- collaborate with teammates

The product is widely used by creators, students, marketing teams, and small businesses that need fast design tools without needing advanced design skills.

-----------------------------------------------------------------------------------------

# Business Model

DesignFlow operates on a **subscription SaaS model**.

# Plans

**Free**

* limited templates
* watermark exports

**Pro ($12/month)**

* unlimited templates
* advanced design tools
* AI design assistant

**Team ($30/month per team)**

* collaboration tools
* shared brand assets
* team workspaces

Revenue primarily comes from **Pro and Team subscriptions**.

-----------------------------------------------------------------------------------------

# Core Business Problem:

DesignFlow is experiencing revenue loss through two main channels:

# 1. Lost Sales Deals

Potential customers evaluating the product sometimes choose competitor tools instead.

# 2. Customer Churn

Existing subscribers cancel their subscriptions.

The company collects large amounts of data across:

- product usage analytics
- sales notes
- support tickets
- cancellation feedback

However, leadership cannot easily determine **why revenue is being lost** because the causes are buried in scattered data sources.

The goal of this project is to build a system that **identifies, quantifies, and prioritizes the root causes of revenue loss**.

--------------------------------------------------------------------------------------------

# Key Questions This System Should Answer

The analytics system should help the company answer the following questions:

- Why are customers cancelling their subscriptions?
- Why are sales deals being lost to competitors?
- Which problems are responsible for the largest revenue losses?
- Which customer segments are most affected?
- Which accounts or deals show early warning signs of churn?
- What operational changes could recover the most revenue?

-----------------------------------------------------------------------------------------

# Revenue Loss Taxonomy

To organize root causes of revenue loss, issues will be categorized into a structured taxonomy.

# Commercial

* pricing concerns
* budget limitations
* discount expectations

# Product

* missing design templates
* missing features
* slow performance
* export limitations

# Operational

* onboarding confusion
* slow customer support
* unresolved bugs

# Competitive

* switching to competitor tools
* competitor feature advantages

# Adoption / Value Realization

* low product usage
* team members not adopting the platform
* users failing to complete early projects

--------------------------------------------------------------------------------------------

# Data Sources

The project will simulate a realistic SaaS dataset including several types of business data.

# Customer Accounts

Information about companies and subscription plans.

# Product Usage

Metrics describing how actively customers use the platform.

Examples:

* projects created
* templates used
* export count
* weekly active users

# Support Tickets

Customer support issues and resolution details.

Examples:

* ticket type
* resolution time
* support summary
* customer satisfaction score

# Sales Notes

Notes written by sales representatives during deal discussions.

# Cancellation Records

Customer feedback and reasons for cancelling subscriptions.

-----------------------------------------------------------------------------------------

# Analytical Methods

The project will combine multiple data science techniques:

# Data Analysis

Exploratory analysis of usage patterns, support activity, and churn behavior.

# Text Analysis

AI-based classification of support tickets, sales notes, and cancellation feedback into revenue-loss categories.

# Predictive Modeling

Machine learning model to estimate the probability of customer churn or deal loss.

# Revenue Impact Analysis

Quantification of how much revenue is lost due to each category of issue.

# Recommendation System

Generation of suggested actions the company can take to reduce revenue loss.

--------------------------------------------------------------------------------------------

# Minimum Viable Product (MVP)

The first version of the system will include:

* synthetic SaaS dataset
* classification of text data into revenue loss categories
* churn and deal-loss analysis
* a churn risk prediction model
* an interactive analytics dashboard built with Streamlit

--------------------------------------------------------------------------------------------

# Final Deliverable

The final product will be a web-based analytics application that allows users to:

* explore revenue loss by category
* view trends in churn and lost deals
* inspect real examples from sales notes and support tickets
* identify accounts at risk of churn
* view recommended operational actions to reduce revenue loss

The system demonstrates how companies can use data science to translate scattered operational data into actionable business insights.
