.class Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7;
.super Ljava/lang/Thread;
.source "BurstListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

.field private final synthetic val$cuh:Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;Landroid/os/Handler;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7;->this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7;->val$cuh:Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;

    iput-object p3, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7;->val$dialog:Landroid/app/ProgressDialog;

    .line 512
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 515
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7;->val$cuh:Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;

    new-instance v1, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7$1;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {v1, p0, v2}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7$1;-><init>(Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;->cleanup(Lcom/spritefish/fastburstcamera/activities/helper/CleanupProgressCallback;)V

    .line 523
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7;->val$handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 525
    return-void
.end method
