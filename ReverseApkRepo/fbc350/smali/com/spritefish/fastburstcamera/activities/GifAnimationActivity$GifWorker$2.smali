.class Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$2;
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

.field private final synthetic val$i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final synthetic val$max:Ljava/util/concurrent/atomic/AtomicLong;

.field private final synthetic val$min:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$2;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$2;->val$i:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$2;->val$max:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p4, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$2;->val$min:Ljava/util/concurrent/atomic/AtomicLong;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 244
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$2;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$2;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    move-result-object v1

    const v2, 0x7f07009a

    invoke-virtual {v1, v2}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$2;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$2;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    move-result-object v1

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->pictures:Ljava/util/List;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 246
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$2;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$2;->val$i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 247
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$2;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$2;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    move-result-object v1

    const v2, 0x7f070098

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$2;->val$i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$2;->val$max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iget-object v7, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$2;->val$min:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 248
    return-void
.end method
