// Table Relation of One/Many to Many
table 50104 "Book Author"
{
    Caption = 'Book Author';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Author ID"; Code[50])
        {
            Caption = 'Author ID';
            TableRelation = Author;
            trigger OnValidate()
            var
                Authors : Record Author;
            begin
                Authors.reset();
                if Authors.Get("Author ID") then begin
                    "First Name":= Authors."First Name";
                    "Last Name":= Authors."Last Name";
                    "Phone No.":= Authors."Phone No";
                    Email:= Authors.Email;
                end
            end;
        }
        field(2; "First Name"; Text[200])
        {
            Caption = 'First Name';
            Editable = False;
        }
        field(3; "Last Name"; Text[200])
        {
            Caption = 'Last Name';
            Editable = False;
        }
        field(4; Email; Text[100])
        {
            Caption = 'Email';
            Editable = False;
        }
        field(5; "Phone No."; Code[25])
        {
            Caption = 'Phone No.';
            Editable = False;
        }
        field(6; "Book ID"; Code[50])
        {
            Caption = 'Book ID';
            Editable = False;
        }
    }
    keys
    {
        key(PK; "Author ID","Book ID")
        {
            Clustered = true;
        }
    }
}
