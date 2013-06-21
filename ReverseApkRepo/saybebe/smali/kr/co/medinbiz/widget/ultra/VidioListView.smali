.class public Lkr/co/medinbiz/widget/ultra/VidioListView;
.super Lkr/co/medinbiz/widget/ultra/UltraCommon;
.source "VidioListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter;
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private final handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentPage:I

.field private mCurrentPosition:I

.field private mFooterView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mMNum:Ljava/lang/String;

.field private mMemberName:Ljava/lang/String;

.field private mMovieListAdapter:Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter;

.field private mTotalPage:I

.field private mVideoList:Lkr/co/medinbiz/dto/VideoList;

.field private pm:Lkr/co/medinbiz/helper/PreferencesManager;

.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkr/co/medinbiz/dto/VideoList;)V
    .locals 17
    .parameter "aContext"
    .parameter "aMemberName"
    .parameter "aMNum"
    .parameter "aVideoList"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Lkr/co/medinbiz/widget/ultra/UltraCommon;-><init>()V

    .line 161
    new-instance v12, Lkr/co/medinbiz/widget/ultra/VidioListView$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lkr/co/medinbiz/widget/ultra/VidioListView$1;-><init>(Lkr/co/medinbiz/widget/ultra/VidioListView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->handler:Landroid/os/Handler;

    .line 52
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lkr/co/medinbiz/widget/ultra/VidioListView;->mContext:Landroid/content/Context;

    .line 53
    new-instance v12, Lkr/co/medinbiz/helper/PreferencesManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    .line 54
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lkr/co/medinbiz/widget/ultra/VidioListView;->mVideoList:Lkr/co/medinbiz/dto/VideoList;

    .line 55
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lkr/co/medinbiz/widget/ultra/VidioListView;->mMNum:Ljava/lang/String;

    .line 56
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lkr/co/medinbiz/widget/ultra/VidioListView;->mMemberName:Ljava/lang/String;

    .line 57
    move-object/from16 v0, p0

    iget-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mVideoList:Lkr/co/medinbiz/dto/VideoList;

    invoke-virtual {v12}, Lkr/co/medinbiz/dto/VideoList;->getTotalpage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mTotalPage:I

    .line 58
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mCurrentPage:I

    .line 60
    move-object/from16 v0, p0

    iget-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mVideoList:Lkr/co/medinbiz/dto/VideoList;

    invoke-virtual {v12}, Lkr/co/medinbiz/dto/VideoList;->getUltras()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_2

    .line 62
    const/4 v6, 0x0

    .line 64
    .local v6, diffCnt:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mVideoList:Lkr/co/medinbiz/dto/VideoList;

    invoke-virtual {v12}, Lkr/co/medinbiz/dto/VideoList;->getDiffcount()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 67
    :goto_0
    if-lez v6, :cond_2

    .line 68
    const-string v12, "Asia/Seoul"

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v9

    .line 69
    .local v9, now:Ljava/util/Calendar;
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 70
    .local v10, nowDate:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v12}, Lkr/co/medinbiz/helper/PreferencesManager;->getDiffCount()I

    move-result v2

    .line 71
    .local v2, b_diffCnt:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v12}, Lkr/co/medinbiz/helper/PreferencesManager;->getDiffCountDate()J

    move-result-wide v12

    const-wide/32 v14, 0x927c0

    add-long v3, v12, v14

    .line 72
    .local v3, b_diffCntDate:J
    if-ne v2, v6, :cond_0

    cmp-long v12, v10, v3

    if-gtz v12, :cond_2

    .line 74
    :cond_0
    if-eq v2, v6, :cond_1

    .line 75
    move-object/from16 v0, p0

    iget-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v12, v6}, Lkr/co/medinbiz/helper/PreferencesManager;->setDiffCount(I)V

    .line 76
    move-object/from16 v0, p0

    iget-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v12, v10, v11}, Lkr/co/medinbiz/helper/PreferencesManager;->setDiffCountDate(J)V

    .line 78
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mContext:Landroid/content/Context;

    sget v13, Lkr/co/medinbiz/R$string;->err_convert_in_progress:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, msgS:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mContext:Landroid/content/Context;

    invoke-static {v12, v8}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    .end local v2           #b_diffCnt:I
    .end local v3           #b_diffCntDate:J
    .end local v6           #diffCnt:I
    .end local v8           #msgS:Ljava/lang/String;
    .end local v9           #now:Ljava/util/Calendar;
    .end local v10           #nowDate:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mContext:Landroid/content/Context;

    .line 86
    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 85
    check-cast v7, Landroid/view/LayoutInflater;

    .line 87
    .local v7, inflater:Landroid/view/LayoutInflater;
    invoke-static/range {p1 .. p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v12

    const/16 v13, 0xa0

    if-ne v12, v13, :cond_4

    .line 88
    sget v12, Lkr/co/medinbiz/R$layout;->ultra_videolist_160:I

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->widget:Landroid/view/View;

    .line 93
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->widget:Landroid/view/View;

    sget v13, Lkr/co/medinbiz/R$id;->list:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mListView:Landroid/widget/ListView;

    .line 94
    move-object/from16 v0, p0

    iget-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mListView:Landroid/widget/ListView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->widget:Landroid/view/View;

    sget v13, Lkr/co/medinbiz/R$id;->title_bar:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 96
    move-object/from16 v0, p0

    iget-object v13, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lkr/co/medinbiz/R$string;->title_ultra_movie:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mMemberName:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 95
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    sget v12, Lkr/co/medinbiz/R$layout;->ultra_list_more:I

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mFooterView:Landroid/view/View;

    .line 99
    move-object/from16 v0, p0

    iget-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mFooterView:Landroid/view/View;

    sget v13, Lkr/co/medinbiz/R$id;->more:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 100
    .local v5, button:Landroid/widget/Button;
    const/4 v12, -0x1

    invoke-virtual {v5, v12}, Landroid/widget/Button;->setTextColor(I)V

    .line 101
    move-object/from16 v0, p0

    iget-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lkr/co/medinbiz/R$string;->more:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 102
    new-instance v12, Lkr/co/medinbiz/widget/ultra/VidioListView$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lkr/co/medinbiz/widget/ultra/VidioListView$2;-><init>(Lkr/co/medinbiz/widget/ultra/VidioListView;)V

    invoke-virtual {v5, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    move-object/from16 v0, p0

    iget v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mTotalPage:I

    move-object/from16 v0, p0

    iget v13, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mCurrentPage:I

    if-le v12, v13, :cond_5

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v12}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v12

    if-nez v12, :cond_3

    .line 115
    move-object/from16 v0, p0

    iget-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 121
    :cond_3
    :goto_2
    new-instance v12, Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter;-><init>(Lkr/co/medinbiz/widget/ultra/VidioListView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mMovieListAdapter:Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter;

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mMovieListAdapter:Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter;

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mListView:Landroid/widget/ListView;

    new-instance v13, Lkr/co/medinbiz/widget/ultra/VidioListView$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lkr/co/medinbiz/widget/ultra/VidioListView$3;-><init>(Lkr/co/medinbiz/widget/ultra/VidioListView;)V

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 133
    return-void

    .line 90
    .end local v5           #button:Landroid/widget/Button;
    :cond_4
    sget v12, Lkr/co/medinbiz/R$layout;->ultra_videolist:I

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->widget:Landroid/view/View;

    goto/16 :goto_1

    .line 118
    .restart local v5       #button:Landroid/widget/Button;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_2

    .line 65
    .end local v5           #button:Landroid/widget/Button;
    .end local v7           #inflater:Landroid/view/LayoutInflater;
    .restart local v6       #diffCnt:I
    :catch_0
    move-exception v12

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/ultra/VidioListView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lkr/co/medinbiz/widget/ultra/VidioListView;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mTotalPage:I

    return v0
.end method

.method static synthetic access$10(Lkr/co/medinbiz/widget/ultra/VidioListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mCurrentPosition:I

    return-void
.end method

.method static synthetic access$11(Lkr/co/medinbiz/widget/ultra/VidioListView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mMNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lkr/co/medinbiz/widget/ultra/VidioListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mCurrentPage:I

    return-void
.end method

.method static synthetic access$13(Lkr/co/medinbiz/widget/ultra/VidioListView;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lkr/co/medinbiz/widget/ultra/VidioListView;->getVideoList(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$14(Lkr/co/medinbiz/widget/ultra/VidioListView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lkr/co/medinbiz/widget/ultra/VidioListView;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$3(Lkr/co/medinbiz/widget/ultra/VidioListView;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lkr/co/medinbiz/widget/ultra/VidioListView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mFooterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5(Lkr/co/medinbiz/widget/ultra/VidioListView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lkr/co/medinbiz/widget/ultra/VidioListView;Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mMovieListAdapter:Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter;

    return-void
.end method

.method static synthetic access$7(Lkr/co/medinbiz/widget/ultra/VidioListView;)Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mMovieListAdapter:Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter;

    return-object v0
.end method

.method static synthetic access$8(Lkr/co/medinbiz/widget/ultra/VidioListView;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$9(Lkr/co/medinbiz/widget/ultra/VidioListView;)Lkr/co/medinbiz/dto/VideoList;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mVideoList:Lkr/co/medinbiz/dto/VideoList;

    return-object v0
.end method

.method private getVideoList(Ljava/lang/String;I)V
    .locals 4
    .parameter "aMNum"
    .parameter "aCurrentPage"

    .prologue
    .line 136
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView;->mContext:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "loading..."

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView;->dialog:Landroid/app/ProgressDialog;

    .line 137
    new-instance v0, Lkr/co/medinbiz/widget/ultra/VidioListView$4;

    invoke-direct {v0, p0, p1, p2}, Lkr/co/medinbiz/widget/ultra/VidioListView$4;-><init>(Lkr/co/medinbiz/widget/ultra/VidioListView;Ljava/lang/String;I)V

    .line 158
    invoke-virtual {v0}, Lkr/co/medinbiz/widget/ultra/VidioListView$4;->start()V

    .line 159
    return-void
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView;->widget:Landroid/view/View;

    return-object v0
.end method
