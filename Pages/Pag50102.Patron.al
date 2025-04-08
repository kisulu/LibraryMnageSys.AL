namespace FirstProject.FirstProject;

page 50102 Patron
{
    //ApplicationArea = All;
    Caption = 'Patron';
    PageType = Card;
    SourceTable = Patron;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Patron ID"; Rec."Patron ID")
                {
                    ToolTip = 'Specifies the value of the Patron ID field.', Comment = '%';
                }
                field("First Name"; Rec."First Name")
                {
                    ToolTip = 'Specifies the value of the First Name field.', Comment = '%';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ToolTip = 'Specifies the value of the Last Name field.', Comment = '%';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ToolTip = 'Specifies the value of the Phone No. field.', Comment = '%';
                }
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the Email field.', Comment = '%';
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ToolTip = 'Specifies the value of the Date of Birth field.', Comment = '%';
                }
                field("Modified By";Rec."Modified By"){
                    ApplicationArea=Basic, Suite;
                }
                field("Modified Date-Time";Rec."Modified Date-Time"){
                    //exposing
                    ApplicationArea=Basic, Suite;
                }
            }
        }
    }
}
