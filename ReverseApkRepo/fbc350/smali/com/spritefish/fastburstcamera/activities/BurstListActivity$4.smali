.class Lcom/spritefish/fastburstcamera/activities/BurstListActivity$4;
.super Ljava/lang/Object;
.source "BurstListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

.field private final synthetic val$burst:Lcom/spritefish/fastburstcamera/db/dao/Burst;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;Lcom/spritefish/fastburstcamera/db/dao/Burst;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$4;->this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$4;->val$burst:Lcom/spritefish/fastburstcamera/db/dao/Burst;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 396
    new-instance v0, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$4;->this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    invoke-direct {v0, v1}, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;-><init>(Landroid/app/Activity;)V

    .line 397
    .local v0, cup:Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$4;->val$burst:Lcom/spritefish/fastburstcamera/db/dao/Burst;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/db/dao/Burst;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;->removeBurst(J)V

    .line 398
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 399
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$4;->this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    #calls: Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->initUi()V
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->access$3(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;)V

    .line 400
    return-void
.end method
