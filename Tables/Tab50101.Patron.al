table 50101 Patron
{
    Caption = 'Patron';
    DataClassification = ToBeClassified;
    LookupPageId = Patron;
    
    fields
    {
        field(1; "Patron ID"; Code[20])
        {
            Caption = 'Patron ID';
        }
        field(2; "First Name"; Text[200])
        {
            Caption = 'First Name';
        }
        field(3; "Last Name"; Text[200])
        {
            Caption = 'Last Name';
        }
        field(4; "Phone No."; Code[25])
        {
            Caption = 'Phone No.';
        }
        field(5; Email; Text[100])
        {
            Caption = 'Email';
        }
        field(6; "Date of Birth"; Date)
        {
            Caption = 'Date of Birth';
        }
        field(7; "Modified By"; Code[50])
        {
            DataClassification = ToBeClassified;
            Editable=false;
        }
        field(8; "Modified Date-Time"; DateTime)
        {
            DataClassification = ToBeClassified;
            Editable=false;
        }
    }
    keys
    {
        key(PK; "Patron ID")
        {
            Clustered = true;
        }
    }
    fieldgroups{
        fieldgroup(DropDown; "Patron ID","First Name","Last Name"){

        }

    }
    trigger OnModify()
    var
        myInt: Integer;
    begin
        "Modified By":=UserId;
        "Modified Date-Time":=CurrentDateTime;
    end;
}
