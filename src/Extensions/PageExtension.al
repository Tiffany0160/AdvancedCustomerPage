pageextension 50140 CustomerListExt extends "Customer List"
{
    actions
    {
        addlast(Processing)
        {
            action("Open Main Menu")
            {
                ApplicationArea = All;
                Caption = 'Open Main Menu';
                ToolTip = 'Open the custom Main Menu for navigation.';
                Image = Navigate;
                trigger OnAction()
                begin
                    Page.Run(Page::"Customer Ext");
                end;
            }
        }
    }
}