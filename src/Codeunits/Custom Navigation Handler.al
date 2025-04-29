codeunit 50140 "My Custom Nav Handler"
{
    procedure NavigateToPage(enumValue: Enum "Page Navigation Enum")
    begin
        case enumValue of
            enumValue::Customer:
                Page.Run(Page::"Customer Page");
            enumValue::Vendor:
                Page.Run(Page::"Vendor Page");
            enumValue::Item:
                Page.Run(Page::"Item Page");
            enumValue::Sales:
                Page.Run(Page::"Sales Page");
            enumValue::Finance:
                Page.Run(Page::"Finance Page");
        end;
    end;
}
