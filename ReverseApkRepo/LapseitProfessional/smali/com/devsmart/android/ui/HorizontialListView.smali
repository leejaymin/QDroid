.class public Lcom/devsmart/android/ui/HorizontialListView;
.super Landroid/widget/AdapterView;
.source "HorizontialListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field public mAlwaysOverrideTouch:Z

.field protected mCurrentX:I

.field private mDataChanged:Z

.field private mDataObserver:Landroid/database/DataSetObserver;

.field private mDisplayOffset:I

.field private mGesture:Landroid/view/GestureDetector;

.field private mLeftViewIndex:I

.field private mMaxX:I

.field protected mNextX:I

.field private mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

.field private mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mRemovedViewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRightViewIndex:I

.field protected mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mAlwaysOverrideTouch:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mLeftViewIndex:I

    .line 49
    iput v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mRightViewIndex:I

    .line 52
    const v0, 0x7fffffff

    iput v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mMaxX:I

    .line 53
    iput v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mDisplayOffset:I

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mRemovedViewQueue:Ljava/util/Queue;

    .line 59
    iput-boolean v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mDataChanged:Z

    .line 88
    new-instance v0, Lcom/devsmart/android/ui/HorizontialListView$1;

    invoke-direct {v0, p0}, Lcom/devsmart/android/ui/HorizontialListView$1;-><init>(Lcom/devsmart/android/ui/HorizontialListView;)V

    iput-object v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 302
    new-instance v0, Lcom/devsmart/android/ui/HorizontialListView$2;

    invoke-direct {v0, p0}, Lcom/devsmart/android/ui/HorizontialListView$2;-><init>(Lcom/devsmart/android/ui/HorizontialListView;)V

    iput-object v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    .line 64
    invoke-direct {p0}, Lcom/devsmart/android/ui/HorizontialListView;->initView()V

    .line 65
    return-void
.end method

