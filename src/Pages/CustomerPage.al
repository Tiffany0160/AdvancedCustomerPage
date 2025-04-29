page 50140 "Customer Page"
{
    PageType = List;
    SourceTable = Customer;
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    QuickEntry = true;
                }
                field("Name"; Rec."Name")
                {
                    ApplicationArea = All;
                    QuickEntry = true;
                }
                field("City"; Rec."City")
                {
                    ApplicationArea = All;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                }
                field("Balance"; Rec."Balance")
                {
                    ApplicationArea = All;
                }
                field("Customer Posting Group"; Rec."Customer Posting Group")
                {
                    ApplicationArea = All;
                }
            }
        }

        area(factboxes)
        {
            part(CustomerStatistics; "Customer Statistics FactBox")
            {
                SubPageLink = "No." = FIELD("No.");
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Customer Ledger Entries")
            {
                ApplicationArea = All;
                Caption = 'Customer Ledger Entries';
                Image = Ledger;
                RunObject = Page "Customer Ledger Entries";
                RunPageLink = "Customer No." = FIELD("No.");
            }

            action("Sales Orders")
            {
                ApplicationArea = All;
                Caption = 'Sales Orders';
                Image = Document;
                RunObject = Page "Sales Order List";
                RunPageLink = "Sell-to Customer No." = FIELD("No.");
            }
        }
    }

    views
    {
        view(USCustomers)
        {
            Caption = 'US Customers';
            Filters = where("Country/Region Code" = const('US'));
        }
    }
}
