.class Lcom/wareone/tappmt/TapPMT$8;
.super Ljava/lang/Object;
.source "TapPMT.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TapPMT;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/TapPMT;

.field private final synthetic val$s1:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/TapPMT;Landroid/widget/Spinner;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMT$8;->this$0:Lcom/wareone/tappmt/TapPMT;

    iput-object p2, p0, Lcom/wareone/tappmt/TapPMT$8;->val$s1:Landroid/widget/Spinner;

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "v"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    .line 420
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$8;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_due:Ljava/util/List;
    invoke-static {v0}, Lcom/wareone/tappmt/TapPMT;->access$16(Lcom/wareone/tappmt/TapPMT;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p3, v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$8;->this$0:Lcom/wareone/tappmt/TapPMT;

    #calls: Lcom/wareone/tappmt/TapPMT;->setBeginDate()V
    invoke-static {v0}, Lcom/wareone/tappmt/TapPMT;->access$17(Lcom/wareone/tappmt/TapPMT;)V

    .line 422
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$8;->val$s1:Landroid/widget/Spinner;

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 428
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$8;->this$0:Lcom/wareone/tappmt/TapPMT;

    #setter for: Lcom/wareone/tappmt/TapPMT;->m_due_index:I
    invoke-static {v0, p3}, Lcom/wareone/tappmt/TapPMT;->access$18(Lcom/wareone/tappmt/TapPMT;I)V

    .line 425
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$8;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-virtual {v0}, Lcom/wareone/tappmt/TapPMT;->_refresh()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
