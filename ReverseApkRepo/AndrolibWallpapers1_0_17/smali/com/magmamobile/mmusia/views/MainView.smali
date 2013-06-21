.class public Lcom/magmamobile/mmusia/views/MainView;
.super Landroid/widget/LinearLayout;
.source "MainView.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/magmamobile/mmusia/views/MainView;->setBackgroundColor(I)V

    .line 31
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/magmamobile/mmusia/views/MainView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/magmamobile/mmusia/views/MainView;->setOrientation(I)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/magmamobile/mmusia/views/MainView;->buildView(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object p1, p0, Lcom/magmamobile/mmusia/views/MainView;->mContext:Landroid/content/Context;

    .line 22
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/magmamobile/mmusia/views/MainView;->setBackgroundColor(I)V

    .line 23
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/magmamobile/mmusia/views/MainView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/magmamobile/mmusia/views/MainView;->setOrientation(I)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/magmamobile/mmusia/views/MainView;->buildView(Landroid/content/Context;)V

    .line 26
    return-void
.end method


# virtual methods
.method public buildView(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 38
    new-instance v6, Landroid/widget/TabHost;

    invoke-direct {v6, p1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;)V

    .line 39
    .local v6, tabs:Landroid/widget/TabHost;
    sget v8, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_LISTVIEW_MAINTAB:I

    invoke-virtual {v6, v8}, Landroid/widget/TabHost;->setId(I)V

    .line 40
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/widget/TabHost;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    .local v1, linearMain:Landroid/widget/LinearLayout;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 46
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, frame:Landroid/widget/FrameLayout;
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    const v8, 0xffffff

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 49
    const v8, 0x1020011

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setId(I)V

    .line 51
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    .local v3, linearTabUpdate:Landroid/widget/LinearLayout;
    sget v8, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_TAB_UPDATE:I

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setId(I)V

    .line 53
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 57
    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 58
    .local v5, listUpdate:Landroid/widget/ListView;
    sget v8, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_LISTVIEW_APPUPDATE:I

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setId(I)V

    .line 59
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 61
    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 62
    invoke-virtual {v5, v12}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 63
    invoke-virtual {v5, v11}, Landroid/widget/ListView;->setClickable(Z)V

    .line 65
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 66
    .local v2, linearTabNews:Landroid/widget/LinearLayout;
    sget v8, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_TAB_NEWS:I

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setId(I)V

    .line 67
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 71
    new-instance v4, Landroid/widget/ListView;

    invoke-direct {v4, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 72
    .local v4, listNews:Landroid/widget/ListView;
    sget v8, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_LISTVIEW_NEWSLIST:I

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setId(I)V

    .line 73
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-virtual {v4, v10}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 75
    invoke-virtual {v4, v10}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 76
    invoke-virtual {v4, v12}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 77
    invoke-virtual {v4, v11}, Landroid/widget/ListView;->setClickable(Z)V

    .line 80
    new-instance v7, Landroid/widget/TabWidget;

    invoke-direct {v7, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 81
    .local v7, tabwid:Landroid/widget/TabWidget;
    const v8, 0x1020013

    invoke-virtual {v7, v8}, Landroid/widget/TabWidget;->setId(I)V

    .line 82
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/TabWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {v7, v12}, Landroid/widget/TabWidget;->setBackgroundColor(I)V

    .line 84
    invoke-virtual {v7, v12}, Landroid/widget/TabWidget;->setBaselineAligned(Z)V

    .line 85
    invoke-virtual {v7, v11}, Landroid/widget/TabWidget;->setClipToPadding(Z)V

    .line 86
    const/high16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/widget/TabWidget;->setDrawingCacheQuality(I)V

    .line 88
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 91
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 92
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    invoke-virtual {v6, v1}, Landroid/widget/TabHost;->addView(Landroid/view/View;)V

    .line 96
    invoke-virtual {p0, v6}, Lcom/magmamobile/mmusia/views/MainView;->addView(Landroid/view/View;)V

    .line 97
    return-void
.end method
