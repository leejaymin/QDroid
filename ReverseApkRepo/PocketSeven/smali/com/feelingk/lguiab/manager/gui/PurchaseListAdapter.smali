.class public Lcom/feelingk/lguiab/manager/gui/PurchaseListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PurchaseListAdapter.java"


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/feelingk/lguiab/vo/ProductItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/feelingk/lguiab/vo/ProductItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/feelingk/lguiab/vo/ProductItemInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListAdapter;->items:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 58
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 34
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    .line 38
    .local v0, p:Lcom/feelingk/lguiab/vo/ProductItemInfo;
    return-object p3
.end method
