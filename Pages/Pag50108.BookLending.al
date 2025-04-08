namespace LibraryManagementSystem.LibraryManagementSystem;

page 50108 "Book Lending"
{
    //ApplicationArea = All;
    Caption = 'Book Lending';
    PageType = Document;
    SourceTable = "Book Lending";
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Lending No."; Rec."Lending No.")
                {
                    ToolTip = 'Specifies the value of the Lending No. field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field("Patron No."; Rec."Patron No.")
                {
                    ToolTip = 'Specifies the value of the Patron No. field.', Comment = '%';
                }
                field("Patron Name"; Rec."Patron Name")
                {
                    ToolTip = 'Specifies the value of the Patron Name field.', Comment = '%';
                }
                field("Patron Email"; Rec."Patron Email")
                {
                    ToolTip = 'Specifies the value of the Patron Email field.', Comment = '%';
                }
                field("Patron Phone No."; Rec."Patron Phone No.")
                {
                    ToolTip = 'Specifies the value of the Patron Phone No. field.', Comment = '%';
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                }
                field("Lending Date"; Rec."Lending Date")
                {
                    ToolTip = 'Specifies the value of the Lending Date field.', Comment = '%';
                }
                field("Issued By"; Rec."Issued By")
                {
                    ToolTip = 'Specifies the value of the Issued By field.', Comment = '%';
                }
            }
            part(BLL; "Book Lending Lines"){
                ApplicationArea=Basic, Suite;
                SubPageLink="Lending No."=field("Lending No.");

            }
        }
    }
}
