.class Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1;
.super Ljava/lang/Object;
.source "GifAnimationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1;)Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 147
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    move-result-object v1

    const-string v2, " "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;
    invoke-static {v4}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    move-result-object v4

    const v5, 0x7f070099

    invoke-virtual {v4, v5}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 148
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1$1;

    invoke-direct {v1, p0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1$1;-><init>(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 156
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 158
    return-void
.end method
