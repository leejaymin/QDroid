.class public Lcom/b2bstudio/digger/splash;
.super Landroid/app/Activity;
.source "splash.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final SPLASHTIME:J = 0xbb8L

.field private static final STOPSPLASH:I


# instance fields
.field private gamer:Lcom/b2bstudio/digger/gamer;

.field private splashHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    new-instance v0, Lcom/b2bstudio/digger/splash$1;

    invoke-direct {v0, p0}, Lcom/b2bstudio/digger/splash$1;-><init>(Lcom/b2bstudio/digger/splash;)V

    iput-object v0, p0, Lcom/b2bstudio/digger/splash;->splashHandler:Landroid/os/Handler;

    .line 17
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/b2bstudio/digger/splash;->setContentView(I)V

    .line 48
    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/b2bstudio/digger/splash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 49
    .local v0, layMain:Landroid/widget/FrameLayout;
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 52
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 53
    iget-object v2, p0, Lcom/b2bstudio/digger/splash;->splashHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b2bstudio/digger/splash;->gamer:Lcom/b2bstudio/digger/gamer;

    .line 105
    iget-object v0, p0, Lcom/b2bstudio/digger/splash;->splashHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/b2bstudio/digger/splash;->splashHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 58
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 59
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    const-string v1, "Do you want to continue playing ?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 61
    const-string v1, "Quit"

    new-instance v2, Lcom/b2bstudio/digger/splash$2;

    invoke-direct {v2, p0}, Lcom/b2bstudio/digger/splash$2;-><init>(Lcom/b2bstudio/digger/splash;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 67
    const-string v1, "Resume"

    new-instance v2, Lcom/b2bstudio/digger/splash$3;

    invoke-direct {v2, p0}, Lcom/b2bstudio/digger/splash$3;-><init>(Lcom/b2bstudio/digger/splash;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 75
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 112
    iget-object v0, p0, Lcom/b2bstudio/digger/splash;->splashHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/b2bstudio/digger/splash;->splashHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 93
    :pswitch_1
    invoke-virtual {p0}, Lcom/b2bstudio/digger/splash;->showGame()V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showGame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/b2bstudio/digger/splash;->setContentView(I)V

    .line 36
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/b2bstudio/digger/splash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/b2bstudio/digger/gamer;

    iput-object v0, p0, Lcom/b2bstudio/digger/splash;->gamer:Lcom/b2bstudio/digger/gamer;

    .line 37
    iget-object v0, p0, Lcom/b2bstudio/digger/splash;->gamer:Lcom/b2bstudio/digger/gamer;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/gamer;->bringToFront()V

    .line 39
    iget-object v0, p0, Lcom/b2bstudio/digger/splash;->splashHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/b2bstudio/digger/splash;->splashHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 41
    :cond_0
    return-void
.end method
