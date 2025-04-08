table 50105 "Book Lending"
{
    Caption = 'Book Lending';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Lending No."; Code[50])
        {
            Caption = 'Lending No.';
        }
        field(2; Description; Text[200])
        {
            Caption = 'Description';
        }
        field(3; "Patron No."; Code[20])
        {
            Caption = 'Patron No.';
            TableRelation=Patron."Patron ID"; //Since it has one PK you can leave it as Patron
            trigger OnValidate()
            var
                Patrons: Record Patron; //record is a table
            begin
                Patrons.Reset();
                if Patrons.Get("Patron No.") then begin
                    "Patron Name":= Patrons."First Name"+' '+ Patrons."Last Name";
                    "Patron Email":= Patrons.Email;
                    "Patron Phone No.":=Patrons."Phone No.";
                end;
                
            end;
        }
        field(4; "Patron Name"; Text[400])
        {
            Caption = 'Patron Name';
            Editable=false;
        }
        field(5; "Patron Email"; Text[100])
        {
            Caption = 'Patron Email';
            Editable=false;
        }
        field(6; "Patron Phone No."; Code[30])
        {
            Caption = 'Patron Phone No.';
            Editable=false;
        }
        field(7; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = ,Open, Pending, Approved, Issued, Closed;
        }
        field(8; "Lending Date"; DateTime)
        {
            Caption = 'Lending Date';
            Editable=false;
        }
        field(9; "Issued By"; Code[20])
        {
            Caption = 'Issued By';
            Editable=false;
        }
    }
    keys
    {
        key(PK; "Lending No.")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        myInt: Integer;
    begin
        "Lending Date":=CurrentDateTime;
        "Issued By":=UserId;
    end;
}
