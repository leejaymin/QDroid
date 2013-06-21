.class public Lkr/co/medinbiz/widget/ultra/PhotoListView;
.super Lkr/co/medinbiz/widget/ultra/UltraCommon;
.source "PhotoListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private final handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentPage:I

.field private mFooterView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mMNum:Ljava/lang/String;

.field private mMemberName:Ljava/lang/String;

.field private mPhotoList:Lkr/co/medinbiz/dto/PhotoList;

.field private mPhotoListAdapter:Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;

.field private mPosition:I

.field private mTotalPage:I

.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkr/co/medinbiz/dto/PhotoList;)V
    .locals 8
    .parameter "aContext"
    .parameter "aMemberName"
    .parameter "aMNum"
    .parameter "aPhotoList"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 65
    invoke-direct {p0}, Lkr/co/medinbiz/widget/ultra/UltraCommon;-><init>()V

    .line 149
    new-instance v2, Lkr/co/medinbiz/widget/ultra/PhotoListView$1;

    invoke-direct {v2, p0}, Lkr/co/medinbiz/widget/ultra/PhotoListView$1;-><init>(Lkr/co/medinbiz/widget/ultra/PhotoListView;)V

    iput-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->handler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mContext:Landroid/content/Context;

    .line 68
    iput-object p4, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPhotoList:Lkr/co/medinbiz/dto/PhotoList;

    .line 69
    iput-object p3, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mMNum:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mMemberName:Ljava/lang/String;

    .line 71
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPhotoList:Lkr/co/medinbiz/dto/PhotoList;

    invoke-virtual {v2}, Lkr/co/medinbiz/dto/PhotoList;->getTotalpage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mTotalPage:I

    .line 72
    iput v5, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mCurrentPage:I

    .line 74
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mContext:Landroid/content/Context;

    .line 75
    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 74
    check-cast v1, Landroid/view/LayoutInflater;

    .line 76
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0xa0

    if-ne v2, v3, :cond_1

    .line 77
    sget v2, Lkr/co/medinbiz/R$layout;->ultra_photolist_160:I

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->widget:Landroid/view/View;

    .line 82
    :goto_0
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->widget:Landroid/view/View;

    sget v3, Lkr/co/medinbiz/R$id;->list:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mListView:Landroid/widget/ListView;

    .line 83
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->widget:Landroid/view/View;

    sget v3, Lkr/co/medinbiz/R$id;->title_bar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 85
    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lkr/co/medinbiz/R$string;->title_ultra_photo:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mMemberName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    sget v2, Lkr/co/medinbiz/R$layout;->ultra_list_more:I

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mFooterView:Landroid/view/View;

    .line 88
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mFooterView:Landroid/view/View;

    sget v3, Lkr/co/medinbiz/R$id;->more:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 89
    .local v0, button:Landroid/widget/Button;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 90
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lkr/co/medinbiz/R$string;->more:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    new-instance v2, Lkr/co/medinbiz/widget/ultra/PhotoListView$2;

    invoke-direct {v2, p0}, Lkr/co/medinbiz/widget/ultra/PhotoListView$2;-><init>(Lkr/co/medinbiz/widget/ultra/PhotoListView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mTotalPage:I

    iget v3, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mCurrentPage:I

    if-le v2, v3, :cond_2

    .line 101
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 102
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 108
    :cond_0
    :goto_1
    new-instance v2, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;

    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;-><init>(Lkr/co/medinbiz/widget/ultra/PhotoListView;Landroid/content/Context;)V

    iput-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPhotoListAdapter:Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;

    .line 109
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPhotoListAdapter:Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mListView:Landroid/widget/ListView;

    new-instance v3, Lkr/co/medinbiz/widget/ultra/PhotoListView$3;

    invoke-direct {v3, p0}, Lkr/co/medinbiz/widget/ultra/PhotoListView$3;-><init>(Lkr/co/medinbiz/widget/ultra/PhotoListView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 121
    return-void

    .line 79
    .end local v0           #button:Landroid/widget/Button;
    :cond_1
    sget v2, Lkr/co/medinbiz/R$layout;->ultra_photolist:I

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->widget:Landroid/view/View;

    goto/16 :goto_0

    .line 105
    .restart local v0       #button:Landroid/widget/Button;
    :cond_2
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_1
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lkr/co/medinbiz/widget/ultra/PhotoListView;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mTotalPage:I

    return v0
.end method

.method static synthetic access$10(Lkr/co/medinbiz/widget/ultra/PhotoListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPosition:I

    return-void
.end method

.method static synthetic access$11(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mMNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lkr/co/medinbiz/widget/ultra/PhotoListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mCurrentPage:I

    return-void
.end method

.method static synthetic access$13(Lkr/co/medinbiz/widget/ultra/PhotoListView;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->getPhotoList(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$14(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lkr/co/medinbiz/widget/ultra/PhotoListView;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$3(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mFooterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lkr/co/medinbiz/widget/ultra/PhotoListView;Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPhotoListAdapter:Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;

    return-void
.end method

.method static synthetic access$7(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPhotoListAdapter:Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;

    return-object v0
.end method

.method static synthetic access$8(Lkr/co/medinbiz/widget/ultra/PhotoListView;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPosition:I

    return v0
.end method

.method static synthetic access$9(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Lkr/co/medinbiz/dto/PhotoList;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPhotoList:Lkr/co/medinbiz/dto/PhotoList;

    return-object v0
.end method

.method private getPhotoList(Ljava/lang/String;I)V
    .locals 4
    .parameter "aMNum"
    .parameter "aCurrentPage"

    .prologue
    .line 124
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mContext:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "loading..."

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->dialog:Landroid/app/ProgressDialog;

    .line 125
    new-instance v0, Lkr/co/medinbiz/widget/ultra/PhotoListView$4;

    invoke-direct {v0, p0, p1, p2}, Lkr/co/medinbiz/widget/ultra/PhotoListView$4;-><init>(Lkr/co/medinbiz/widget/ultra/PhotoListView;Ljava/lang/String;I)V

    .line 146
    invoke-virtual {v0}, Lkr/co/medinbiz/widget/ultra/PhotoListView$4;->start()V

    .line 147
    return-void
.end method


# virtual methods
.method public ChangVideoList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "aPosition"
    .parameter "aCurrPage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/Ultra;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, aUltras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPhotoList:Lkr/co/medinbiz/dto/PhotoList;

    invoke-virtual {v0, p1}, Lkr/co/medinbiz/dto/PhotoList;->setUltras(Ljava/util/ArrayList;)V

    .line 50
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mCurrentPage:I

    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPosition:I

    .line 52
    iget v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mTotalPage:I

    iget v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mCurrentPage:I

    if-le v0, v1, :cond_1

    .line 53
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 60
    :cond_0
    :goto_0
    new-instance v0, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;-><init>(Lkr/co/medinbiz/widget/ultra/PhotoListView;Landroid/content/Context;)V

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPhotoListAdapter:Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;

    .line 61
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPhotoListAdapter:Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 63
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView;->widget:Landroid/view/View;

    return-object v0
.end method
