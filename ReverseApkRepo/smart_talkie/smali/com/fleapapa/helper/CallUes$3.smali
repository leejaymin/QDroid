.class Lcom/fleapapa/helper/CallUes$3;
.super Ljava/lang/Object;
.source "CallUes.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallUes;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallUes;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallUes;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallUes$3;->this$0:Lcom/fleapapa/helper/CallUes;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
    .parameter "position"
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 102
    iget-object v1, p0, Lcom/fleapapa/helper/CallUes$3;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v1, v1, Lcom/fleapapa/helper/CallUes;->badapter:Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    invoke-virtual {v1, p3}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$UE;

    .line 103
    .local v0, ue:Lcom/fleapapa/helper/CallPapa$UE;
    iget-object v1, p0, Lcom/fleapapa/helper/CallUes$3;->this$0:Lcom/fleapapa/helper/CallUes;

    iget v1, v1, Lcom/fleapapa/helper/CallUes;->lmode:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/fleapapa/helper/CallUes$3;->this$0:Lcom/fleapapa/helper/CallUes;

    iget v1, v1, Lcom/fleapapa/helper/CallUes;->cid:I

    if-lez v1, :cond_1

    .line 104
    :cond_0
    iget-boolean v1, v0, Lcom/fleapapa/helper/CallPapa$UE;->selected:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lcom/fleapapa/helper/CallPapa$UE;->selected:Z

    .line 105
    const v1, 0x7f08000e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, v0, Lcom/fleapapa/helper/CallPapa$UE;->selected:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v1, p0, Lcom/fleapapa/helper/CallUes$3;->this$0:Lcom/fleapapa/helper/CallUes;

    const v2, 0x7f08005d

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v1, p0, Lcom/fleapapa/helper/CallUes$3;->this$0:Lcom/fleapapa/helper/CallUes;

    const v2, 0x7f08005e

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v1, p0, Lcom/fleapapa/helper/CallUes$3;->this$0:Lcom/fleapapa/helper/CallUes;

    const v2, 0x7f08005f

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$3;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v2, v2, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    const/4 v2, 0x4

    goto :goto_1

    .line 109
    :cond_4
    const/16 v2, 0x8

    goto :goto_2
.end method
