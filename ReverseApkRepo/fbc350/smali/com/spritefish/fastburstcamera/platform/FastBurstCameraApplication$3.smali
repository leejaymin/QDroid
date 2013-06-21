.class Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$3;
.super Ljava/lang/Object;
.source "FastBurstCameraApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->makeErrorToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$3;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 597
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$3;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->frontActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$10(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070079

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 598
    return-void
.end method
