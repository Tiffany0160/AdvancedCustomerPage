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
                field("E-Mail"; Rec."E-Mail")
                {
                    ApplicationArea = All;
                }
                field("Balance"; Rec."Balance")
                {
                    ApplicationArea = All;
                    StyleExpr = BalanceStyle;
                }
                field("Balance Due (LCY)"; Rec."Balance Due (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Shows the overdue balance.';
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
                RunObject = page "Customer Ledger Entries";
                RunPageLink = "Customer No." = FIELD("No.");
            }

            action("Sales Orders")
            {
                ApplicationArea = All;
                Caption = 'Sales Orders';
                Image = Document;
                RunObject = page "Sales Order List";
                RunPageLink = "Sell-to Customer No." = FIELD("No.");
            }

            action("Send Email")
            {
                ApplicationArea = All;
                Caption = 'Send Email';
                Image = Email;
                trigger OnAction()
                var
                    EmailMessage: Codeunit "Email Message";
                    Email: Codeunit Email;
                begin
                    if Rec."E-Mail" <> '' then begin
                        EmailMessage.Create(Rec."E-Mail", 'Customer Inquiry', '');
                        Email.Send(EmailMessage);
                    end else
                        Message('Customer does not have an email address.');
                end;
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

        view(OverdueCustomers)
        {
            Caption = 'Overdue Customers';
            Filters = where("Balance Due (LCY)" = filter(>0));
        }
    }

    trigger OnAfterGetRecord()
    var
        OverdueThreshold: Decimal;
    begin
        OverdueThreshold := 1000;
        if Rec.Balance > OverdueThreshold then
            BalanceStyle := 'Attention'
        else
            BalanceStyle := '';
    end;

    var
        BalanceStyle: Text;
}
