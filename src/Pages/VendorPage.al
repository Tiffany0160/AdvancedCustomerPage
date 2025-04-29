page 50145 "Vendor Page"
{
    PageType = List;
    SourceTable = Vendor;
    

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.") { ApplicationArea = All; }
                field("Name"; Rec."Name") { ApplicationArea = All; }
            }
        }
    }
}