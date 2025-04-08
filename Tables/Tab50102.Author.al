table 50102 Author
{
    Caption = 'Author';
    DataClassification = ToBeClassified;
    // Table Property to enable us add author after relation
    LookupPageId = "Authors";
    DrillDownPageId = "Authors";
    
    fields
    {
        field(1; "Author No"; Code[50])
        {
            Caption = 'Author No';
        }
        field(2; "First Name"; Text[200])
        {
            Caption = 'First Name';
        }
        field(3; "Last Name"; Text[200])
        {
            Caption = 'Last Name';
        }
        field(4; Email; Code[100])
        {
            Caption = 'Email';
        }
        field(5; "Phone No"; Code[25])
        {
            Caption = 'Phone No';
        }
    }
    keys
    {
        key(PK; "Author No")
        {
            Clustered = true;
        }
    }
    // Table feature
    fieldgroups{
        fieldgroup(DropDown; "Author No","First Name","Last Name"){

        }
    }
}
