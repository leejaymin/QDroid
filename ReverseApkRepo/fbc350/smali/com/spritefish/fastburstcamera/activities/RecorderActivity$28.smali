.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$28;
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
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$28;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    .line 1634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$28;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->cancelPreshot()V
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$27(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    .line 1640
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$28;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->stopPrerecording(ZZ)V

    .line 1642
    return-void
.end method
