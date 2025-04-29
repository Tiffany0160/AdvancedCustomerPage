table 50140 "Demo Entity"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "ID"; Integer) { }
        field(2; "Name"; Text[100]) { }
        field(3; "Category"; Enum "Page Navigation Enum") { }
    }
}
