.class Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1$1;
.super Ljava/lang/Object;
.source "GifAnimationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1$1;->this$2:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1$1;->this$2:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1;->access$0(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1;)Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->cancel(Z)Z

    .line 154
    return-void
.end method
