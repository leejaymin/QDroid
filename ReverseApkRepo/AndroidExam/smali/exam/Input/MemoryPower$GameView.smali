.class Lexam/Input/MemoryPower$GameView;
.super Landroid/view/View;
.source "MemoryPower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Input/MemoryPower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GameView"
.end annotation


# static fields
.field static final BLANK:I = 0x0

.field static final DELAY:I = 0x5dc

.field static final PLAY:I = 0x1


# instance fields
.field Rnd:Ljava/util/Random;

.field arShape:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lexam/Input/MemoryPower$Shape;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field mParent:Landroid/app/Activity;

.field status:I

.field final synthetic this$0:Lexam/Input/MemoryPower;


# direct methods
.method public constructor <init>(Lexam/Input/MemoryPower;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 46
    iput-object p1, p0, Lexam/Input/MemoryPower$GameView;->this$0:Lexam/Input/MemoryPower;

    .line 47
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lexam/Input/MemoryPower$GameView;->arShape:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lexam/Input/MemoryPower$GameView;->Rnd:Ljava/util/Random;

    .line 203
    new-instance v0, Lexam/Input/MemoryPower$GameView$1;

    invoke-direct {v0, p0}, Lexam/Input/MemoryPower$GameView$1;-><init>(Lexam/Input/MemoryPower$GameView;)V

    iput-object v0, p0, Lexam/Input/MemoryPower$GameView;->mHandler:Landroid/os/Handler;

    .line 48
    check-cast p2, Landroid/app/Activity;

    .end local p2
    iput-object p2, p0, Lexam/Input/MemoryPower$GameView;->mParent:Landroid/app/Activity;

    .line 50
    iput v3, p0, Lexam/Input/MemoryPower$GameView;->status:I

    .line 51
    iget-object v0, p0, Lexam/Input/MemoryPower$GameView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 52
    return-void
.end method


# virtual methods
.method AddNewShape()V
    .locals 7

    .prologue
    .line 130
    new-instance v4, Lexam/Input/MemoryPower$Shape;

    iget-object v5, p0, Lexam/Input/MemoryPower$GameView;->this$0:Lexam/Input/MemoryPower;

    invoke-direct {v4, v5}, Lexam/Input/MemoryPower$Shape;-><init>(Lexam/Input/MemoryPower;)V

    .line 133
    .local v4, shape:Lexam/Input/MemoryPower$Shape;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 138
    .local v3, rt:Landroid/graphics/Rect;
    :cond_0
    iget-object v5, p0, Lexam/Input/MemoryPower$GameView;->Rnd:Ljava/util/Random;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x10

    add-int/lit8 v0, v5, 0x20

    .line 141
    .local v0, Size:I
    iget-object v5, p0, Lexam/Input/MemoryPower$GameView;->Rnd:Ljava/util/Random;

    invoke-virtual {p0}, Lexam/Input/MemoryPower$GameView;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 142
    iget-object v5, p0, Lexam/Input/MemoryPower$GameView;->Rnd:Ljava/util/Random;

    invoke-virtual {p0}, Lexam/Input/MemoryPower$GameView;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 143
    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 144
    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 147
    iget v5, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lexam/Input/MemoryPower$GameView;->getWidth()I

    move-result v6

    if-gt v5, v6, :cond_0

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lexam/Input/MemoryPower$GameView;->getHeight()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, bFindIntersect:Z
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_0
    iget-object v5, p0, Lexam/Input/MemoryPower$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 160
    if-nez v1, :cond_0

    .line 166
    iget-object v5, p0, Lexam/Input/MemoryPower$GameView;->Rnd:Ljava/util/Random;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iput v5, v4, Lexam/Input/MemoryPower$Shape;->what:I

    .line 168
    iget-object v5, p0, Lexam/Input/MemoryPower$GameView;->Rnd:Ljava/util/Random;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 186
    :goto_1
    iput-object v3, v4, Lexam/Input/MemoryPower$Shape;->rt:Landroid/graphics/Rect;

    .line 187
    iget-object v5, p0, Lexam/Input/MemoryPower$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    return-void

    .line 154
    :cond_1
    iget-object v5, p0, Lexam/Input/MemoryPower$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexam/Input/MemoryPower$Shape;

    iget-object v5, v5, Lexam/Input/MemoryPower$Shape;->rt:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 155
    const/4 v1, 0x1

    .line 153
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :pswitch_0
    const/4 v5, -0x1

    iput v5, v4, Lexam/Input/MemoryPower$Shape;->color:I

    goto :goto_1

    .line 173
    :pswitch_1
    const/high16 v5, -0x1

    iput v5, v4, Lexam/Input/MemoryPower$Shape;->color:I

    goto :goto_1

    .line 176
    :pswitch_2
    const v5, -0xff0100

    iput v5, v4, Lexam/Input/MemoryPower$Shape;->color:I

    goto :goto_1

    .line 179
    :pswitch_3
    const v5, -0xffff01

    iput v5, v4, Lexam/Input/MemoryPower$Shape;->color:I

    goto :goto_1

    .line 182
    :pswitch_4
    const/16 v5, -0x100

    iput v5, v4, Lexam/Input/MemoryPower$Shape;->color:I

    goto :goto_1

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method FindShapeIdx(II)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 194
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    iget-object v1, p0, Lexam/Input/MemoryPower$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 199
    const/4 v0, -0x1

    .end local v0           #idx:I
    :cond_0
    return v0

    .line 195
    .restart local v0       #idx:I
    :cond_1
    iget-object v1, p0, Lexam/Input/MemoryPower$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexam/Input/MemoryPower$Shape;

    iget-object v1, v1, Lexam/Input/MemoryPower$Shape;->rt:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 56
    const/high16 v4, -0x100

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 57
    iget v4, p0, Lexam/Input/MemoryPower$GameView;->status:I

    if-nez v4, :cond_1

    .line 85
    :cond_0
    return-void

    .line 63
    :cond_1
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_0
    iget-object v4, p0, Lexam/Input/MemoryPower$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 65
    .local v0, Pnt:Landroid/graphics/Paint;
    iget-object v4, p0, Lexam/Input/MemoryPower$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexam/Input/MemoryPower$Shape;

    iget v4, v4, Lexam/Input/MemoryPower$Shape;->color:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v4, p0, Lexam/Input/MemoryPower$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexam/Input/MemoryPower$Shape;

    iget-object v3, v4, Lexam/Input/MemoryPower$Shape;->rt:Landroid/graphics/Rect;

    .line 68
    .local v3, rt:Landroid/graphics/Rect;
    iget-object v4, p0, Lexam/Input/MemoryPower$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexam/Input/MemoryPower$Shape;

    iget v4, v4, Lexam/Input/MemoryPower$Shape;->what:I

    packed-switch v4, :pswitch_data_0

    .line 63
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :pswitch_0
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 73
    :pswitch_1
    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 74
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    .line 73
    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 77
    :pswitch_2
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 78
    .local v2, path:Landroid/graphics/Path;
    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 79
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 80
    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 81
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Lexam/Input/MemoryPower$GameView;->FindShapeIdx(II)I

    move-result v0

    .line 93
    .local v0, sel:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 125
    .end local v0           #sel:I
    :goto_0
    return v1

    .line 99
    .restart local v0       #sel:I
    :cond_0
    iget-object v3, p0, Lexam/Input/MemoryPower$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_1

    .line 100
    iput v2, p0, Lexam/Input/MemoryPower$GameView;->status:I

    .line 101
    invoke-virtual {p0}, Lexam/Input/MemoryPower$GameView;->invalidate()V

    .line 102
    iget-object v3, p0, Lexam/Input/MemoryPower$GameView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 105
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lexam/Input/MemoryPower$GameView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    const-string v3, "\uc7ac\ubbf8\uc788\uc9c0! \ub610 \ud560\ub798?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 107
    const-string v3, "\uac8c\uc784 \ub05d"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 108
    const-string v3, "\ud568\ub354"

    new-instance v4, Lexam/Input/MemoryPower$GameView$2;

    invoke-direct {v4, p0}, Lexam/Input/MemoryPower$GameView$2;-><init>(Lexam/Input/MemoryPower$GameView;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 116
    const-string v3, "\uc548\ud574"

    new-instance v4, Lexam/Input/MemoryPower$GameView$3;

    invoke-direct {v4, p0}, Lexam/Input/MemoryPower$GameView$3;-><init>(Lexam/Input/MemoryPower$GameView;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .end local v0           #sel:I
    :cond_2
    move v1, v2

    .line 125
    goto :goto_0
.end method
