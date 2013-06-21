.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$26;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->initUiControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$26;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    .line 1588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1592
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$26;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-wide v2, v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastPicId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1594
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$26;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    const-class v3, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1595
    .local v0, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$26;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    invoke-virtual {v2, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->startActivity(Landroid/content/Intent;)V

    .line 1597
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$26;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    const-class v3, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1598
    .local v1, i2:Landroid/content/Intent;
    const-string v2, "pictureid"

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$26;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-wide v3, v3, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastPicId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1599
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$26;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    invoke-virtual {v2, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->startActivity(Landroid/content/Intent;)V

    .line 1602
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #i2:Landroid/content/Intent;
    :cond_0
    return-void
.end method
