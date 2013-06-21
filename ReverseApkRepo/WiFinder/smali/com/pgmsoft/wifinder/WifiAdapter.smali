.class public Lcom/pgmsoft/wifinder/WifiAdapter;
.super Landroid/widget/BaseAdapter;
.source "WifiAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private rowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pgmsoft/wifinder/RowList;",
            ">;"
        }
    .end annotation
.end field

.field private rowResID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter "rowResID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/pgmsoft/wifinder/RowList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p3, rowList:Ljava/util/List;,"Ljava/util/List<Lcom/pgmsoft/wifinder/RowList;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/pgmsoft/wifinder/WifiAdapter;->context:Landroid/content/Context;

    .line 22
    iput p2, p0, Lcom/pgmsoft/wifinder/WifiAdapter;->rowResID:I

    .line 23
    iput-object p3, p0, Lcom/pgmsoft/wifinder/WifiAdapter;->rowList:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pgmsoft/wifinder/WifiAdapter;->rowList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pgmsoft/wifinder/WifiAdapter;->rowList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 35
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 39
    iget-object v11, p0, Lcom/pgmsoft/wifinder/WifiAdapter;->rowList:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pgmsoft/wifinder/RowList;

    .line 40
    .local v6, row:Lcom/pgmsoft/wifinder/RowList;
    iget-object v11, p0, Lcom/pgmsoft/wifinder/WifiAdapter;->context:Landroid/content/Context;

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 44
    .local v3, inflate:Landroid/view/LayoutInflater;
    iget v11, p0, Lcom/pgmsoft/wifinder/WifiAdapter;->rowResID:I

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 48
    .local v10, v:Landroid/view/View;
    const v11, 0x7f050014

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 49
    .local v7, ssidControl:Landroid/widget/TextView;
    if-eqz v7, :cond_0

    .line 50
    invoke-virtual {v6}, Lcom/pgmsoft/wifinder/RowList;->getSSid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_0
    const v11, 0x7f050015

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 53
    .local v2, chanelControl:Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 54
    invoke-virtual {v6}, Lcom/pgmsoft/wifinder/RowList;->getChanel()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_1
    const v11, 0x7f050016

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 57
    .local v4, levelControl:Landroid/widget/ImageView;
    const v11, 0x7f050017

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 58
    .local v5, levelTextControl:Landroid/widget/TextView;
    invoke-virtual {v6}, Lcom/pgmsoft/wifinder/RowList;->getLevelChoose()I

    move-result v11

    if-nez v11, :cond_6

    .line 59
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    if-eqz v4, :cond_2

    .line 62
    invoke-virtual {v6}, Lcom/pgmsoft/wifinder/RowList;->getLevelGraph()I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    :cond_2
    :goto_0
    const v11, 0x7f050018

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 74
    .local v8, statusControl:Landroid/widget/ImageView;
    if-eqz v8, :cond_3

    .line 75
    invoke-virtual {v6}, Lcom/pgmsoft/wifinder/RowList;->getStatusResource()I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    :cond_3
    invoke-virtual {v6}, Lcom/pgmsoft/wifinder/RowList;->getAnimationRun()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 79
    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/4 v11, 0x0

    const/high16 v12, 0x43b4

    const/high16 v13, 0x4140

    const/high16 v14, 0x4140

    invoke-direct {v1, v11, v12, v13, v14}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 80
    .local v1, animation:Landroid/view/animation/Animation;
    const/4 v11, -0x1

    invoke-virtual {v1, v11}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 81
    const-wide/16 v11, 0x3e8

    invoke-virtual {v1, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 83
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 86
    .end local v1           #animation:Landroid/view/animation/Animation;
    :cond_4
    const v11, 0x7f050019

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 87
    .local v9, statusWificontrol:Landroid/widget/TextView;
    if-eqz v9, :cond_5

    .line 88
    invoke-virtual {v6}, Lcom/pgmsoft/wifinder/RowList;->getStatusWifi()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_5
    return-object v10

    .line 64
    .end local v8           #statusControl:Landroid/widget/ImageView;
    .end local v9           #statusWificontrol:Landroid/widget/TextView;
    :cond_6
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    invoke-virtual {v6}, Lcom/pgmsoft/wifinder/RowList;->getLevelChoose()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 67
    invoke-virtual {v6}, Lcom/pgmsoft/wifinder/RowList;->getLevelPercent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 68
    :cond_7
    invoke-virtual {v6}, Lcom/pgmsoft/wifinder/RowList;->getLevelChoose()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 69
    invoke-virtual {v6}, Lcom/pgmsoft/wifinder/RowList;->getLeveldBm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
