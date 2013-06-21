.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1$1;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;->onDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1$1;->this$2:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;

    .line 1535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 0

    .prologue
    .line 1546
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1$1;->this$2:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;

    move-result-object v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
