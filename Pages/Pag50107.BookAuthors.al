namespace LibraryManagementSystem.LibraryManagementSystem;
// For Multiple Table Relations i.e One/Many to Many
page 50107 "Book Authors"
{
    Caption = 'Book Authors';
    PageType = ListPart;
    SourceTable = "Book Author";
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Author ID"; Rec."Author ID")
                {
                    ToolTip = 'Specifies the value of the Author ID field.', Comment = '%';
                }
                field("First Name"; Rec."First Name")
                {
                    ToolTip = 'Specifies the value of the First Name field.', Comment = '%';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ToolTip = 'Specifies the value of the Last Name field.', Comment = '%';
                }
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the Email field.', Comment = '%';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ToolTip = 'Specifies the value of the Phone No. field.', Comment = '%';
                }
            }
        }
    }
}
