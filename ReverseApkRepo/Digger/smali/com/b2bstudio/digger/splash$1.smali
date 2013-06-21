.class final Lcom/b2bstudio/digger/splash$1;
.super Landroid/os/Handler;
.source "splash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b2bstudio/digger/splash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/b2bstudio/digger/splash;


# direct methods
.method constructor <init>(Lcom/b2bstudio/digger/splash;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/b2bstudio/digger/splash$1;->this$0:Lcom/b2bstudio/digger/splash;

    .line 22
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 25
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 30
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 31
    return-void

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/b2bstudio/digger/splash$1;->this$0:Lcom/b2bstudio/digger/splash;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/splash;->showGame()V

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
