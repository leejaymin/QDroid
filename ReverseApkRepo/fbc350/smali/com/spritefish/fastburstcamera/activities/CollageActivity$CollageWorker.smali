.class Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;
.super Landroid/os/AsyncTask;
.source "CollageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spritefish/fastburstcamera/activities/CollageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollageWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;


# direct methods
.method private constructor <init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity;Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;-><init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)V

    return-void
.end method

.method static synthetic access$2(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;)Lcom/spritefish/fastburstcamera/activities/CollageActivity;
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter "params"

    .prologue
    .line 213
    :try_start_0
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 215
    .local v3, failed:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    new-instance v5, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$1;

    invoke-direct {v5, p0}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$1;-><init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;)V

    invoke-virtual {v4, v5}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 227
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    new-instance v5, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$2;

    invoke-direct {v5, p0, v3}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$2;-><init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v4, v5}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 244
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 245
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity;->selectedLayout:Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;
    invoke-static {v4}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->access$3(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity;->selectedLayout:Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;
    invoke-static {v4}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->access$3(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;

    move-result-object v1

    .line 246
    .local v1, cl:Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;
    :goto_0
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity;->cc:Lcom/spritefish/fastburstcamera/collage/CollageCreator;
    invoke-static {v4}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->access$4(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)Lcom/spritefish/fastburstcamera/collage/CollageCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    invoke-virtual {v5}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity;->selectedEffect:Lcom/spritefish/fastburstcamera/collage/effects/Effect;
    invoke-static {v6}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->access$5(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)Lcom/spritefish/fastburstcamera/collage/effects/Effect;

    move-result-object v6

    iget-object v7, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    invoke-virtual {v4, v5, v1, v6, v7}, Lcom/spritefish/fastburstcamera/collage/CollageCreator;->createFull(Landroid/content/res/Resources;Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;Lcom/spritefish/fastburstcamera/collage/effects/Effect;Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 248
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    new-instance v5, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$3;

    invoke-direct {v5, p0, v0, v3}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$3;-><init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;Landroid/graphics/Bitmap;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v4, v5}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 266
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 267
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #cl:Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;
    .end local v3           #failed:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    :catch_0
    move-exception v2

    .line 271
    .local v2, e:Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 272
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    new-instance v5, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$4;

    invoke-direct {v5, p0}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$4;-><init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;)V

    invoke-virtual {v4, v5}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    iget-object v4, v4, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_0

    .line 291
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    iget-object v4, v4, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 293
    .end local v2           #e:Ljava/lang/Throwable;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    return-object v4

    .line 245
    .restart local v3       #failed:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    :cond_1
    :try_start_2
    new-instance v1, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;

    const/4 v4, 0x4

    const/4 v5, -0x1

    const/16 v6, 0xa

    invoke-direct {v1, v4, v5, v6}, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;-><init>(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 289
    .end local v3           #failed:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    :catchall_0
    move-exception v4

    .line 290
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_2

    .line 291
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 292
    :cond_2
    throw v4

    .line 290
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v1       #cl:Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;
    .restart local v3       #failed:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    :cond_3
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    iget-object v4, v4, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_0

    .line 291
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    iget-object v4, v4, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_1
.end method
