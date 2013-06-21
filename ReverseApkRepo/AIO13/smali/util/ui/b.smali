.class final Lutil/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lutil/ui/ClockView;


# direct methods
.method constructor <init>(Lutil/ui/ClockView;)V
    .locals 0

    iput-object p1, p0, Lutil/ui/b;->a:Lutil/ui/ClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lutil/ui/b;->a:Lutil/ui/ClockView;

    #getter for: Lutil/ui/ClockView;->isRun:Z
    invoke-static {v0}, Lutil/ui/ClockView;->access$0(Lutil/ui/ClockView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lutil/ui/b;->a:Lutil/ui/ClockView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lutil/ui/ClockView;->lastTime:J

    iget-object v0, p0, Lutil/ui/b;->a:Lutil/ui/ClockView;

    #getter for: Lutil/ui/ClockView;->_angle:F
    invoke-static {v0}, Lutil/ui/ClockView;->access$1(Lutil/ui/ClockView;)F

    move-result v1

    const/high16 v2, 0x40a0

    add-float/2addr v1, v2

    #setter for: Lutil/ui/ClockView;->_angle:F
    invoke-static {v0, v1}, Lutil/ui/ClockView;->access$2(Lutil/ui/ClockView;F)V

    iget-object v0, p0, Lutil/ui/b;->a:Lutil/ui/ClockView;

    invoke-virtual {v0}, Lutil/ui/ClockView;->postInvalidate()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lutil/ui/b;->a:Lutil/ui/ClockView;

    iget-wide v2, v2, Lutil/ui/ClockView;->lastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5

    add-long/2addr v0, v2

    iget-object v2, p0, Lutil/ui/b;->a:Lutil/ui/ClockView;

    #getter for: Lutil/ui/ClockView;->_ticker:Landroid/os/Handler;
    invoke-static {v2}, Lutil/ui/ClockView;->access$4(Lutil/ui/ClockView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lutil/ui/b;->a:Lutil/ui/ClockView;

    #getter for: Lutil/ui/ClockView;->tickRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lutil/ui/ClockView;->access$5(Lutil/ui/ClockView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
