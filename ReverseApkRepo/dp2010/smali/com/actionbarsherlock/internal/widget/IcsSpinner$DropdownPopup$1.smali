.class Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$1:Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup$1;->this$1:Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup$1;->this$1:Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;

    #getter for: Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->access$0(Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;)Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->setSelection(I)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup$1;->this$1:Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->dismiss()V

    return-void
.end method
