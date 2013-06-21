.class Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$4;
.super Ljava/lang/Object;
.source "GifAnimationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$4;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$4;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->finish()V

    .line 327
    return-void
.end method
