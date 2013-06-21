.class final Lutil/ui/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lutil/ui/ClockView;


# direct methods
.method constructor <init>(Lutil/ui/ClockView;)V
    .locals 0

    iput-object p1, p0, Lutil/ui/a;->a:Lutil/ui/ClockView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/16 v6, 0xb

    iget-object v0, p0, Lutil/ui/a;->a:Lutil/ui/ClockView;

    #getter for: Lutil/ui/ClockView;->isRun:Z
    invoke-static {v0}, Lutil/ui/ClockView;->access$0(Lutil/ui/ClockView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lutil/ui/a;->a:Lutil/ui/ClockView;

    #getter for: Lutil/ui/ClockView;->_angle:F
    invoke-static {v2}, Lutil/ui/ClockView;->access$1(Lutil/ui/ClockView;)F

    move-result v3

    const/high16 v4, 0x4040

    add-float/2addr v3, v4

    #setter for: Lutil/ui/ClockView;->_angle:F
    invoke-static {v2, v3}, Lutil/ui/ClockView;->access$2(Lutil/ui/ClockView;F)V

    iget-object v2, p0, Lutil/ui/a;->a:Lutil/ui/ClockView;

    invoke-virtual {v2}, Lutil/ui/ClockView;->invalidate()V

    const-wide/16 v2, 0x64

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    sub-long v0, v2, v0

    iget-object v2, p0, Lutil/ui/a;->a:Lutil/ui/ClockView;

    #getter for: Lutil/ui/ClockView;->updateHander:Landroid/os/Handler;
    invoke-static {v2}, Lutil/ui/ClockView;->access$3(Lutil/ui/ClockView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iput v6, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lutil/ui/a;->a:Lutil/ui/ClockView;

    #getter for: Lutil/ui/ClockView;->updateHander:Landroid/os/Handler;
    invoke-static {v3}, Lutil/ui/ClockView;->access$3(Lutil/ui/ClockView;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lutil/ui/a;->a:Lutil/ui/ClockView;

    #getter for: Lutil/ui/ClockView;->updateHander:Landroid/os/Handler;
    invoke-static {v0}, Lutil/ui/ClockView;->access$3(Lutil/ui/ClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method
