.class public Lexam/Input/MoveCircle$MyView;
.super Landroid/view/View;
.source "MoveCircle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Input/MoveCircle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field mColor:I

.field mX:F

.field mY:F

.field final synthetic this$0:Lexam/Input/MoveCircle;


# direct methods
.method public constructor <init>(Lexam/Input/MoveCircle;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    const/high16 v0, 0x42c8

    .line 24
    iput-object p1, p0, Lexam/Input/MoveCircle$MyView;->this$0:Lexam/Input/MoveCircle;

    .line 25
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    iput v0, p0, Lexam/Input/MoveCircle$MyView;->mX:F

    .line 27
    iput v0, p0, Lexam/Input/MoveCircle$MyView;->mY:F

    .line 28
    const v0, -0xffff01

    iput v0, p0, Lexam/Input/MoveCircle$MyView;->mColor:I

    .line 29
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 33
    .local v0, Pnt:Landroid/graphics/Paint;
    const v1, -0x1f1f20

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 34
    iget v1, p0, Lexam/Input/MoveCircle$MyView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    iget v1, p0, Lexam/Input/MoveCircle$MyView;->mX:F

    iget v2, p0, Lexam/Input/MoveCircle$MyView;->mY:F

    const/high16 v3, 0x4180

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 37
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "KeyCode"
    .parameter "event"

    .prologue
    const v3, -0xffff01

    const/high16 v2, 0x40a0

    const/4 v0, 0x1

    .line 40
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 41
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 42
    packed-switch p1, :pswitch_data_0

    .line 69
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 44
    :pswitch_0
    iget v1, p0, Lexam/Input/MoveCircle$MyView;->mX:F

    sub-float/2addr v1, v2

    iput v1, p0, Lexam/Input/MoveCircle$MyView;->mX:F

    .line 45
    invoke-virtual {p0}, Lexam/Input/MoveCircle$MyView;->invalidate()V

    goto :goto_0

    .line 48
    :pswitch_1
    iget v1, p0, Lexam/Input/MoveCircle$MyView;->mX:F

    add-float/2addr v1, v2

    iput v1, p0, Lexam/Input/MoveCircle$MyView;->mX:F

    .line 49
    invoke-virtual {p0}, Lexam/Input/MoveCircle$MyView;->invalidate()V

    goto :goto_0

    .line 52
    :pswitch_2
    iget v1, p0, Lexam/Input/MoveCircle$MyView;->mY:F

    sub-float/2addr v1, v2

    iput v1, p0, Lexam/Input/MoveCircle$MyView;->mY:F

    .line 53
    invoke-virtual {p0}, Lexam/Input/MoveCircle$MyView;->invalidate()V

    goto :goto_0

    .line 56
    :pswitch_3
    iget v1, p0, Lexam/Input/MoveCircle$MyView;->mY:F

    add-float/2addr v1, v2

    iput v1, p0, Lexam/Input/MoveCircle$MyView;->mY:F

    .line 57
    invoke-virtual {p0}, Lexam/Input/MoveCircle$MyView;->invalidate()V

    goto :goto_0

    .line 60
    :pswitch_4
    iget v1, p0, Lexam/Input/MoveCircle$MyView;->mColor:I

    if-ne v1, v3, :cond_1

    .line 61
    const/high16 v1, -0x1

    iput v1, p0, Lexam/Input/MoveCircle$MyView;->mColor:I

    .line 65
    :goto_1
    invoke-virtual {p0}, Lexam/Input/MoveCircle$MyView;->invalidate()V

    goto :goto_0

    .line 63
    :cond_1
    iput v3, p0, Lexam/Input/MoveCircle$MyView;->mColor:I

    goto :goto_1

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
