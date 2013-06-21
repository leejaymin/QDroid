.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;

.field private final synthetic val$theCam:I


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;

    iput p2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1;->val$theCam:I

    .line 1481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;
    .locals 1
    .parameter

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v0

    new-instance v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1$1;

    iget v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1;->val$theCam:I

    invoke-direct {v1, p0, v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1$1;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1;I)V

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1491
    return-void
.end method
