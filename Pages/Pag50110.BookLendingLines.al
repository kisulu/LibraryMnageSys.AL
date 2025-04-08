namespace LibraryManagementSystem.LibraryManagementSystem;

page 50110 "Book Lending Lines"
{
    ApplicationArea = All;
    Caption = 'Book Lending Lines';
    PageType = ListPart;
    SourceTable = "Book Lending Line";
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Book No."; Rec."Book No.")
                {
                    ToolTip = 'Specifies the value of the Book No. field.', Comment = '%';
                }
                field("Book Title"; Rec."Book Title")
                {
                    ToolTip = 'Specifies the value of the Book Title field.', Comment = '%';
                }
                field(ISNB; Rec.ISNB)
                {
                    ToolTip = 'Specifies the value of the ISNB field.', Comment = '%';
                }
                field("Lending No."; Rec."Lending No.")
                {
                    ToolTip = 'Specifies the value of the Lending No. field.', Comment = '%';
                }
            }
        }
    }
}
