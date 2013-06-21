.class final Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;
.super Landroid/view/View;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/devtools/simple/runtime/components/android/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CanvasView"
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final canvas:Landroid/graphics/Canvas;

.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/Canvas;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/Canvas;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->this$0:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    .line 272
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 274
    invoke-virtual {p2}, Landroid/content/Context;->getWallpaperDesiredMinimumWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/content/Context;->getWallpaperDesiredMinimumHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 277
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    .line 278
    return-void
.end method

.method static synthetic access$400(Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;)Landroid/graphics/Canvas;
    .locals 1
    .parameter "x0"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method private getSize(II)I
    .locals 4
    .parameter "measureSpec"
    .parameter "preferredSize"

    .prologue
    .line 307
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 308
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 310
    .local v2, specSize:I
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_1

    .line 312
    move v0, v2

    .line 322
    .local v0, result:I
    :cond_0
    :goto_0
    return v0

    .line 315
    .end local v0           #result:I
    :cond_1
    move v0, p2

    .line 316
    .restart local v0       #result:I
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_0

    .line 318
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas0"

    .prologue
    const/4 v4, 0x0

    .line 282
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 283
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 284
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->this$0:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Canvas;->sprites:Ljava/util/List;
    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->access$000(Lcom/google/devtools/simple/runtime/components/android/Canvas;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/devtools/simple/runtime/components/android/Sprite;

    .line 285
    .local v1, sprite:Lcom/google/devtools/simple/runtime/components/android/Sprite;
    invoke-virtual {v1, p1}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 287
    .end local v1           #sprite:Lcom/google/devtools/simple/runtime/components/android/Sprite;
    :cond_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->this$0:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    const/4 v3, 0x1

    #setter for: Lcom/google/devtools/simple/runtime/components/android/Canvas;->drawn:Z
    invoke-static {v2, v3}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->access$102(Lcom/google/devtools/simple/runtime/components/android/Canvas;Z)Z

    .line 288
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 294
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->this$0:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Canvas;->backgroundDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->access$200(Lcom/google/devtools/simple/runtime/components/android/Canvas;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->this$0:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Canvas;->backgroundDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->access$200(Lcom/google/devtools/simple/runtime/components/android/Canvas;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 296
    .local v1, preferredWidth:I
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->this$0:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Canvas;->backgroundDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->access$200(Lcom/google/devtools/simple/runtime/components/android/Canvas;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 301
    .local v0, preferredHeight:I
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->getSize(II)I

    move-result v2

    invoke-direct {p0, p2, v0}, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->getSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->setMeasuredDimension(II)V

    .line 303
    return-void

    .line 298
    .end local v0           #preferredHeight:I
    .end local v1           #preferredWidth:I
    :cond_0
    const/16 v1, 0x20

    .line 299
    .restart local v1       #preferredWidth:I
    const/16 v0, 0x30

    .restart local v0       #preferredHeight:I
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->this$0:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v0}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/Form;->dontGrabTouchEventsForComponent()V

    .line 333
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->this$0:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Canvas;->motionEventParser:Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->access$300(Lcom/google/devtools/simple/runtime/components/android/Canvas;)Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->parse(Landroid/view/MotionEvent;)V

    .line 334
    const/4 v0, 0x1

    return v0
.end method
