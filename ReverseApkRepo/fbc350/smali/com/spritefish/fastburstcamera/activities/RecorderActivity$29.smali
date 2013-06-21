.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$29;
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
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$29;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    .line 1646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$29;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->startRecording()V
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$24(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    .line 1652
    return-void
.end method
