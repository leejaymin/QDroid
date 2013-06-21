.class Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7$1;
.super Ljava/lang/Object;
.source "BurstListActivity.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/activities/helper/CleanupProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7$1;->this$1:Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7$1;->val$dialog:Landroid/app/ProgressDialog;

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 2
    .parameter "finished"
    .parameter "total"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7$1;->val$dialog:Landroid/app/ProgressDialog;

    long-to-int v1, p3

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 519
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7$1;->val$dialog:Landroid/app/ProgressDialog;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 521
    return-void
.end method
