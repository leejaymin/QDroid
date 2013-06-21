.class Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$1;
.super Ljava/lang/Object;
.source "ViewImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;
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
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x32

    .line 114
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    iget-object v2, v2, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->animHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    iget-object v3, v3, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->animRunnable:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    iget-object v2, v2, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->animHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    iget-object v3, v3, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->animRunnable:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->direction:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    move-result-object v2

    sget-object v3, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;->NEXT:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    if-ne v2, v3, :cond_0

    .line 119
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    iget-object v3, v3, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getBurstId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v5}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getNextPicture(JJ)Lcom/spritefish/fastburstcamera/db/dao/Picture;

    move-result-object v0

    .line 120
    .local v0, next:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    if-eqz v0, :cond_0

    .line 122
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    #calls: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->setPicture(Lcom/spritefish/fastburstcamera/db/dao/Picture;)V
    invoke-static {v2, v0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->access$1(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;Lcom/spritefish/fastburstcamera/db/dao/Picture;)V

    .line 123
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->access$2(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    .end local v0           #next:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    :cond_0
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->direction:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    move-result-object v2

    sget-object v3, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;->PREV:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    if-ne v2, v3, :cond_1

    .line 130
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    iget-object v3, v3, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getBurstId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v5}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getPrevPicture(JJ)Lcom/spritefish/fastburstcamera/db/dao/Picture;

    move-result-object v1

    .line 131
    .local v1, prev:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    if-eqz v1, :cond_1

    .line 133
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    #calls: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->setPicture(Lcom/spritefish/fastburstcamera/db/dao/Picture;)V
    invoke-static {v2, v1}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->access$1(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;Lcom/spritefish/fastburstcamera/db/dao/Picture;)V

    .line 134
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->access$2(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    .end local v1           #prev:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    :cond_1
    return-void
.end method
