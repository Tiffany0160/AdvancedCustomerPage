page 50143 "Customer Ext"
{
    PageType = Card;
    SourceTable = "Demo Entity";

    layout
    {
        area(content)
        {
            group(MainGroup)
            {
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Entity name.';
                }

                field(Category; Rec.Category)
                {
                    ApplicationArea = All;
                    ToolTip = 'Select page to navigate.';
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(GoToPage)
            {
                ApplicationArea = All;
                Caption = 'Go To Page';
                ToolTip = 'Navigate to the selected page.';
                trigger OnAction()
                var
                    NavHandler: Codeunit "My Custom Nav Handler";
                begin
                    NavHandler.NavigateToPage(Rec.Category);
                end;
            }
          action(OpenFinancePage)
{
    ApplicationArea = All;
    Caption = 'Finance Page';
    ToolTip = 'Open the Finance page.';
    trigger OnAction()
    begin
        PAGE.Run(PAGE::"Finance Page"); 
    end;
}
action(OpenItemPage)
        {
            ApplicationArea = All;
            Caption = 'Item Page';
            ToolTip = 'Open the Item page.';
            trigger OnAction()
            begin
                PAGE.Run(PAGE::"Item Page");
            end;
        }
        action(OpenSalesPage)
        {
            ApplicationArea = All;
            Caption = 'Sales Page';
            ToolTip = 'Open the Sales page.';
            trigger OnAction()
            begin
                PAGE.Run(PAGE::"Sales Page");
            end;
        }

         action(OpenVendorPage)
        {
            ApplicationArea = All;
            Caption = 'Vendor Page';
            ToolTip = 'Open the Vendor page.';
            trigger OnAction()
            begin
                PAGE.Run(PAGE::"Vendor Page");
            end;
        }
action(OpenCustomerPage)
        {
            ApplicationArea = All;
            Caption = 'Customer Page';
            ToolTip = 'Open the Customer page.';
            trigger OnAction()
            begin
                PAGE.Run(PAGE::"Customer Page");
            end;
        }
        }
    }
}
