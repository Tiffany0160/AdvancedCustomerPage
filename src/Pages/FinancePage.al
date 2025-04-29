page 50141 "Finance Page"
{
    PageType = List;
    SourceTable = "G/L Entry";
    

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Posting Date"; Rec."Posting Date") { ApplicationArea = All; }
                field("Amount"; Rec."Amount") { ApplicationArea = All; }
            }
        }
    }
}
