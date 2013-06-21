.class Lcom/cooliris/media/Util$BackgroundJob$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/Util$BackgroundJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cooliris/media/Util$BackgroundJob;


# direct methods
.method constructor <init>(Lcom/cooliris/media/Util$BackgroundJob;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cooliris/media/Util$BackgroundJob$1;->this$1:Lcom/cooliris/media/Util$BackgroundJob;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/cooliris/media/Util$BackgroundJob$1;->this$1:Lcom/cooliris/media/Util$BackgroundJob;

    #getter for: Lcom/cooliris/media/Util$BackgroundJob;->mActivity:Lcom/cooliris/media/MonitoredActivity;
    invoke-static {v0}, Lcom/cooliris/media/Util$BackgroundJob;->access$0(Lcom/cooliris/media/Util$BackgroundJob;)Lcom/cooliris/media/MonitoredActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/Util$BackgroundJob$1;->this$1:Lcom/cooliris/media/Util$BackgroundJob;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MonitoredActivity;->removeLifeCycleListener(Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;)V

    .line 210
    iget-object v0, p0, Lcom/cooliris/media/Util$BackgroundJob$1;->this$1:Lcom/cooliris/media/Util$BackgroundJob;

    #getter for: Lcom/cooliris/media/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cooliris/media/Util$BackgroundJob;->access$1(Lcom/cooliris/media/Util$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/cooliris/media/Util$BackgroundJob$1;->this$1:Lcom/cooliris/media/Util$BackgroundJob;

    #getter for: Lcom/cooliris/media/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cooliris/media/Util$BackgroundJob;->access$1(Lcom/cooliris/media/Util$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 212
    :cond_0
    return-void
.end method
