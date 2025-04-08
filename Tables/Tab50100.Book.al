table 50100 Book
{
    Caption = 'Book';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Book ID"; Code[50])
        {
            Caption = 'Book ID';
        }
        field(2; Title; Text[200])
        {
            Caption = 'Title';
        }
        field(3; ISNB; Code[50])
        {
            Caption = 'ISNB';
        }
        field(4; Genre; Code[20])
        {
            Caption = 'Genre';
        }
        field(5; Status; Option)
        {
            OptionMembers = Available, Lost, Borrowed;
            Editable = false;
        }
        field(6; "Publication Year"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(7; Author; Code[50])
        {
            TableRelation=Author;
        }
        field(8; "Created At"; Date)
        {
            DataClassification = ToBeClassified;
            Editable=false;
        }
        field(9; "Created BY"; Code[50])
        {
            DataClassification = ToBeClassified;
            Editable=false;
        }
    }
    keys
    {
        key(PK; "Book ID")
        {
            Clustered = true;
        }
    }
    // Table feature trigger
    trigger OnInsert()
    var
        myInt: Integer;
    begin
        "Created At":=WorkDate();
        "Created BY":=UserId;
    end;
    trigger OnDelete()
    var
        myInt: Integer;
    begin
        if Confirm('Are you sure you want to delete?') then
            //exit
            Error('You are not Authorized to Delete this Records');
    end;
}
