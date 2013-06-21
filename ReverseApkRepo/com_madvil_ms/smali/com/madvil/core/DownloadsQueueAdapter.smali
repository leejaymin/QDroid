.class public Lcom/madvil/core/DownloadsQueueAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DownloadsQueueAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/madvil/core/DownloadsQueueAdapter$ItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/madvil/core/SimpleDownload;",
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
            "Lcom/madvil/core/SimpleDownload;",
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
            "Lcom/madvil/core/SimpleDownload;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/madvil/core/SimpleDownload;>;"
    const v0, 0x7f030006

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 22
    iput-object p2, p0, Lcom/madvil/core/DownloadsQueueAdapter;->items:Ljava/util/ArrayList;

    .line 23
    iput-object p1, p0, Lcom/madvil/core/DownloadsQueueAdapter;->context:Landroid/content/Context;

    .line 24
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/madvil/core/DownloadsQueueAdapter;->vi:Landroid/view/LayoutInflater;

    .line 25
    return-void
.end method


# virtual methods
.method public addItem(Lcom/madvil/core/SimpleDownload;)V
    .locals 1
    .parameter "sd"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/madvil/core/DownloadsQueueAdapter;->items:Ljava/util/ArrayList;

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

    .line 37
    move-object v4, p2

    .line 38
    .local v4, view:Landroid/view/View;
    const/4 v2, 0x0

    .line 40
    .local v2, itemHolder:Lcom/madvil/core/DownloadsQueueAdapter$ItemHolder;
    if-nez v4, :cond_1

    .line 41
    iget-object v5, p0, Lcom/madvil/core/DownloadsQueueAdapter;->vi:Landroid/view/LayoutInflater;

    const v6, 0x7f030006

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 43
    new-instance v2, Lcom/madvil/core/DownloadsQueueAdapter$ItemHolder;

    .end local v2           #itemHolder:Lcom/madvil/core/DownloadsQueueAdapter$ItemHolder;
    invoke-direct {v2, p0, v7}, Lcom/madvil/core/DownloadsQueueAdapter$ItemHolder;-><init>(Lcom/madvil/core/DownloadsQueueAdapter;Lcom/madvil/core/DownloadsQueueAdapter$ItemHolder;)V

    .line 44
    .restart local v2       #itemHolder:Lcom/madvil/core/DownloadsQueueAdapter$ItemHolder;
    const v5, 0x7f060009

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/madvil/core/DownloadsQueueAdapter$ItemHolder;->song:Landroid/widget/TextView;

    .line 45
    const v5, 0x7f060041

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/madvil/core/DownloadsQueueAdapter$ItemHolder;->artist:Landroid/widget/TextView;

    .line 46
    const v5, 0x7f060040

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/madvil/core/DownloadsQueueAdapter$ItemHolder;->duration:Landroid/widget/TextView;

    .line 48
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    :goto_0
    const/4 v3, 0x0

    .line 56
    .local v3, sd:Lcom/madvil/core/SimpleDownload;
    :try_start_0
    iget-object v5, p0, Lcom/madvil/core/DownloadsQueueAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/madvil/core/SimpleDownload;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_1
    if-eqz v3, :cond_0

    .line 63
    iget-object v5, v2, Lcom/madvil/core/DownloadsQueueAdapter$ItemHolder;->song:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/madvil/core/SimpleDownload;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v5, v2, Lcom/madvil/core/DownloadsQueueAdapter$ItemHolder;->artist:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/madvil/core/SimpleDownload;->getArtist()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v5, v2, Lcom/madvil/core/DownloadsQueueAdapter$ItemHolder;->duration:Landroid/widget/TextView;

    const-string v6, "waiting..."

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    return-object v4

    .line 50
    .end local v3           #sd:Lcom/madvil/core/SimpleDownload;
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #itemHolder:Lcom/madvil/core/DownloadsQueueAdapter$ItemHolder;
    check-cast v2, Lcom/madvil/core/DownloadsQueueAdapter$ItemHolder;

    .restart local v2       #itemHolder:Lcom/madvil/core/DownloadsQueueAdapter$ItemHolder;
    goto :goto_0

    .line 58
    .restart local v3       #sd:Lcom/madvil/core/SimpleDownload;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 59
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public removeItem(Lcom/madvil/core/SimpleDownload;)V
    .locals 1
    .parameter "sd"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/madvil/core/DownloadsQueueAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method
