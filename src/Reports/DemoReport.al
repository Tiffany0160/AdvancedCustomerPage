report 50140 "Demo Report"
{
    Caption = 'Demo Report';

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(Customer_Name; Name) { }
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(Options)
                {
                    field(ShowCustomers; ShowCustomers)
                    {
                        ApplicationArea = All;
                        Caption = 'Show Customers';
                    }
                }
            }
        }

        actions
        {
        }
    }

    var
        ShowCustomers: Boolean;
}
