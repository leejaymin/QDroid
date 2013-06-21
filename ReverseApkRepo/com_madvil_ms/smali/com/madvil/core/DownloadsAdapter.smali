.class public Lcom/madvil/core/DownloadsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DownloadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/madvil/core/DownloadsAdapter$ItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/madvil/core/SimpleDownloadForAdapter;",
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
            "Lcom/madvil/core/SimpleDownloadForAdapter;",
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
            "Lcom/madvil/core/SimpleDownloadForAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/madvil/core/SimpleDownloadForAdapter;>;"
    const v0, 0x7f030002

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 24
    iput-object p2, p0, Lcom/madvil/core/DownloadsAdapter;->items:Ljava/util/ArrayList;

    .line 25
    iput-object p1, p0, Lcom/madvil/core/DownloadsAdapter;->context:Landroid/content/Context;

    .line 26
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/madvil/core/DownloadsAdapter;->vi:Landroid/view/LayoutInflater;

    .line 27
    return-void
.end method


# virtual methods
.method public addItem(Lcom/madvil/core/SimpleDownloadForAdapter;)V
    .locals 1
    .parameter "sd"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/madvil/core/DownloadsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 39
    move-object/from16 v10, p2

    .line 40
    .local v10, view:Landroid/view/View;
    const/4 v6, 0x0

    .line 42
    .local v6, itemHolder:Lcom/madvil/core/DownloadsAdapter$ItemHolder;
    if-nez v10, :cond_1

    .line 43
    iget-object v11, p0, Lcom/madvil/core/DownloadsAdapter;->vi:Landroid/view/LayoutInflater;

    const v12, 0x7f030002

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 45
    new-instance v6, Lcom/madvil/core/DownloadsAdapter$ItemHolder;

    .end local v6           #itemHolder:Lcom/madvil/core/DownloadsAdapter$ItemHolder;
    const/4 v11, 0x0

    invoke-direct {v6, p0, v11}, Lcom/madvil/core/DownloadsAdapter$ItemHolder;-><init>(Lcom/madvil/core/DownloadsAdapter;Lcom/madvil/core/DownloadsAdapter$ItemHolder;)V

    .line 46
    .restart local v6       #itemHolder:Lcom/madvil/core/DownloadsAdapter$ItemHolder;
    const v11, 0x7f060009

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object v1, v6

    iput-object v0, v1, Lcom/madvil/core/DownloadsAdapter$ItemHolder;->song:Landroid/widget/TextView;

    .line 47
    const v11, 0x7f06000c

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object v1, v6

    iput-object v0, v1, Lcom/madvil/core/DownloadsAdapter$ItemHolder;->downloadedTV:Landroid/widget/TextView;

    .line 48
    const v11, 0x7f06000a

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    move-object/from16 v0, p2

    move-object v1, v6

    iput-object v0, v1, Lcom/madvil/core/DownloadsAdapter$ItemHolder;->downloadPB:Landroid/widget/ProgressBar;

    .line 50
    invoke-virtual {v10, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :goto_0
    const/4 v7, 0x0

    .line 58
    .local v7, sd:Lcom/madvil/core/SimpleDownloadForAdapter;
    :try_start_0
    iget-object v11, p0, Lcom/madvil/core/DownloadsAdapter;->items:Ljava/util/ArrayList;

    move-object v0, v11

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/madvil/core/SimpleDownloadForAdapter;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_1
    if-eqz v7, :cond_0

    .line 65
    invoke-virtual {v7}, Lcom/madvil/core/SimpleDownloadForAdapter;->isFree()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 66
    iget-object v11, v6, Lcom/madvil/core/DownloadsAdapter$ItemHolder;->downloadedTV:Landroid/widget/TextView;

    const-string v12, "0% 0/0 Mb"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v11, v6, Lcom/madvil/core/DownloadsAdapter$ItemHolder;->downloadPB:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 68
    iget-object v11, v6, Lcom/madvil/core/DownloadsAdapter$ItemHolder;->song:Landroid/widget/TextView;

    const-string v12, "Free slot"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    :goto_2
    return-object v10

    .line 52
    .end local v7           #sd:Lcom/madvil/core/SimpleDownloadForAdapter;
    .restart local p2
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #itemHolder:Lcom/madvil/core/DownloadsAdapter$ItemHolder;
    check-cast v6, Lcom/madvil/core/DownloadsAdapter$ItemHolder;

    .restart local v6       #itemHolder:Lcom/madvil/core/DownloadsAdapter$ItemHolder;
    goto :goto_0

    .line 60
    .end local p2
    .restart local v7       #sd:Lcom/madvil/core/SimpleDownloadForAdapter;
    :catch_0
    move-exception v11

    move-object v5, v11

    .line 61
    .local v5, ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 70
    .end local v5           #ex:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v7}, Lcom/madvil/core/SimpleDownloadForAdapter;->getDownloaded()I

    move-result v11

    int-to-double v11, v11

    const-wide/high16 v13, 0x4130

    div-double v3, v11, v13

    .line 71
    .local v3, downloaded:D
    invoke-virtual {v7}, Lcom/madvil/core/SimpleDownloadForAdapter;->getSizeInBytes()I

    move-result v11

    int-to-double v11, v11

    const-wide/high16 v13, 0x4130

    div-double v8, v11, v13

    .line 72
    .local v8, size:D
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v11, "#.##"

    invoke-direct {v2, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 74
    .local v2, df:Ljava/text/DecimalFormat;
    const-wide/16 v11, 0x0

    cmpl-double v11, v8, v11

    if-lez v11, :cond_3

    .line 75
    iget-object v11, v6, Lcom/madvil/core/DownloadsAdapter$ItemHolder;->downloadedTV:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/madvil/core/SimpleDownloadForAdapter;->getProgress()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "% "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    invoke-virtual {v2, v13, v14}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 76
    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    invoke-virtual {v2, v13, v14}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mb"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 75
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_3
    iget-object v11, v6, Lcom/madvil/core/DownloadsAdapter$ItemHolder;->song:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/madvil/core/SimpleDownloadForAdapter;->getArtist()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Lcom/madvil/core/SimpleDownloadForAdapter;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v11, v6, Lcom/madvil/core/DownloadsAdapter$ItemHolder;->downloadPB:Landroid/widget/ProgressBar;

    invoke-virtual {v7}, Lcom/madvil/core/SimpleDownloadForAdapter;->getProgress()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_2

    .line 78
    :cond_3
    iget-object v11, v6, Lcom/madvil/core/DownloadsAdapter$ItemHolder;->downloadedTV:Landroid/widget/TextView;

    const-string v12, "Pending..."

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public removeItem(Lcom/madvil/core/SimpleDownloadForAdapter;)V
    .locals 1
    .parameter "sd"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/madvil/core/DownloadsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method
