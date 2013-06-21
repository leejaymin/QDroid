.class Lcom/fleapapa/helper/ItemList$1;
.super Ljava/lang/Object;
.source "ItemList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemList;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/fleapapa/helper/ItemList;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemList$1;->this$0:Lcom/fleapapa/helper/ItemList;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$1;->this$0:Lcom/fleapapa/helper/ItemList;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemList$1;->this$0:Lcom/fleapapa/helper/ItemList;

    iget-object v1, v1, Lcom/fleapapa/helper/ItemList;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fleapapa/helper/Item;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/fleapapa/helper/ItemView;->viewItem(Landroid/content/Context;Lcom/fleapapa/helper/Item;Z)V

    .line 91
    return-void
.end method