.method static synthetic access$2(Lcom/devsmart/android/ui/HorizontialListView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mDataChanged:Z

    return-void
.end method

.method static synthetic access$3(Lcom/devsmart/android/ui/HorizontialListView;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/devsmart/android/ui/HorizontialListView;->reset()V

    return-void
.end method

.method static synthetic access$4(Lcom/devsmart/android/ui/HorizontialListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/devsmart/android/ui/HorizontialListView;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mLeftViewIndex:I

    return v0
.end method

.method static synthetic access$6(Lcom/devsmart/android/ui/HorizontialListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 4
    .parameter "child"
    .parameter "viewPos"

    .prologue
    const/4 v1, -0x1

    const/high16 v3, -0x8000

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 142
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 143
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 146
    .restart local v0       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/devsmart/android/ui/HorizontialListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 147
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontialListView;->getWidth()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 148
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontialListView;->getHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 147
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 149
    return-void
.end method

.method private fillList(I)V
    .locals 3
    .parameter "dx"

    .prologue
    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, edge:I
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontialListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/devsmart/android/ui/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 203
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 206
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/devsmart/android/ui/HorizontialListView;->fillListRight(II)V

    .line 208
    const/4 v1, 0x0

    .line 209
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/devsmart/android/ui/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 213
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/devsmart/android/ui/HorizontialListView;->fillListLeft(II)V

    .line 216
    return-void
.end method

.method private fillListLeft(II)V
    .locals 4
    .parameter "leftEdge"
    .parameter "dx"

    .prologue
    .line 234
    :goto_0
    add-int v1, p1, p2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mLeftViewIndex:I

    if-gez v1, :cond_1

    .line 241
    :cond_0
    return-void

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/devsmart/android/ui/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/devsmart/android/ui/HorizontialListView;->mLeftViewIndex:I

    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 236
    .local v0, child:Landroid/view/View;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/devsmart/android/ui/HorizontialListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 237
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 238
    iget v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mLeftViewIndex:I

    .line 239
    iget v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mDisplayOffset:I

    goto :goto_0
.end method

.method private fillListRight(II)V
    .locals 4
    .parameter "rightEdge"
    .parameter "dx"

    .prologue
    .line 219
    :goto_0
    add-int v1, p1, p2

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontialListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mRightViewIndex:I

    iget-object v2, p0, Lcom/devsmart/android/ui/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 231
    :cond_0
    return-void

    .line 221
    :cond_1
    iget-object v2, p0, Lcom/devsmart/android/ui/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/devsmart/android/ui/HorizontialListView;->mRightViewIndex:I

    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, child:Landroid/view/View;
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/devsmart/android/ui/HorizontialListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 223
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p1, v1

    .line 225
    iget v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mRightViewIndex:I

    iget-object v2, p0, Lcom/devsmart/android/ui/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 226
    iget v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mCurrentX:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontialListView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mMaxX:I

    .line 228
    :cond_2
    iget v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mRightViewIndex:I

    goto :goto_0
.end method

.method private declared-synchronized initView()V
    .locals 3

    .prologue
    .line 68
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mLeftViewIndex:I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mRightViewIndex:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mDisplayOffset:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mCurrentX:I

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mNextX:I

    .line 73
    const v0, 0x7fffffff

    iput v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mMaxX:I

    .line 74
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontialListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    .line 75
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontialListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/devsmart/android/ui/HorizontialListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mGesture:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private positionItems(I)V
    .locals 7
    .parameter "dx"

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontialListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 265
    iget v4, p0, Lcom/devsmart/android/ui/HorizontialListView;->mDisplayOffset:I

    add-int/2addr v4, p1

    iput v4, p0, Lcom/devsmart/android/ui/HorizontialListView;->mDisplayOffset:I

    .line 266
    iget v3, p0, Lcom/devsmart/android/ui/HorizontialListView;->mDisplayOffset:I

    .line 267
    .local v3, left:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontialListView;->getChildCount()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 274
    .end local v2           #i:I
    .end local v3           #left:I
    :cond_0
    return-void

    .line 268
    .restart local v2       #i:I
    .restart local v3       #left:I
    :cond_1
    invoke-virtual {p0, v2}, Lcom/devsmart/android/ui/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 269
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 270
    .local v1, childWidth:I
    const/4 v4, 0x0

    add-int v5, v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 271
    add-int/2addr v3, v1

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private removeNonVisibleItems(I)V
    .locals 4
    .parameter "dx"

    .prologue
    const/4 v3, 0x0

    .line 244
    invoke-virtual {p0, v3}, Lcom/devsmart/android/ui/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 245
    .local v0, child:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-lez v1, :cond_2

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontialListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/devsmart/android/ui/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 255
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontialListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 261
    :cond_1
    return-void

    .line 246
    :cond_2
    iget v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mDisplayOffset:I

    .line 247
    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {p0, v0}, Lcom/devsmart/android/ui/HorizontialListView;->removeViewInLayout(Landroid/view/View;)V

    .line 249
    iget v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mLeftViewIndex:I

    .line 250
    invoke-virtual {p0, v3}, Lcom/devsmart/android/ui/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 256
    :cond_3
    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {p0, v0}, Lcom/devsmart/android/ui/HorizontialListView;->removeViewInLayout(Landroid/view/View;)V

    .line 258
    iget v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mRightViewIndex:I

    .line 259
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontialListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/devsmart/android/ui/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method private declared-synchronized reset()V
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/devsmart/android/ui/HorizontialListView;->initView()V

    .line 131
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontialListView;->removeAllViewsInLayout()V

    .line 132
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontialListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 283
    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 284
    .local v0, handled:Z
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontialListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 298
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 299
    return v1
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mNextX:I

    const/4 v2, 0x0

    neg-float v3, p3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/devsmart/android/ui/HorizontialListView;->mMaxX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 289
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontialListView;->requestLayout()V

    .line 294
    const/4 v0, 0x1

    return v0

    .line 289
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 155
    iget-object v3, p0, Lcom/devsmart/android/ui/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 198
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 159
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/devsmart/android/ui/HorizontialListView;->mDataChanged:Z

    if-eqz v3, :cond_2

    .line 160
    iget v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mCurrentX:I

    .line 161
    .local v1, oldCurrentX:I
    invoke-direct {p0}, Lcom/devsmart/android/ui/HorizontialListView;->initView()V

    .line 162
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontialListView;->removeAllViewsInLayout()V

    .line 163
    iput v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mNextX:I

    .line 164
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/devsmart/android/ui/HorizontialListView;->mDataChanged:Z

    .line 167
    .end local v1           #oldCurrentX:I
    :cond_2
    iget-object v3, p0, Lcom/devsmart/android/ui/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 168
    iget-object v3, p0, Lcom/devsmart/android/ui/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 169
    .local v2, scrollx:I
    iput v2, p0, Lcom/devsmart/android/ui/HorizontialListView;->mNextX:I

    .line 172
    .end local v2           #scrollx:I
    :cond_3
    iget v3, p0, Lcom/devsmart/android/ui/HorizontialListView;->mNextX:I

    if-gez v3, :cond_4

    .line 173
    const/4 v3, 0x0

    iput v3, p0, Lcom/devsmart/android/ui/HorizontialListView;->mNextX:I

    .line 174
    iget-object v3, p0, Lcom/devsmart/android/ui/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 176
    :cond_4
    iget v3, p0, Lcom/devsmart/android/ui/HorizontialListView;->mNextX:I

    iget v4, p0, Lcom/devsmart/android/ui/HorizontialListView;->mMaxX:I

    if-le v3, v4, :cond_5

    .line 177
    iget v3, p0, Lcom/devsmart/android/ui/HorizontialListView;->mMaxX:I

    iput v3, p0, Lcom/devsmart/android/ui/HorizontialListView;->mNextX:I

    .line 178
    iget-object v3, p0, Lcom/devsmart/android/ui/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 181
    :cond_5
    iget v3, p0, Lcom/devsmart/android/ui/HorizontialListView;->mCurrentX:I

    iget v4, p0, Lcom/devsmart/android/ui/HorizontialListView;->mNextX:I

    sub-int v0, v3, v4

    .line 183
    .local v0, dx:I
    invoke-direct {p0, v0}, Lcom/devsmart/android/ui/HorizontialListView;->removeNonVisibleItems(I)V

    .line 184
    invoke-direct {p0, v0}, Lcom/devsmart/android/ui/HorizontialListView;->fillList(I)V

    .line 185
    invoke-direct {p0, v0}, Lcom/devsmart/android/ui/HorizontialListView;->positionItems(I)V

    .line 187
    iget v3, p0, Lcom/devsmart/android/ui/HorizontialListView;->mNextX:I

    iput v3, p0, Lcom/devsmart/android/ui/HorizontialListView;->mCurrentX:I

    .line 189
    iget-object v3, p0, Lcom/devsmart/android/ui/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    new-instance v3, Lcom/devsmart/android/ui/HorizontialListView$3;

    invoke-direct {v3, p0}, Lcom/devsmart/android/ui/HorizontialListView$3;-><init>(Lcom/devsmart/android/ui/HorizontialListView;)V

    invoke-virtual {p0, v3}, Lcom/devsmart/android/ui/HorizontialListView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    .end local v0           #dx:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized scrollTo(I)V
    .locals 5
    .parameter "x"

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mNextX:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/devsmart/android/ui/HorizontialListView;->mNextX:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 278
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontialListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/devsmart/android/ui/HorizontialListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 125
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 126
    invoke-direct {p0}, Lcom/devsmart/android/ui/HorizontialListView;->reset()V

    .line 127
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    .local p1, listener:Landroid/widget/AdapterView$OnItemClickListener;,"Landroid/widget/AdapterView$OnItemClickListener;"
    iput-object p1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    .line 86
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    .local p1, listener:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    iput-object p1, p0, Lcom/devsmart/android/ui/HorizontialListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 81
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 138
    return-void
.end method
