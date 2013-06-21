.class Lcom/fleapapa/helper/ItemEdit$21;
.super Ljava/lang/Object;
.source "ItemEdit.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemEdit;->layoutCat(Lcom/fleapapa/helper/Category;I)V
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
.field final synthetic this$0:Lcom/fleapapa/helper/ItemEdit;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemEdit;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemEdit$21;->this$0:Lcom/fleapapa/helper/ItemEdit;

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/16 v8, 0x17

    .line 524
    move-object v0, p1

    check-cast v0, Lcom/fleapapa/helper/ItemEdit$Xpinner;

    move-object v4, v0

    .line 525
    .local v4, spin:Lcom/fleapapa/helper/ItemEdit$Xpinner;
    invoke-virtual {v4}, Lcom/fleapapa/helper/ItemEdit$Xpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    .line 526
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/fleapapa/helper/Category;>;"
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    if-lt p3, v5, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/helper/Category;

    .line 528
    .local v2, ncat:Lcom/fleapapa/helper/Category;
    iget-object v5, p0, Lcom/fleapapa/helper/ItemEdit$21;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v5, v5, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v5, v5, Lcom/fleapapa/helper/Item;->code:I

    invoke-static {v5}, Lcom/fleapapa/helper/Category;->getCategory(I)Lcom/fleapapa/helper/Category;

    move-result-object v3

    .line 529
    .local v3, ocat:Lcom/fleapapa/helper/Category;
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ItemEdit.onItemSelected: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, v4, Lcom/fleapapa/helper/ItemEdit$Xpinner;->navigating:Z

    if-eqz v7, :cond_2

    const-string v7, "navigated"

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cat="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/fleapapa/helper/Category;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",position="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",obsoleted="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v4, Lcom/fleapapa/helper/ItemEdit$Xpinner;->obsoleted:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-boolean v5, v4, Lcom/fleapapa/helper/ItemEdit$Xpinner;->obsoleted:Z

    if-nez v5, :cond_0

    .line 532
    iget-boolean v5, v4, Lcom/fleapapa/helper/ItemEdit$Xpinner;->navigating:Z

    if-nez v5, :cond_0

    .line 539
    iget-boolean v5, v4, Lcom/fleapapa/helper/ItemEdit$Xpinner;->dropdown:Z

    if-eqz v5, :cond_3

    .line 543
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v8}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/fleapapa/helper/ItemEdit$Xpinner;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 544
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v8}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/fleapapa/helper/ItemEdit$Xpinner;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 529
    :cond_2
    const-string v7, "selected"

    goto :goto_1

    .line 552
    :cond_3
    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/Category;->onPath(Lcom/fleapapa/helper/Category;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 554
    iget-object v5, p0, Lcom/fleapapa/helper/ItemEdit$21;->this$0:Lcom/fleapapa/helper/ItemEdit;

    invoke-virtual {v5, v2}, Lcom/fleapapa/helper/ItemEdit;->relayout(Lcom/fleapapa/helper/Category;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 557
    return-void
.end method
