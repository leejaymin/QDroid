.class public Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;
.super Landroid/view/animation/Animation;
.source "TiAnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiAnimationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SizeAnimation"
.end annotation


# static fields
.field protected static final LCAT:Ljava/lang/String; = "TiSizeAnimation"


# instance fields
.field protected fromHeight:F

.field protected fromWidth:F

.field final synthetic this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

.field protected toHeight:F

.field protected toWidth:F

.field protected view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder;Landroid/view/View;FFFF)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "fromWidth"
    .parameter "fromHeight"
    .parameter "toWidth"
    .parameter "toHeight"

    .prologue
    const-string v3, "x"

    .line 299
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 300
    iput-object p2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->view:Landroid/view/View;

    .line 301
    iput p3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromWidth:F

    .line 302
    iput p4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromHeight:F

    .line 303
    iput p5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toWidth:F

    .line 304
    iput p6, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toHeight:F

    .line 305
    invoke-static {}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "TiSizeAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animate view from ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 312
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 314
    const/4 v4, 0x0

    .line 315
    .local v4, width:I
    iget v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromWidth:F

    iget v6, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toWidth:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    .line 316
    iget v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromWidth:F

    float-to-int v4, v5

    .line 320
    :goto_0
    const/4 v1, 0x0

    .line 321
    .local v1, height:I
    iget v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromHeight:F

    iget v6, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toHeight:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    .line 322
    iget v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromHeight:F

    float-to-int v1, v5

    .line 327
    :goto_1
    iget-object v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 328
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 329
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 330
    instance-of v5, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    if-eqz v5, :cond_0

    .line 331
    move-object v0, v2

    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v3, v0

    .line 332
    .local v3, tiParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    new-instance v5, Lorg/appcelerator/titanium/TiDimension;

    int-to-double v6, v1

    const/4 v8, 0x7

    invoke-direct {v5, v6, v7, v8}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v5, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 333
    new-instance v5, Lorg/appcelerator/titanium/TiDimension;

    int-to-double v6, v4

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v5, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 335
    .end local v3           #tiParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->view:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    return-void

    .line 318
    .end local v1           #height:I
    .end local v2           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromWidth:F

    iget v6, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toWidth:F

    iget v7, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromWidth:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v4, v5

    goto :goto_0

    .line 324
    .restart local v1       #height:I
    :cond_2
    iget v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromHeight:F

    iget v6, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toHeight:F

    iget v7, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromHeight:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v1, v5

    goto :goto_1
.end method
