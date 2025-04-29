page 50144 "Sales Page"
{
    PageType = List;
    SourceTable = "Sales Header";
   

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.") { ApplicationArea = All; }
                field("Sell-to Customer Name"; Rec."Sell-to Customer Name") { ApplicationArea = All; }
            }
        }
    }
}
