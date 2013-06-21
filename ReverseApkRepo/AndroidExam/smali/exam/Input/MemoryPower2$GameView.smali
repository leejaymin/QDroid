.class Lexam/Input/MemoryPower2$GameView;
.super Landroid/view/View;
.source "MemoryPower2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Input/MemoryPower2;
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
            "Lexam/Input/MemoryPower2$Shape;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field mParent:Landroid/app/Activity;

.field status:I

.field final synthetic this$0:Lexam/Input/MemoryPower2;


# direct methods
.method public constructor <init>(Lexam/Input/MemoryPower2;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 49
    iput-object p1, p0, Lexam/Input/MemoryPower2$GameView;->this$0:Lexam/Input/MemoryPower2;

    .line 50
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lexam/Input/MemoryPower2$GameView;->arShape:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lexam/Input/MemoryPower2$GameView;->Rnd:Ljava/util/Random;

    .line 204
    new-instance v0, Lexam/Input/MemoryPower2$GameView$1;

    invoke-direct {v0, p0}, Lexam/Input/MemoryPower2$GameView$1;-><init>(Lexam/Input/MemoryPower2$GameView;)V

    iput-object v0, p0, Lexam/Input/MemoryPower2$GameView;->mHandler:Landroid/os/Handler;

    .line 51
    check-cast p2, Landroid/app/Activity;

    .end local p2
    iput-object p2, p0, Lexam/Input/MemoryPower2$GameView;->mParent:Landroid/app/Activity;

    .line 53
    iput v3, p0, Lexam/Input/MemoryPower2$GameView;->status:I

    .line 54
    iget-object v0, p0, Lexam/Input/MemoryPower2$GameView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 55
    return-void
.end method


# virtual methods
.method AddNewShape()V
    .locals 8

    .prologue
    .line 130
    new-instance v4, Lexam/Input/MemoryPower2$Shape;

    iget-object v5, p0, Lexam/Input/MemoryPower2$GameView;->this$0:Lexam/Input/MemoryPower2;

    invoke-direct {v4, v5}, Lexam/Input/MemoryPower2$Shape;-><init>(Lexam/Input/MemoryPower2;)V

    .line 133
    .local v4, shape:Lexam/Input/MemoryPower2$Shape;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 138
    .local v3, rt:Landroid/graphics/Rect;
    :cond_0
    iget-object v5, p0, Lexam/Input/MemoryPower2$GameView;->Rnd:Ljava/util/Random;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x10

    add-int/lit8 v0, v5, 0x20

    .line 141
    .local v0, Size:I
    iget-object v5, p0, Lexam/Input/MemoryPower2$GameView;->Rnd:Ljava/util/Random;

    invoke-virtual {p0}, Lexam/Input/MemoryPower2$GameView;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 142
    iget-object v5, p0, Lexam/Input/MemoryPower2$GameView;->Rnd:Ljava/util/Random;

    invoke-virtual {p0}, Lexam/Input/MemoryPower2$GameView;->getHeight()I

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

    invoke-virtual {p0}, Lexam/Input/MemoryPower2$GameView;->getWidth()I

    move-result v6

    if-gt v5, v6, :cond_0

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lexam/Input/MemoryPower2$GameView;->getHeight()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, bFindIntersect:Z
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_0
    iget-object v5, p0, Lexam/Input/MemoryPower2$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 160
    if-nez v1, :cond_0

    .line 166
    iget-object v5, p0, Lexam/Input/MemoryPower2$GameView;->Rnd:Ljava/util/Random;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iput v5, v4, Lexam/Input/MemoryPower2$Shape;->what:I

    .line 168
    iget-object v5, p0, Lexam/Input/MemoryPower2$GameView;->Rnd:Ljava/util/Random;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 186
    :goto_1
    iput-object v3, v4, Lexam/Input/MemoryPower2$Shape;->rt:Landroid/graphics/Rect;

    .line 187
    iget-object v5, p0, Lexam/Input/MemoryPower2$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    const-string v5, "MemoryPower"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "New Shpae : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v4, Lexam/Input/MemoryPower2$Shape;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lexam/Input/MemoryPower2$Shape;->rt:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void

    .line 154
    :cond_1
    iget-object v5, p0, Lexam/Input/MemoryPower2$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexam/Input/MemoryPower2$Shape;

    iget-object v5, v5, Lexam/Input/MemoryPower2$Shape;->rt:Landroid/graphics/Rect;

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

    iput v5, v4, Lexam/Input/MemoryPower2$Shape;->color:I

    goto :goto_1

    .line 173
    :pswitch_1
    const/high16 v5, -0x1

    iput v5, v4, Lexam/Input/MemoryPower2$Shape;->color:I

    goto :goto_1

    .line 176
    :pswitch_2
    const v5, -0xff0100

    iput v5, v4, Lexam/Input/MemoryPower2$Shape;->color:I

    goto :goto_1

    .line 179
    :pswitch_3
    const v5, -0xffff01

    iput v5, v4, Lexam/Input/MemoryPower2$Shape;->color:I

    goto :goto_1

    .line 182
    :pswitch_4
    const/16 v5, -0x100

    iput v5, v4, Lexam/Input/MemoryPower2$Shape;->color:I

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
    .line 195
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    iget-object v1, p0, Lexam/Input/MemoryPower2$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 200
    const/4 v0, -0x1

    .end local v0           #idx:I
    :cond_0
    return v0

    .line 196
    .restart local v0       #idx:I
    :cond_1
    iget-object v1, p0, Lexam/Input/MemoryPower2$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexam/Input/MemoryPower2$Shape;

    iget-object v1, v1, Lexam/Input/MemoryPower2$Shape;->rt:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 59
    const/high16 v4, -0x100

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 60
    iget v4, p0, Lexam/Input/MemoryPower2$GameView;->status:I

    if-nez v4, :cond_1

    .line 88
    :cond_0
    return-void

    .line 66
    :cond_1
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_0
    iget-object v4, p0, Lexam/Input/MemoryPower2$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 68
    .local v0, Pnt:Landroid/graphics/Paint;
    iget-object v4, p0, Lexam/Input/MemoryPower2$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexam/Input/MemoryPower2$Shape;

    iget v4, v4, Lexam/Input/MemoryPower2$Shape;->color:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v4, p0, Lexam/Input/MemoryPower2$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexam/Input/MemoryPower2$Shape;

    iget-object v3, v4, Lexam/Input/MemoryPower2$Shape;->rt:Landroid/graphics/Rect;

    .line 71
    .local v3, rt:Landroid/graphics/Rect;
    iget-object v4, p0, Lexam/Input/MemoryPower2$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexam/Input/MemoryPower2$Shape;

    iget v4, v4, Lexam/Input/MemoryPower2$Shape;->what:I

    packed-switch v4, :pswitch_data_0

    .line 66
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :pswitch_0
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 76
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

    .line 77
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    .line 76
    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 80
    :pswitch_2
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 81
    .local v2, path:Landroid/graphics/Path;
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 82
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 83
    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 84
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lexam/Input/MemoryPower2$GameView;->FindShapeIdx(II)I

    move-result v0

    .line 97
    .local v0, sel:I
    iget-object v2, p0, Lexam/Input/MemoryPower2$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    .line 98
    const-string v2, "MemoryPower"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Hit Last Shape : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput v1, p0, Lexam/Input/MemoryPower2$GameView;->status:I

    .line 100
    invoke-virtual {p0}, Lexam/Input/MemoryPower2$GameView;->invalidate()V

    .line 101
    iget-object v2, p0, Lexam/Input/MemoryPower2$GameView;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 123
    :goto_0
    const/4 v1, 0x1

    .line 125
    .end local v0           #sel:I
    :cond_0
    return v1

    .line 104
    .restart local v0       #sel:I
    :cond_1
    const-string v1, "MemoryPower"

    const-string v2, "Hit Wrong Shape"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lexam/Input/MemoryPower2$GameView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    const-string v2, "\uc7ac\ubbf8\uc788\uc9c0! \ub610 \ud560\ub798?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 107
    const-string v2, "\uac8c\uc784 \ub05d"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 108
    const-string v2, "\ud568\ub354"

    new-instance v3, Lexam/Input/MemoryPower2$GameView$2;

    invoke-direct {v3, p0}, Lexam/Input/MemoryPower2$GameView$2;-><init>(Lexam/Input/MemoryPower2$GameView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 116
    const-string v2, "\uc548\ud574"

    new-instance v3, Lexam/Input/MemoryPower2$GameView$3;

    invoke-direct {v3, p0}, Lexam/Input/MemoryPower2$GameView$3;-><init>(Lexam/Input/MemoryPower2$GameView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
