.class Lcom/ui/LapseIt/capture/CaptureView$4;
.super Ljava/lang/Object;
.source "CaptureView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/capture/CaptureView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/capture/CaptureView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/CaptureView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureView$4;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 162
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView$4;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v1, v1, Lcom/ui/LapseIt/capture/CaptureView;->schedule:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView$4;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v1, v1, Lcom/ui/LapseIt/capture/CaptureView;->schedule:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView$4;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureView$4;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    #getter for: Lcom/ui/LapseIt/capture/CaptureView;->dimTask:Ljava/util/TimerTask;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureView;->access$2(Lcom/ui/LapseIt/capture/CaptureView;)Ljava/util/TimerTask;

    move-result-object v3

    const-wide/16 v4, 0x4e20

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, v1, Lcom/ui/LapseIt/capture/CaptureView;->schedule:Ljava/util/concurrent/ScheduledFuture;

    .line 166
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView$4;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    iget-boolean v1, v1, Lcom/ui/LapseIt/capture/CaptureView;->isDimmed:Z

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView$4;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v1, v1, Lcom/ui/LapseIt/capture/CaptureView;->dimRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 168
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView$4;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    iput-boolean v0, v1, Lcom/ui/LapseIt/capture/CaptureView;->isDimmed:Z

    .line 169
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView$4;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureView;->captureMenu:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-boolean v0, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->isShowing:Z

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView$4;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureView;->captureMenu:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    invoke-virtual {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->showMenuAnimation()V

    .line 172
    :cond_1
    const/4 v0, 0x1

    .line 177
    :cond_2
    :goto_0
    return v0

    .line 174
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    goto :goto_0
.end method
