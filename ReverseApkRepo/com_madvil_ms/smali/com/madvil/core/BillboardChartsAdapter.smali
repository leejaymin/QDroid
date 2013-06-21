.class public Lcom/madvil/core/BillboardChartsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BillboardChartsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/madvil/core/BillboardChartsAdapter$ItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/madvil/core/BillboardChart;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/madvil/core/BillboardChart;",
            ">;"
        }
    .end annotation
.end field

.field vi:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/madvil/core/BillboardChart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/madvil/core/BillboardChart;>;"
    const v0, 0x7f030001

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 22
    iput-object p2, p0, Lcom/madvil/core/BillboardChartsAdapter;->items:Ljava/util/ArrayList;

    .line 23
    iput-object p1, p0, Lcom/madvil/core/BillboardChartsAdapter;->context:Landroid/content/Context;

    .line 24
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/madvil/core/BillboardChartsAdapter;->vi:Landroid/view/LayoutInflater;

    .line 25
    return-void
.end method


# virtual methods
.method public addItem(Lcom/madvil/core/BillboardChart;)V
    .locals 1
    .parameter "bc"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/madvil/core/BillboardChartsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 37
    move-object v2, p2

    .line 38
    .local v2, view:Landroid/view/View;
    const/4 v1, 0x0

    .line 40
    .local v1, itemHolder:Lcom/madvil/core/BillboardChartsAdapter$ItemHolder;
    if-nez v2, :cond_1

    .line 41
    iget-object v3, p0, Lcom/madvil/core/BillboardChartsAdapter;->vi:Landroid/view/LayoutInflater;

    const v4, 0x7f030001

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 43
    new-instance v1, Lcom/madvil/core/BillboardChartsAdapter$ItemHolder;

    .end local v1           #itemHolder:Lcom/madvil/core/BillboardChartsAdapter$ItemHolder;
    invoke-direct {v1, p0, v5}, Lcom/madvil/core/BillboardChartsAdapter$ItemHolder;-><init>(Lcom/madvil/core/BillboardChartsAdapter;Lcom/madvil/core/BillboardChartsAdapter$ItemHolder;)V

    .line 44
    .restart local v1       #itemHolder:Lcom/madvil/core/BillboardChartsAdapter$ItemHolder;
    const v3, 0x7f060008

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/madvil/core/BillboardChartsAdapter$ItemHolder;->name:Landroid/widget/TextView;

    .line 46
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    :goto_0
    iget-object v3, p0, Lcom/madvil/core/BillboardChartsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/madvil/core/BillboardChart;

    .line 52
    .local v0, bc:Lcom/madvil/core/BillboardChart;
    if-eqz v0, :cond_0

    .line 53
    iget-object v3, v1, Lcom/madvil/core/BillboardChartsAdapter$ItemHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/madvil/core/BillboardChart;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_0
    return-object v2

    .line 48
    .end local v0           #bc:Lcom/madvil/core/BillboardChart;
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #itemHolder:Lcom/madvil/core/BillboardChartsAdapter$ItemHolder;
    check-cast v1, Lcom/madvil/core/BillboardChartsAdapter$ItemHolder;

    .restart local v1       #itemHolder:Lcom/madvil/core/BillboardChartsAdapter$ItemHolder;
    goto :goto_0
.end method

.method public removeItem(Lcom/madvil/core/BillboardChart;)V
    .locals 1
    .parameter "bc"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/madvil/core/BillboardChartsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method
