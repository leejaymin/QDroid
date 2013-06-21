.class Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$7;
.super Ljava/lang/Object;
.source "ViewImageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$7;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 751
    const/4 v1, 0x0

    .line 752
    .local v1, showThisAfter:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$7;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$7;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    iget-object v3, v3, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getBurstId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$7;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v5}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getNextPicture(JJ)Lcom/spritefish/fastburstcamera/db/dao/Picture;

    move-result-object v1

    .line 753
    if-nez v1, :cond_0

    .line 754
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$7;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$7;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    iget-object v3, v3, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getBurstId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$7;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v5}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getPrevPicture(JJ)Lcom/spritefish/fastburstcamera/db/dao/Picture;

    move-result-object v1

    .line 757
    :cond_0
    new-instance v0, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$7;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    invoke-direct {v0, v2}, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;-><init>(Landroid/app/Activity;)V

    .line 758
    .local v0, cup:Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$7;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    iget-object v2, v2, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v2}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;->removePicture(J)V

    .line 759
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 761
    if-eqz v1, :cond_1

    .line 762
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$7;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    #calls: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->setPicture(Lcom/spritefish/fastburstcamera/db/dao/Picture;)V
    invoke-static {v2, v1}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->access$1(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;Lcom/spritefish/fastburstcamera/db/dao/Picture;)V

    .line 766
    :goto_0
    return-void

    .line 764
    :cond_1
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$7;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    invoke-virtual {v2}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->finish()V

    goto :goto_0
.end method
