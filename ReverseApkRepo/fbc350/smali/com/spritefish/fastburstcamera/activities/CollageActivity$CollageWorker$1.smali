.class Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$1;
.super Ljava/lang/Object;
.source "CollageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$1;->this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 219
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$1;->this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;)Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$1;->this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;)Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    move-result-object v1

    const-string v2, " "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$1;->this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;
    invoke-static {v4}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;)Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    move-result-object v4

    const v5, 0x7f07009d

    invoke-virtual {v4, v5}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 222
    return-void
.end method
