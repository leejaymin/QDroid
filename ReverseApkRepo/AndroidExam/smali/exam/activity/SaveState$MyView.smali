.class public Lexam/activity/SaveState$MyView;
.super Landroid/view/View;
.source "SaveState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/activity/SaveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/activity/SaveState;


# direct methods
.method public constructor <init>(Lexam/activity/SaveState;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 25
    iput-object p1, p0, Lexam/activity/SaveState$MyView;->this$0:Lexam/activity/SaveState;

    .line 26
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 31
    .local v0, p:Landroid/graphics/Paint;
    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v1, p0, Lexam/activity/SaveState$MyView;->this$0:Lexam/activity/SaveState;

    iget v1, v1, Lexam/activity/SaveState;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lexam/activity/SaveState$MyView;->this$0:Lexam/activity/SaveState;

    iget v2, v2, Lexam/activity/SaveState;->y:I

    int-to-float v2, v2

    const/high16 v3, 0x4180

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 33
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "KeyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 36
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 37
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 38
    packed-switch p1, :pswitch_data_0

    .line 57
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 40
    :pswitch_0
    iget-object v1, p0, Lexam/activity/SaveState$MyView;->this$0:Lexam/activity/SaveState;

    iget v2, v1, Lexam/activity/SaveState;->x:I

    add-int/lit8 v2, v2, -0x5

    iput v2, v1, Lexam/activity/SaveState;->x:I

    .line 41
    invoke-virtual {p0}, Lexam/activity/SaveState$MyView;->invalidate()V

    goto :goto_0

    .line 44
    :pswitch_1
    iget-object v1, p0, Lexam/activity/SaveState$MyView;->this$0:Lexam/activity/SaveState;

    iget v2, v1, Lexam/activity/SaveState;->x:I

    add-int/lit8 v2, v2, 0x5

    iput v2, v1, Lexam/activity/SaveState;->x:I

    .line 45
    invoke-virtual {p0}, Lexam/activity/SaveState$MyView;->invalidate()V

    goto :goto_0

    .line 48
    :pswitch_2
    iget-object v1, p0, Lexam/activity/SaveState$MyView;->this$0:Lexam/activity/SaveState;

    iget v2, v1, Lexam/activity/SaveState;->y:I

    add-int/lit8 v2, v2, -0x5

    iput v2, v1, Lexam/activity/SaveState;->y:I

    .line 49
    invoke-virtual {p0}, Lexam/activity/SaveState$MyView;->invalidate()V

    goto :goto_0

    .line 52
    :pswitch_3
    iget-object v1, p0, Lexam/activity/SaveState$MyView;->this$0:Lexam/activity/SaveState;

    iget v2, v1, Lexam/activity/SaveState;->y:I

    add-int/lit8 v2, v2, 0x5

    iput v2, v1, Lexam/activity/SaveState;->y:I

    .line 53
    invoke-virtual {p0}, Lexam/activity/SaveState$MyView;->invalidate()V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
