table 50103 "Library Transaction"
{
    Caption = 'Library Transaction';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Transaction ID"; Integer)
        {
            Caption = 'Transaction ID';
        }
        field(2; Description; Text[300])
        {
            Caption = 'Description';
        }
        field(3; "Patron ID"; Code[50])
        {
            Caption = 'Patron ID';
        }
        field(4; "Employee No"; Code[20])
        {
            Caption = 'Employee No';
        }
        field(5; "Transaction Date "; DateTime)
        {
            Caption = 'Transaction Date ';
        }
        field(6; "Transaction Type"; Option)
        {
            Caption = 'Transaction Type';
            OptionMembers = Return, Borrowed, Fine;
            Editable = false;
        }
    }
    keys
    {
        key(PK; "Transaction ID")
        {
            Clustered = true;
        }
    }
}
