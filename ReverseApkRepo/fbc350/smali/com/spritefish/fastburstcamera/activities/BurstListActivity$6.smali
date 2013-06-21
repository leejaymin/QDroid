.class Lcom/spritefish/fastburstcamera/activities/BurstListActivity$6;
.super Landroid/os/Handler;
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

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$6;->this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$6;->val$dialog:Landroid/app/ProgressDialog;

    .line 502
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 505
    :try_start_0
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$6;->this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    #calls: Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->initUi()V
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->access$3(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;)V

    .line 506
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$6;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_0
    return-void

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "insta"

    const-string v2, "ouch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
