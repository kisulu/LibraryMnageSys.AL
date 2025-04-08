namespace FirstProject.FirstProject;
using LibraryManagementSystem.LibraryManagementSystem;

page 50100 Book
{
    //ApplicationArea = All;
    Caption = 'Book';
    PageType = Card;
    SourceTable = Book;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Book ID"; Rec."Book ID")
                {
                    ToolTip = 'Specifies the value of the Book ID field.', Comment = '%';
                }
                field(Title; Rec.Title)
                {
                    ToolTip = 'Specifies the value of the Title field.', Comment = '%';
                }
                field(ISNB; Rec.ISNB)
                {
                    ToolTip = 'Specifies the value of the ISNB field.', Comment = '%';
                }
                field(Genre; Rec.Genre)
                {
                    ToolTip = 'Specifies the value of the Genre field.', Comment = '%';
                }
                field(Author;Rec.Author)
                {
                    ApplicationArea = Basic, Suite;
                }
                field("Created BY";Rec."Created BY"){
                    // exposing
                    ApplicationArea=Basic, Suite;
                }
                field("Created At";Rec."Created At"){
                    // exposing
                    ApplicationArea=Basic, Suite;
                }
            }
            part(Authors; "Book Authors"){
                // you can Only Use Pages of Type ListPart
                ApplicationArea=Basic, Suite;
                SubPageLink="Book ID"=field("Book ID");

            }
        }
    }
}
