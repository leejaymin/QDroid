.class public Lcom/madvil/core/SearchResultAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/madvil/core/SearchResultAdapter$ItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/madvil/core/SimpleSong;",
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
            "Lcom/madvil/core/SimpleSong;",
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
            "Lcom/madvil/core/SimpleSong;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/madvil/core/SimpleSong;>;"
    const v0, 0x7f030006

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 22
    iput-object p2, p0, Lcom/madvil/core/SearchResultAdapter;->items:Ljava/util/ArrayList;

    .line 23
    iput-object p1, p0, Lcom/madvil/core/SearchResultAdapter;->context:Landroid/content/Context;

    .line 24
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/madvil/core/SearchResultAdapter;->vi:Landroid/view/LayoutInflater;

    .line 25
    return-void
.end method


# virtual methods
.method public addItem(Lcom/madvil/core/SimpleSong;)V
    .locals 1
    .parameter "ss"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/madvil/core/SearchResultAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 33
    move-object v4, p2

    .line 34
    .local v4, view:Landroid/view/View;
    const/4 v2, 0x0

    .line 36
    .local v2, itemHolder:Lcom/madvil/core/SearchResultAdapter$ItemHolder;
    if-nez v4, :cond_1

    .line 37
    iget-object v5, p0, Lcom/madvil/core/SearchResultAdapter;->vi:Landroid/view/LayoutInflater;

    const v6, 0x7f030006

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 39
    new-instance v2, Lcom/madvil/core/SearchResultAdapter$ItemHolder;

    .end local v2           #itemHolder:Lcom/madvil/core/SearchResultAdapter$ItemHolder;
    invoke-direct {v2, p0, v7}, Lcom/madvil/core/SearchResultAdapter$ItemHolder;-><init>(Lcom/madvil/core/SearchResultAdapter;Lcom/madvil/core/SearchResultAdapter$ItemHolder;)V

    .line 40
    .restart local v2       #itemHolder:Lcom/madvil/core/SearchResultAdapter$ItemHolder;
    const v5, 0x7f060009

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/madvil/core/SearchResultAdapter$ItemHolder;->song:Landroid/widget/TextView;

    .line 41
    const v5, 0x7f060041

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/madvil/core/SearchResultAdapter$ItemHolder;->artist:Landroid/widget/TextView;

    .line 42
    const v5, 0x7f060040

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/madvil/core/SearchResultAdapter$ItemHolder;->duration:Landroid/widget/TextView;

    .line 44
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    :goto_0
    const/4 v3, 0x0

    .line 53
    .local v3, simpleSong:Lcom/madvil/core/SimpleSong;
    :try_start_0
    iget-object v5, p0, Lcom/madvil/core/SearchResultAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/madvil/core/SimpleSong;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_1
    if-eqz v3, :cond_0

    .line 60
    iget-object v5, v2, Lcom/madvil/core/SearchResultAdapter$ItemHolder;->song:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/madvil/core/SimpleSong;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v5, v2, Lcom/madvil/core/SearchResultAdapter$ItemHolder;->artist:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/madvil/core/SimpleSong;->getArtist()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v5, v2, Lcom/madvil/core/SearchResultAdapter$ItemHolder;->duration:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/madvil/core/SimpleSong;->getDuration()I

    move-result v6

    invoke-static {v6}, Lcom/madvil/core/Helper;->parseSeconds(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_0
    return-object v4

    .line 46
    .end local v3           #simpleSong:Lcom/madvil/core/SimpleSong;
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #itemHolder:Lcom/madvil/core/SearchResultAdapter$ItemHolder;
    check-cast v2, Lcom/madvil/core/SearchResultAdapter$ItemHolder;

    .restart local v2       #itemHolder:Lcom/madvil/core/SearchResultAdapter$ItemHolder;
    goto :goto_0

    .line 55
    .restart local v3       #simpleSong:Lcom/madvil/core/SimpleSong;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 56
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
