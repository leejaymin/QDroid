.class Lcom/wolfram/android/alpha/view/QueryResultView$1;
.super Ljava/lang/Object;
.source "QueryResultView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/view/QueryResultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/view/QueryResultView;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/view/QueryResultView;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/wolfram/android/alpha/view/QueryResultView$1;->this$0:Lcom/wolfram/android/alpha/view/QueryResultView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 10
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 53
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 55
    iget-object v3, p0, Lcom/wolfram/android/alpha/view/QueryResultView$1;->this$0:Lcom/wolfram/android/alpha/view/QueryResultView;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/view/QueryResultView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/wolfram/android/alpha/QueryResultAdapter;

    sput-object p0, Lcom/wolfram/android/alpha/view/QueryResultView;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    .line 57
    if-eqz p3, :cond_6

    .line 58
    sget-object v3, Lcom/wolfram/android/alpha/view/QueryResultView;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    invoke-virtual {v3, p2, v7, v7}, Lcom/wolfram/android/alpha/QueryResultAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_6

    .line 60
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 61
    .local v0, height:I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 62
    .local v1, top:I
    if-nez v0, :cond_0

    .line 63
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 64
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 67
    :cond_0
    sget-object v3, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getVisibility()I

    move-result v3

    if-ne v3, v9, :cond_4

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v3

    invoke-interface {v3}, Lcom/wolfram/alpha/WAQueryResult;->getGeneralizationViewPosition()I

    move-result v3

    if-eq p2, v3, :cond_4

    add-int/lit8 v3, p2, 0x1

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v4

    invoke-interface {v4}, Lcom/wolfram/alpha/WAQueryResult;->getGeneralizationViewPosition()I

    move-result v4

    if-ne v3, v4, :cond_1

    add-int v3, v1, v0

    sget-object v4, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_4

    :cond_1
    if-gez v1, :cond_4

    .line 70
    instance-of v3, v2, Lcom/wolfram/android/alpha/view/PodView;

    if-eqz v3, :cond_3

    .line 71
    sget-object v3, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 72
    sput-object v2, Lcom/wolfram/android/alpha/view/QueryResultView;->pod_view_docked:Landroid/view/View;

    .line 125
    .end local v0           #height:I
    .end local v1           #top:I
    .end local v2           #v:Landroid/view/View;
    :cond_2
    :goto_0
    return-void

    .line 74
    .restart local v0       #height:I
    .restart local v1       #top:I
    .restart local v2       #v:Landroid/view/View;
    :cond_3
    instance-of v3, v2, Lcom/wolfram/android/alpha/view/WeatherBannerView;

    if-eqz v3, :cond_5

    .line 75
    sget-object v3, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 76
    sget-object v3, Lcom/wolfram/android/alpha/view/QueryResultView;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    sget v4, Lcom/wolfram/android/alpha/QueryResultAdapter;->weatherBannerPosition:I

    invoke-virtual {v3, v4, v7, v7}, Lcom/wolfram/android/alpha/QueryResultAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/wolfram/android/alpha/view/QueryResultView;->pod_view_docked:Landroid/view/View;

    goto :goto_0

    .line 79
    :cond_4
    sget-object v3, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getVisibility()I

    move-result v3

    if-ne v3, v9, :cond_5

    add-int/lit8 v3, p2, 0x1

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v4

    invoke-interface {v4}, Lcom/wolfram/alpha/WAQueryResult;->getGeneralizationViewPosition()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 80
    sget-object v3, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 81
    sput-object v2, Lcom/wolfram/android/alpha/view/QueryResultView;->pod_view_docked:Landroid/view/View;

    .line 82
    sget-object v3, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    sget-object v4, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    sget-object v5, Lcom/wolfram/android/alpha/view/QueryResultView;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v5, v6, v7, v7}, Lcom/wolfram/android/alpha/QueryResultAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v8, v4}, Landroid/widget/ListView;->scrollTo(II)V

    .line 86
    :cond_5
    sget-object v3, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    .line 87
    if-nez p2, :cond_7

    if-nez v1, :cond_7

    if-nez v0, :cond_7

    sget-object v3, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 123
    .end local v0           #height:I
    .end local v1           #top:I
    .end local v2           #v:Landroid/view/View;
    :cond_6
    :goto_1
    sget-object v3, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 88
    .restart local v0       #height:I
    .restart local v1       #top:I
    .restart local v2       #v:Landroid/view/View;
    :cond_7
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v3

    invoke-interface {v3}, Lcom/wolfram/alpha/WAQueryResult;->getGeneralizationViewPosition()I

    move-result v3

    if-ne p2, v3, :cond_8

    sget-object v3, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 89
    :cond_8
    add-int v3, v1, v0

    sget-object v4, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_c

    .line 91
    sget-object v3, Lcom/wolfram/android/alpha/view/QueryResultView;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4, v7, v7}, Lcom/wolfram/android/alpha/QueryResultAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sget-object v4, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_b

    .line 92
    add-int/lit8 v3, p2, 0x1

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v4

    invoke-interface {v4}, Lcom/wolfram/alpha/WAQueryResult;->getGeneralizationViewPosition()I

    move-result v4

    if-ne v3, v4, :cond_9

    .line 94
    sget-object v3, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 98
    :cond_9
    sget-object v3, Lcom/wolfram/android/alpha/view/QueryResultView;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Lcom/wolfram/android/alpha/QueryResultAdapter;->positionToPodIndex(I)I

    move-result v3

    if-ltz v3, :cond_a

    .line 99
    sget-object v3, Lcom/wolfram/android/alpha/view/QueryResultView;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4, v7, v7}, Lcom/wolfram/android/alpha/QueryResultAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/wolfram/android/alpha/view/QueryResultView;->pod_view_docked:Landroid/view/View;

    goto :goto_1

    .line 101
    :cond_a
    sget-object v3, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 103
    :cond_b
    sput-object v2, Lcom/wolfram/android/alpha/view/QueryResultView;->pod_view_docked:Landroid/view/View;

    .line 105
    sget-object v3, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    sget-object v4, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    sget-object v5, Lcom/wolfram/android/alpha/view/QueryResultView;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v5, v6, v7, v7}, Lcom/wolfram/android/alpha/QueryResultAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v8, v4}, Landroid/widget/ListView;->scrollTo(II)V

    goto/16 :goto_1

    .line 108
    :cond_c
    if-nez p2, :cond_d

    sget-object v3, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_1

    .line 109
    :cond_d
    sget-object v3, Lcom/wolfram/android/alpha/view/QueryResultView;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    invoke-virtual {v3, p2}, Lcom/wolfram/android/alpha/QueryResultAdapter;->positionToPodIndex(I)I

    move-result v3

    if-ltz v3, :cond_e

    .line 110
    sput-object v2, Lcom/wolfram/android/alpha/view/QueryResultView;->pod_view_docked:Landroid/view/View;

    .line 111
    sget-object v3, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v3, v8, v8}, Landroid/widget/ListView;->scrollTo(II)V

    goto/16 :goto_1

    .line 113
    :cond_e
    instance-of v3, v2, Lcom/wolfram/android/alpha/view/WeatherBannerView;

    if-eqz v3, :cond_f

    .line 114
    sget-object v3, Lcom/wolfram/android/alpha/view/QueryResultView;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    sget v4, Lcom/wolfram/android/alpha/QueryResultAdapter;->weatherBannerPosition:I

    invoke-virtual {v3, v4, v7, v7}, Lcom/wolfram/android/alpha/QueryResultAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/wolfram/android/alpha/view/QueryResultView;->pod_view_docked:Landroid/view/View;

    .line 115
    sget-object v3, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v3, v8, v8}, Landroid/widget/ListView;->scrollTo(II)V

    goto/16 :goto_1

    .line 117
    :cond_f
    sget-object v3, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 129
    return-void
.end method
