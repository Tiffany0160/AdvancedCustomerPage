page 50145 "Vendor Page"
{
    PageType = List;
    SourceTable = Vendor;
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Vendor Overview';

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'Basic Details';
                repeater(Group)
                {
                    field("No."; Rec."No.")
                    {
                        ToolTip = 'Specifies the unique number that identifies the vendor.';
                    }
                    field("Name"; Rec."Name")
                    {
                        ToolTip = 'Specifies the name of the vendor.';
                    }
                    field("City"; Rec."City")
                    {
                        ToolTip = 'Specifies the city where the vendor is located.';
                    }
                    
                    field("Blocked"; Rec."Blocked")
                    {
                        ToolTip = 'Indicates whether the vendor is blocked for transactions.';
                    }
                    field("Balance (LCY)"; Rec."Balance (LCY)")
                    {
                        ToolTip = 'Displays the current balance in local currency with the vendor.';
                    }
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(ViewVendorCard)
            {
                Caption = 'View Vendor Card';
                Image = ViewDetails;
                ApplicationArea = All;
                trigger OnAction()
                var
                    VendorRec: Record Vendor;
                begin
                    VendorRec.Get(Rec."No.");
                    Page.Run(PAGE::"Vendor Card", VendorRec);
                end;
            }
        }
    }
}
