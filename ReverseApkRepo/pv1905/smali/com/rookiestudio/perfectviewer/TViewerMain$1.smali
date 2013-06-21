.class Lcom/rookiestudio/perfectviewer/TViewerMain$1;
.super Ljava/util/TimerTask;
.source "TViewerMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TViewerMain;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TViewerMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$1;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    .line 473
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewerMain$1;->cancel()Z

    .line 476
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$1;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    #getter for: Lcom/rookiestudio/perfectviewer/TViewerMain;->LongPressTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->access$1(Lcom/rookiestudio/perfectviewer/TViewerMain;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$1;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    #getter for: Lcom/rookiestudio/perfectviewer/TViewerMain;->LongPressTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->access$1(Lcom/rookiestudio/perfectviewer/TViewerMain;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 478
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$1;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/4 v1, 0x0

    #setter for: Lcom/rookiestudio/perfectviewer/TViewerMain;->LongPressTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->access$2(Lcom/rookiestudio/perfectviewer/TViewerMain;Ljava/util/Timer;)V

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$1;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/4 v1, 0x1

    #setter for: Lcom/rookiestudio/perfectviewer/TViewerMain;->LongPressShowMenu:Z
    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->access$3(Lcom/rookiestudio/perfectviewer/TViewerMain;Z)V

    .line 481
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    .line 482
    const/16 v1, 0x20

    .line 481
    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    .line 483
    return-void
.end method
