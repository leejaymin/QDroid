.class public Lorg/appcelerator/titanium/view/TiCompositeLayout;
.super Landroid/view/ViewGroup;
.source "TiCompositeLayout.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;,
        Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field protected static final DBG:Z = false

.field public static final NOT_SET:I = -0x80000000

.field protected static final TAG:Ljava/lang/String; = "TiCompositeLayout"


# instance fields
.field protected arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

.field private disableHorizontalWrap:Z

.field private horizontalLayoutCurrentLeft:I

.field private horizontalLayoutLineHeight:I

.field private horizontalLayoutTopBuffer:I

.field private needsSort:Z

.field private viewSorter:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    invoke-direct {p0, p1, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    .line 39
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutCurrentLeft:I

    .line 40
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 41
    iput-boolean v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->disableHorizontalWrap:Z

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    .line 39
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutCurrentLeft:I

    .line 40
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 41
    iput-boolean v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->disableHorizontalWrap:Z

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V
    .locals 2
    .parameter "context"
    .parameter "arrangement"

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 38
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    .line 39
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutCurrentLeft:I

    .line 40
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 41
    iput-boolean v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->disableHorizontalWrap:Z

    .line 51
    iput-object p2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 52
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$1;

    invoke-direct {v1, p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout$1;-><init>(Lorg/appcelerator/titanium/view/TiCompositeLayout;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewSorter:Ljava/util/TreeSet;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->needsSort:Z

    .line 97
    invoke-virtual {p0, p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 98
    return-void
.end method

.method private computeHorizontalLayoutPosition(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;IIIII[I[I)V
    .locals 11
    .parameter "params"
    .parameter "measuredWidth"
    .parameter "measuredHeight"
    .parameter "layoutRight"
    .parameter "layoutTop"
    .parameter "layoutBottom"
    .parameter "hpos"
    .parameter "vpos"

    .prologue
    .line 407
    iget-object v9, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    .line 408
    .local v9, optionLeft:Lorg/appcelerator/titanium/TiDimension;
    iget v8, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutCurrentLeft:I

    .line 409
    .local v8, left:I
    if-eqz v9, :cond_0

    .line 410
    invoke-virtual {v9, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v0

    add-int/2addr v8, v0

    .line 412
    :cond_0
    add-int v10, v8, p2

    .line 413
    .local v10, right:I
    if-le v10, p4, :cond_1

    iget-boolean v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->disableHorizontalWrap:Z

    if-nez v0, :cond_1

    .line 415
    const/4 v8, 0x0

    .line 416
    move v10, p2

    .line 417
    iget v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    iget v1, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    .line 418
    const/4 v0, 0x0

    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 420
    :cond_1
    const/4 v0, 0x0

    aput v8, p7, v0

    .line 421
    const/4 v0, 0x1

    aput v10, p7, v0

    .line 422
    iput v10, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutCurrentLeft:I

    .line 424
    iget-object v1, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    iget-object v2, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    iget-object v3, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    move-object v0, p0

    move v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    .line 425
    iget v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    const/4 v1, 0x1

    aget v1, p8, v1

    const/4 v2, 0x0

    aget v2, p8, v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 427
    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, p8, v1

    iget v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    add-int/2addr v1, v2

    aput v1, p8, v0

    .line 428
    const/4 v0, 0x1

    const/4 v1, 0x1

    aget v1, p8, v1

    iget v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    add-int/2addr v1, v2

    aput v1, p8, v0

    .line 429
    return-void
.end method

.method public static computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V
    .locals 8
    .parameter "parent"
    .parameter "option0"
    .parameter "optionCenter"
    .parameter "option1"
    .parameter "measuredSize"
    .parameter "layoutPosition0"
    .parameter "layoutPosition1"
    .parameter "pos"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 366
    sub-int v0, p6, p5

    .line 367
    .local v0, dist:I
    if-eqz p2, :cond_0

    .line 368
    div-int/lit8 v1, p4, 0x2

    .line 369
    .local v1, halfSize:I
    invoke-virtual {p2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, p5

    sub-int/2addr v5, v1

    aput v5, p7, v6

    .line 370
    aget v5, p7, v6

    add-int/2addr v5, p4

    aput v5, p7, v7

    .line 391
    .end local v1           #halfSize:I
    :goto_0
    return-void

    .line 371
    :cond_0
    if-nez p1, :cond_1

    if-nez p3, :cond_1

    .line 373
    sub-int v5, v0, p4

    div-int/lit8 v2, v5, 0x2

    .line 374
    .local v2, offset:I
    add-int v5, p5, v2

    aput v5, p7, v6

    .line 375
    aget v5, p7, v6

    add-int/2addr v5, p4

    aput v5, p7, v7

    goto :goto_0

    .line 376
    .end local v2           #offset:I
    :cond_1
    if-nez p1, :cond_2

    .line 378
    invoke-virtual {p3, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v4

    .line 379
    .local v4, option1Pixels:I
    sub-int v5, v0, v4

    sub-int/2addr v5, p4

    aput v5, p7, v6

    .line 380
    sub-int v5, v0, v4

    aput v5, p7, v7

    goto :goto_0

    .line 381
    .end local v4           #option1Pixels:I
    :cond_2
    if-nez p3, :cond_3

    .line 383
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v3

    .line 384
    .local v3, option0Pixels:I
    add-int v5, p5, v3

    aput v5, p7, v6

    .line 385
    add-int v5, p5, v3

    add-int/2addr v5, p4

    aput v5, p7, v7

    goto :goto_0

    .line 388
    .end local v3           #option0Pixels:I
    :cond_3
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, p5

    aput v5, p7, v6

    .line 389
    invoke-virtual {p3, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    sub-int v5, p6, v5

    aput v5, p7, v7

    goto :goto_0
.end method

.method private computeVerticalLayoutPosition(ILorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V
    .locals 3
    .parameter "currentHeight"
    .parameter "optionTop"
    .parameter "optionBottom"
    .parameter "measuredHeight"
    .parameter "layoutTop"
    .parameter "layoutBottom"
    .parameter "pos"

    .prologue
    .line 396
    add-int v1, p5, p1

    .line 397
    .local v1, top:I
    if-eqz p2, :cond_0

    .line 398
    invoke-virtual {p2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 400
    :cond_0
    add-int v0, v1, p4

    .line 401
    .local v0, bottom:I
    const/4 v2, 0x0

    aput v1, p7, v2

    .line 402
    const/4 v2, 0x1

    aput v0, p7, v2

    .line 403
    return-void
.end method

.method private viewToString(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .parameter "view"

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 129
    instance-of v0, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    return v0
.end method

.method protected constrainChild(Landroid/view/View;IIII)V
    .locals 7
    .parameter "child"
    .parameter "width"
    .parameter "wMode"
    .parameter "height"
    .parameter "hMode"

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 243
    .local v3, p:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const/4 v0, -0x2

    .line 244
    .local v0, childDimension:I
    iget-object v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v6, :cond_2

    .line 245
    iget-object v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v6, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v0

    .line 251
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getViewWidthPadding(Landroid/view/View;)I

    move-result v4

    .line 252
    .local v4, widthPadding:I
    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v6, v4, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 253
    .local v5, widthSpec:I
    const/4 v0, -0x2

    .line 254
    iget-object v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v6, :cond_3

    .line 255
    iget-object v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v6, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v0

    .line 262
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getViewHeightPadding(Landroid/view/View;)I

    move-result v1

    .line 263
    .local v1, heightPadding:I
    invoke-static {p4, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v6, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 264
    .local v2, heightSpec:I
    invoke-virtual {p1, v5, v2}, Landroid/view/View;->measure(II)V

    .line 268
    return-void

    .line 247
    .end local v1           #heightPadding:I
    .end local v2           #heightSpec:I
    .end local v4           #widthPadding:I
    .end local v5           #widthSpec:I
    :cond_2
    iget-boolean v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoWidth:Z

    if-eqz v6, :cond_0

    iget-boolean v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isHorizontalArrangement()Z

    move-result v6

    if-nez v6, :cond_0

    .line 248
    const/4 v0, -0x1

    goto :goto_0

    .line 257
    .restart local v4       #widthPadding:I
    .restart local v5       #widthSpec:I
    :cond_3
    iget-boolean v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoHeight:Z

    if-eqz v6, :cond_1

    iget-boolean v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isVerticalArrangement()Z

    move-result v6

    if-nez v6, :cond_1

    .line 258
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->generateDefaultLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 136
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    .line 137
    .local v0, params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput-object v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    .line 138
    iput-object v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    .line 139
    iput-object v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    .line 140
    iput-object v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    .line 141
    const/high16 v1, -0x8000

    iput v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    .line 142
    iput-boolean v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoHeight:Z

    .line 143
    iput-boolean v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoWidth:Z

    .line 144
    return-object v0
.end method

.method protected getHeightMeasureSpec(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 436
    const/high16 v0, 0x4000

    return v0
.end method

.method protected getMeasuredHeight(II)I
    .locals 1
    .parameter "maxHeight"
    .parameter "heightSpec"

    .prologue
    .line 277
    invoke-static {p1, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method protected getMeasuredWidth(II)I
    .locals 1
    .parameter "maxWidth"
    .parameter "widthSpec"

    .prologue
    .line 272
    invoke-static {p1, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method protected getViewHeightPadding(Landroid/view/View;)I
    .locals 3
    .parameter "child"

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 161
    .local v0, p:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const/4 v1, 0x0

    .line 162
    .local v1, padding:I
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 165
    :cond_0
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 168
    :cond_1
    return v1
.end method

.method protected getViewWidthPadding(Landroid/view/View;)I
    .locals 3
    .parameter "child"

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 149
    .local v0, p:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const/4 v1, 0x0

    .line 150
    .local v1, padding:I
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 153
    :cond_0
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 156
    :cond_1
    return v1
.end method

.method protected getWidthMeasureSpec(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 432
    const/high16 v0, 0x4000

    return v0
.end method

.method protected isDefaultArrangement()Z
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isHorizontalArrangement()Z
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVerticalArrangement()Z
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->needsSort:Z

    .line 115
    sget-boolean v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->DBG:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 116
    const-string v0, "TiCompositeLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->needsSort:Z

    .line 122
    sget-boolean v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->DBG:Z

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "TiCompositeLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 38
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 283
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildCount()I

    move-result v29

    .line 285
    .local v29, count:I
    const/16 v19, 0x0

    .line 286
    .local v19, left:I
    const/4 v10, 0x0

    .line 287
    .local v10, top:I
    sub-int v9, p4, p2

    .line 288
    .local v9, right:I
    sub-int v11, p5, p3

    .line 290
    .local v11, bottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->needsSort:Z

    move v5, v0

    if-eqz v5, :cond_2

    .line 291
    const/4 v5, 0x1

    move/from16 v0, v29

    move v1, v5

    if-le v0, v1, :cond_1

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewSorter:Ljava/util/TreeSet;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/TreeSet;->clear()V

    .line 293
    const/16 v31, 0x0

    .local v31, i:I
    :goto_0
    move/from16 v0, v31

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    .line 294
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 295
    .local v28, child:Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 297
    .local v6, params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    move/from16 v0, v31

    move-object v1, v6

    iput v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->index:I

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewSorter:Ljava/util/TreeSet;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 293
    add-int/lit8 v31, v31, 0x1

    goto :goto_0

    .line 301
    .end local v6           #params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .end local v28           #child:Landroid/view/View;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->detachAllViewsFromParent()V

    .line 302
    const/16 v31, 0x0

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewSorter:Ljava/util/TreeSet;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/View;

    .line 304
    .restart local v28       #child:Landroid/view/View;
    add-int/lit8 v32, v31, 0x1

    .end local v31           #i:I
    .local v32, i:I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v31

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move/from16 v31, v32

    .end local v32           #i:I
    .restart local v31       #i:I
    goto :goto_1

    .line 307
    .end local v28           #child:Landroid/view/View;
    .end local v31           #i:I
    .end local v33           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout;->needsSort:Z

    .line 310
    :cond_2
    const/4 v5, 0x2

    new-array v12, v5, [I

    .line 311
    .local v12, horizontal:[I
    const/4 v5, 0x2

    new-array v13, v5, [I

    .line 313
    .local v13, vertical:[I
    const/16 v30, 0x0

    .line 315
    .local v30, currentHeight:I
    const/16 v31, 0x0

    .restart local v31       #i:I
    :goto_2
    move/from16 v0, v31

    move/from16 v1, v29

    if-ge v0, v1, :cond_a

    .line 316
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 317
    .restart local v28       #child:Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 319
    .restart local v6       #params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-eq v5, v7, :cond_7

    .line 321
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 322
    .local v7, childMeasuredWidth:I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 324
    .local v8, childMeasuredHeight:I
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isHorizontalArrangement()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 325
    if-nez v31, :cond_3

    .line 326
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutCurrentLeft:I

    .line 327
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 328
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    :cond_3
    move-object/from16 v5, p0

    .line 330
    invoke-direct/range {v5 .. v13}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computeHorizontalLayoutPosition(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;IIIII[I[I)V

    .line 340
    :goto_3
    sget-boolean v5, Lorg/appcelerator/titanium/view/TiCompositeLayout;->DBG:Z

    if-eqz v5, :cond_4

    .line 341
    const-string v5, "TiCompositeLayout"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " {"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget v15, v12, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget v15, v13, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget v15, v12, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget v15, v13, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_4
    const/4 v5, 0x1

    aget v5, v12, v5

    const/4 v14, 0x0

    aget v14, v12, v14

    sub-int v36, v5, v14

    .line 345
    .local v36, newWidth:I
    const/4 v5, 0x1

    aget v5, v13, v5

    const/4 v14, 0x0

    aget v14, v13, v14

    sub-int v34, v5, v14

    .line 346
    .local v34, newHeight:I
    move/from16 v0, v36

    move v1, v7

    if-ne v0, v1, :cond_5

    move/from16 v0, v34

    move v1, v8

    if-eq v0, v1, :cond_6

    .line 348
    :cond_5
    const/high16 v5, 0x4000

    move/from16 v0, v36

    move v1, v5

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v37

    .line 349
    .local v37, newWidthSpec:I
    const/high16 v5, 0x4000

    move/from16 v0, v34

    move v1, v5

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v35

    .line 350
    .local v35, newHeightSpec:I
    move-object/from16 v0, v28

    move/from16 v1, v37

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 352
    .end local v35           #newHeightSpec:I
    .end local v37           #newWidthSpec:I
    :cond_6
    const/4 v5, 0x0

    aget v5, v12, v5

    const/4 v7, 0x0

    aget v7, v13, v7

    .end local v7           #childMeasuredWidth:I
    const/4 v8, 0x1

    aget v8, v12, v8

    .end local v8           #childMeasuredHeight:I
    const/4 v14, 0x1

    aget v14, v13, v14

    move-object/from16 v0, v28

    move v1, v5

    move v2, v7

    move v3, v8

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 354
    add-int v30, v30, v34

    .line 355
    iget-object v5, v6, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v5, :cond_7

    .line 356
    iget-object v5, v6, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    add-int v30, v30, v5

    .line 315
    .end local v34           #newHeight:I
    .end local v36           #newWidth:I
    :cond_7
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_2

    .line 332
    .restart local v7       #childMeasuredWidth:I
    .restart local v8       #childMeasuredHeight:I
    :cond_8
    iget-object v15, v6, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    move-object v0, v6

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v16, v0

    move-object v0, v6

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v17, v0

    move-object/from16 v14, p0

    move/from16 v18, v7

    move/from16 v20, v9

    move-object/from16 v21, v12

    invoke-static/range {v14 .. v21}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isVerticalArrangement()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 334
    move-object v0, v6

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v22, v0

    move-object v0, v6

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v23, v0

    move-object/from16 v20, p0

    move/from16 v21, v30

    move/from16 v24, v8

    move/from16 v25, v10

    move/from16 v26, v11

    move-object/from16 v27, v13

    invoke-direct/range {v20 .. v27}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computeVerticalLayoutPosition(ILorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    goto/16 :goto_3

    .line 336
    :cond_9
    move-object v0, v6

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v21, v0

    move-object v0, v6

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v22, v0

    move-object v0, v6

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v23, v0

    move-object/from16 v20, p0

    move/from16 v24, v8

    move/from16 v25, v10

    move/from16 v26, v11

    move-object/from16 v27, v13

    invoke-static/range {v20 .. v27}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    goto/16 :goto_3

    .line 360
    .end local v6           #params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .end local v7           #childMeasuredWidth:I
    .end local v8           #childMeasuredHeight:I
    .end local v28           #child:Landroid/view/View;
    :cond_a
    return-void
.end method

.method protected onMeasure(II)V
    .locals 22
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 174
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildCount()I

    move-result v9

    .line 175
    .local v9, childCount:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v20

    .line 176
    .local v20, wFromSpec:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 177
    .local v12, hFromSpec:I
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getSuggestedMinimumWidth()I

    move-result v21

    .line 178
    .local v21, wSuggested:I
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getSuggestedMinimumHeight()I

    move-result v13

    .line 179
    .local v13, hSuggested:I
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 180
    .local v5, w:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 181
    .local v6, wMode:I
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 182
    .local v7, h:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 184
    .local v8, hMode:I
    const/16 v16, 0x0

    .line 185
    .local v16, maxWidth:I
    const/4 v15, 0x0

    .line 187
    .local v15, maxHeight:I
    const/4 v14, 0x0

    .end local v12           #hFromSpec:I
    .local v14, i:I
    :goto_0
    if-ge v14, v9, :cond_6

    .line 188
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 189
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v10, 0x8

    if-eq v3, v10, :cond_0

    move-object/from16 v3, p0

    .line 190
    invoke-virtual/range {v3 .. v8}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->constrainChild(Landroid/view/View;IIII)V

    .line 193
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 194
    .local v11, childWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 195
    .local v10, childHeight:I
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v12, 0x8

    if-eq v3, v12, :cond_1

    .line 196
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getViewWidthPadding(Landroid/view/View;)I

    move-result v3

    add-int/2addr v11, v3

    .line 197
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getViewHeightPadding(Landroid/view/View;)I

    move-result v3

    add-int/2addr v10, v3

    .line 200
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isHorizontalArrangement()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 201
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 202
    .local v19, p:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    add-int v16, v16, v11

    .line 203
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    move-object v3, v0

    if-eqz v3, :cond_2

    .line 204
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v3

    add-int v16, v16, v3

    .line 210
    .end local v19           #p:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isVerticalArrangement()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 211
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 212
    .restart local v19       #p:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    add-int/2addr v15, v10

    .line 213
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    move-object v3, v0

    if-eqz v3, :cond_3

    .line 214
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v3

    add-int/2addr v15, v3

    .line 187
    .end local v19           #p:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_3
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 207
    :cond_4
    move/from16 v0, v16

    move v1, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    goto :goto_1

    .line 217
    :cond_5
    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_2

    .line 222
    .end local v4           #child:Landroid/view/View;
    .end local v10           #childHeight:I
    .end local v11           #childWidth:I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int v16, v16, v3

    .line 223
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 231
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v16

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 232
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 234
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getMeasuredWidth(II)I

    move-result v18

    .line 235
    .local v18, measuredWidth:I
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getMeasuredHeight(II)I

    move-result v17

    .line 236
    .local v17, measuredHeight:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setMeasuredDimension(II)V

    .line 237
    return-void
.end method

.method public setDisableHorizontalWrap(Z)V
    .locals 0
    .parameter "disable"

    .prologue
    .line 493
    iput-boolean p1, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->disableHorizontalWrap:Z

    .line 494
    return-void
.end method

.method public setLayoutArrangement(Ljava/lang/String;)V
    .locals 1
    .parameter "arrangementProperty"

    .prologue
    .line 482
    if-eqz p1, :cond_0

    const-string v0, "horizontal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 489
    :goto_0
    return-void

    .line 484
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "vertical"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto :goto_0

    .line 487
    :cond_1
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto :goto_0
.end method
