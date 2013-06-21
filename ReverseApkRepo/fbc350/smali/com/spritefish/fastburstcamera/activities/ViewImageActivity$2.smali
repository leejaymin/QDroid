.class Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$2;
.super Ljava/lang/Object;
.source "ViewImageActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 197
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->access$2(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->mNextTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->access$3(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 200
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    sget-object v2, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;->PREV:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    #setter for: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->direction:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;
    invoke-static {v1, v2}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->access$4(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;)V

    .line 201
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->access$2(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->mNextTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->access$3(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    :goto_0
    return v0

    .line 204
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 206
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->access$2(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->mNextTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->access$3(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    sget-object v2, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;->NONE:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    #setter for: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->direction:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;
    invoke-static {v1, v2}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->access$4(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;)V

    goto :goto_0

    .line 212
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
