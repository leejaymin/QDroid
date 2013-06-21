.class public Lexam/activity/SaveState2$MyView;
.super Landroid/view/View;
.source "SaveState2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/activity/SaveState2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/activity/SaveState2;


# direct methods
.method public constructor <init>(Lexam/activity/SaveState2;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 39
    iput-object p1, p0, Lexam/activity/SaveState2$MyView;->this$0:Lexam/activity/SaveState2;

    .line 40
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 45
    .local v0, p:Landroid/graphics/Paint;
    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v1, p0, Lexam/activity/SaveState2$MyView;->this$0:Lexam/activity/SaveState2;

    iget v1, v1, Lexam/activity/SaveState2;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lexam/activity/SaveState2$MyView;->this$0:Lexam/activity/SaveState2;

    iget v2, v2, Lexam/activity/SaveState2;->y:I

    int-to-float v2, v2

    const/high16 v3, 0x4180

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 47
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "KeyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 50
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 51
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 52
    packed-switch p1, :pswitch_data_0

    .line 71
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 54
    :pswitch_0
    iget-object v1, p0, Lexam/activity/SaveState2$MyView;->this$0:Lexam/activity/SaveState2;

    iget v2, v1, Lexam/activity/SaveState2;->x:I

    add-int/lit8 v2, v2, -0x5

    iput v2, v1, Lexam/activity/SaveState2;->x:I

    .line 55
    invoke-virtual {p0}, Lexam/activity/SaveState2$MyView;->invalidate()V

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v1, p0, Lexam/activity/SaveState2$MyView;->this$0:Lexam/activity/SaveState2;

    iget v2, v1, Lexam/activity/SaveState2;->x:I

    add-int/lit8 v2, v2, 0x5

    iput v2, v1, Lexam/activity/SaveState2;->x:I

    .line 59
    invoke-virtual {p0}, Lexam/activity/SaveState2$MyView;->invalidate()V

    goto :goto_0

    .line 62
    :pswitch_2
    iget-object v1, p0, Lexam/activity/SaveState2$MyView;->this$0:Lexam/activity/SaveState2;

    iget v2, v1, Lexam/activity/SaveState2;->y:I

    add-int/lit8 v2, v2, -0x5

    iput v2, v1, Lexam/activity/SaveState2;->y:I

    .line 63
    invoke-virtual {p0}, Lexam/activity/SaveState2$MyView;->invalidate()V

    goto :goto_0

    .line 66
    :pswitch_3
    iget-object v1, p0, Lexam/activity/SaveState2$MyView;->this$0:Lexam/activity/SaveState2;

    iget v2, v1, Lexam/activity/SaveState2;->y:I

    add-int/lit8 v2, v2, 0x5

    iput v2, v1, Lexam/activity/SaveState2;->y:I

    .line 67
    invoke-virtual {p0}, Lexam/activity/SaveState2$MyView;->invalidate()V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
