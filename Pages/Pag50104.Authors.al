namespace FirstProject.FirstProject;

page 50104 Authors
{
    Caption = 'Authors';
    PageType = List;
    SourceTable = Author;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Author No"; Rec."Author No")
                {
                    ToolTip = 'Specifies the value of the Author No field.', Comment = '%';
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
                field("Phone No"; Rec."Phone No")
                {
                    ToolTip = 'Specifies the value of the Phone No field.', Comment = '%';
                }
            }
        }
    }
}
