.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$8;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->activateFocus(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$8;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$8;->val$v:Landroid/view/View;

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4
    .parameter "success"
    .parameter "camera"

    .prologue
    const/4 v3, 0x0

    .line 644
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$8;->val$v:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$8;->val$v:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 646
    :cond_0
    const-string v0, "insta"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "focus done - success "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$8;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/FocusMode;->FOCUSED:Lcom/spritefish/fastburstcamera/activities/FocusMode;

    #setter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusMode:Lcom/spritefish/fastburstcamera/activities/FocusMode;
    invoke-static {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$6(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Lcom/spritefish/fastburstcamera/activities/FocusMode;)V

    .line 650
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$8;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->isFocusOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 651
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$8;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->topControl:Lcom/spritefish/camera/controls/PreviewTopControl;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$7(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewTopControl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/spritefish/camera/controls/PreviewTopControl;->setFocusMode(Z)V

    .line 652
    return-void
.end method
