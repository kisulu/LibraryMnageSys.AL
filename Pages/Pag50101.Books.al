namespace FirstProject.FirstProject;

page 50101 Books
{
    Caption = 'Books';
    PageType = List;
    SourceTable = Book;
    CardPageId = book;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
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
            }
        }
    }
}
