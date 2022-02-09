# Modulotech's kata - PowerB2B

I want to develop an application called PowerB2B which will allow my clients to handle communications and business relations between them.

## Basics

PowerB2B needs to host many companies. Each company can have more than one access to PowerB2B.

## Role management

PowerB2B needs a role management to differentiate the different kind of users: accountants, hrs and managers.

## Billing

The first feature of PowerB2B is billing. Each client must be able to send an invoice to another one.

Obviously, an invoice displays many lines with mandatory fields:

* label
* HT price
* VAT rate
* TTC price
* ...

### Vouchers

To complete the billing, PowerB2B must allow its users to completely cancel an invoice: vouchers should be generated canceling each line of the invoice.

## Tracking

The next feature is tracking. Some companies needs to know which user is the author of some actions:

* Creation of a new user
* Creation of a new invoice/voucher
* Addition of a line on an existing invoice
* Update on an invoice, a user, a company, etc

## Payments and reminders

Our clients needs to mark an invoice as payed. They must be able to send the invoice to companies not using PowerB2B: by mail, fax, pigeon... They also need to send reminders to those same companies when they "forget" to pay the invoice.
Plus, when they create a voucher to cancel the invoice, they need to see the invoice as "canceled" in their dashboard.

Some rules apply:

* A reminder can not be send if the invoice was never sent.
* A reminder can not be send if the invoice is already payed or canceled.
* A payed invoice can not be canceled.
* All those actions must be tracked.
