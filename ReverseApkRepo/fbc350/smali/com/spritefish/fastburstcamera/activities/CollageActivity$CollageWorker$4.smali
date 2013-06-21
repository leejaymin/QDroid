.class Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$4;
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
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$4;->this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$4;)Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;
    .locals 1
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$4;->this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 277
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$4;->this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;)Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 278
    const v1, 0x7f07009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 279
    const v1, 0x7f07009e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 280
    const v1, 0x7f070037

    new-instance v2, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$4$1;

    invoke-direct {v2, p0}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$4$1;-><init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 285
    return-void
.end method
