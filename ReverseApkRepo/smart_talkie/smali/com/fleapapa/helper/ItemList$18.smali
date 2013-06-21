.class Lcom/fleapapa/helper/ItemList$18;
.super Ljava/lang/Object;
.source "ItemList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemList;->setSortSpinner()V
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
.field final synthetic this$0:Lcom/fleapapa/helper/ItemList;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemList$18;->this$0:Lcom/fleapapa/helper/ItemList;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 355
    move-object v0, p1

    check-cast v0, Landroid/widget/Spinner;

    move-object v3, v0

    .line 356
    .local v3, spin:Landroid/widget/Spinner;
    invoke-virtual {v3}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    .line 357
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/fleapapa/helper/ItemList$SortBy;>;"
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-lt p3, v4, :cond_0

    .line 362
    :goto_0
    return-void

    .line 358
    :cond_0
    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/helper/ItemList$SortBy;

    .line 359
    .local v2, sb:Lcom/fleapapa/helper/ItemList$SortBy;
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ItemList.onItemSelected: sort by="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/fleapapa/helper/ItemList$SortBy;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v4, p0, Lcom/fleapapa/helper/ItemList$18;->this$0:Lcom/fleapapa/helper/ItemList;

    iget-char v5, v2, Lcom/fleapapa/helper/ItemList$SortBy;->op:C

    iput-char v5, v4, Lcom/fleapapa/helper/ItemList;->sbop:C

    .line 361
    iget-object v4, p0, Lcom/fleapapa/helper/ItemList$18;->this$0:Lcom/fleapapa/helper/ItemList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/fleapapa/helper/ItemList;->sortItems(Z)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 364
    return-void
.end method
