codeunit 50142 "Demo Test"
{
    Subtype = Test;

    [Test]
    procedure TestNavigationHandler()
    var
        navHandler: Codeunit "Navigation Handler";
    begin
        navHandler.NavigateToPage(enum::"Page Navigation Enum"::Customer);
        Message('Navigation tested.');
    end;
}