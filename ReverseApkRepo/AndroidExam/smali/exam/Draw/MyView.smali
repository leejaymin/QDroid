.class Lexam/Draw/MyView;
.super Landroid/view/View;
.source "Reflection.java"


# static fields
.field static final DELAY:I = 0x32

.field static final RAD:I = 0x18


# instance fields
.field arBall:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lexam/Draw/Ball;",
            ">;"
        }
    .end annotation
.end field

.field mBack:Landroid/graphics/Bitmap;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lexam/Draw/MyView;->arBall:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Lexam/Draw/MyView$1;

    invoke-direct {v0, p0}, Lexam/Draw/MyView$1;-><init>(Lexam/Draw/MyView;)V

    iput-object v0, p0, Lexam/Draw/MyView;->mHandler:Landroid/os/Handler;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020010

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lexam/Draw/MyView;->mBack:Landroid/graphics/Bitmap;

    .line 89
    iget-object v0, p0, Lexam/Draw/MyView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 90
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-object v1, p0, Lexam/Draw/MyView;->mBack:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 106
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    iget-object v1, p0, Lexam/Draw/MyView;->arBall:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 109
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lexam/Draw/MyView;->arBall:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexam/Draw/Ball;

    invoke-virtual {v1, p1}, Lexam/Draw/Ball;->Draw(Landroid/graphics/Canvas;)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0x18

    invoke-static {v1, v2, v3}, Lexam/Draw/Ball;->Create(III)Lexam/Draw/Ball;

    move-result-object v0

    .line 96
    .local v0, NewBall:Lexam/Draw/Ball;
    iget-object v1, p0, Lexam/Draw/MyView;->arBall:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p0}, Lexam/Draw/MyView;->invalidate()V

    .line 98
    const/4 v1, 0x1

    .line 100
    .end local v0           #NewBall:Lexam/Draw/Ball;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
