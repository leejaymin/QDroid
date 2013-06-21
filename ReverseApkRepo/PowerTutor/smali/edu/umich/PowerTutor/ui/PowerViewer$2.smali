.class Ledu/umich/PowerTutor/ui/PowerViewer$2;
.super Landroid/os/Handler;
.source "PowerViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/PowerViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/PowerViewer;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/ui/PowerViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$2;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    .line 533
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 535
    const-string v0, ""

    .line 537
    .local v0, mDialogMessage:Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_0

    .line 538
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$2;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->mWriteProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$0(Ledu/umich/PowerTutor/ui/PowerViewer;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 540
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer$2;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->PROGRESS_MAX:I
    invoke-static {v2}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$1(Ledu/umich/PowerTutor/ui/PowerViewer;)I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 541
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$2;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    invoke-virtual {v1, v3}, Ledu/umich/PowerTutor/ui/PowerViewer;->dismissDialogSafely(I)V

    .line 545
    :cond_0
    return-void
.end method
