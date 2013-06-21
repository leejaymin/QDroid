.class public Lcom/wolfram/android/alpha/view/QueryResultView;
.super Landroid/widget/ListView;
.source "QueryResultView.java"


# static fields
.field public static adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

.field private static logger:Ljava/util/logging/Logger;

.field public static pod_view_docked:Landroid/view/View;


# instance fields
.field totalDrawingHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    const-string v0, "com.wolfram.android.alpha.view.QueryResultView"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/view/QueryResultView;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput v0, p0, Lcom/wolfram/android/alpha/view/QueryResultView;->totalDrawingHeight:I

    .line 39
    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/view/QueryResultView;->setItemsCanFocus(Z)V

    .line 40
    new-instance v0, Lcom/wolfram/android/alpha/QueryResultAdapter;

    check-cast p1, Lcom/wolfram/android/alpha/activity/WolframAlpha;

    .end local p1
    invoke-direct {v0, p1}, Lcom/wolfram/android/alpha/QueryResultAdapter;-><init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;)V

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/view/QueryResultView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    :try_start_0
    sget-object v0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setScrollbarFadingEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setScrollbarFadingEnabledMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, LjQaa7YP/X8ZGZLi5l5;->EhwFYCDu5qmH(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    new-instance v0, Lcom/wolfram/android/alpha/view/QueryResultView$1;

    invoke-direct {v0, p0}, Lcom/wolfram/android/alpha/view/QueryResultView$1;-><init>(Lcom/wolfram/android/alpha/view/QueryResultView;)V

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/view/QueryResultView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 132
    return-void

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/QueryResultView;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/QueryResultView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 178
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    .line 180
    .local v4, numViews:I
    const/4 v5, 0x0

    .line 181
    .local v5, result:I
    if-lez v4, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/QueryResultView;->getFirstVisiblePosition()I

    move-result v1

    .line 183
    .local v1, firstVisible:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 184
    invoke-interface {v0, v3, v8, v8}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 185
    .local v2, h:I
    add-int/2addr v5, v2

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .end local v2           #h:I
    :cond_0
    invoke-interface {v0, v1, v8, v8}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 188
    .local v6, t:I
    sub-int/2addr v5, v6

    .line 190
    .end local v1           #firstVisible:I
    .end local v3           #i:I
    .end local v6           #t:I
    :cond_1
    return v5
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/wolfram/android/alpha/view/QueryResultView;->totalDrawingHeight:I

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 236
    const v0, 0x3e4ccccd

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 241
    const v0, 0x3e4ccccd

    return v0
.end method

.method protected layoutChildren()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 203
    const v7, 0x7f0e007f

    invoke-virtual {p0, v7}, Lcom/wolfram/android/alpha/view/QueryResultView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 204
    .local v4, queryTextView:Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    move v5, v7

    .line 206
    .local v5, queryTextViewHadFocus:Z
    :goto_0
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 209
    iput v9, p0, Lcom/wolfram/android/alpha/view/QueryResultView;->totalDrawingHeight:I

    .line 210
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/QueryResultView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 211
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    .line 212
    .local v3, numViews:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 213
    invoke-interface {v0, v2, v10, v10}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 214
    .local v6, v:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 215
    .local v1, height:I
    if-nez v1, :cond_0

    .line 218
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    .line 219
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 221
    :cond_0
    iget v7, p0, Lcom/wolfram/android/alpha/view/QueryResultView;->totalDrawingHeight:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/wolfram/android/alpha/view/QueryResultView;->totalDrawingHeight:I

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v1           #height:I
    .end local v2           #i:I
    .end local v3           #numViews:I
    .end local v5           #queryTextViewHadFocus:Z
    .end local v6           #v:Landroid/view/View;
    :cond_1
    move v5, v9

    .line 204
    goto :goto_0

    .line 225
    .restart local v0       #adapter:Landroid/widget/Adapter;
    .restart local v2       #i:I
    .restart local v3       #numViews:I
    .restart local v5       #queryTextViewHadFocus:Z
    :cond_2
    if-eqz v5, :cond_3

    .line 226
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 227
    :cond_3
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 160
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 161
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 153
    return-void
.end method
