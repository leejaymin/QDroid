.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$21;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$21;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    .line 1368
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

    .line 1372
    const-string v1, "insta"

    const-string v2, "touched record button"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1391
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1377
    :pswitch_0
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$21;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->startRecording()V
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$24(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    goto :goto_0

    .line 1385
    :pswitch_1
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$21;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->stopRecording()V
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$25(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    goto :goto_0

    .line 1373
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
