.class Lcom/ui/LapseIt/capture/CaptureView$10;
.super Ljava/util/TimerTask;
.source "CaptureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/capture/CaptureView;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/capture/CaptureView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/CaptureView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureView$10;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    .line 679
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/capture/CaptureView$10;)Lcom/ui/LapseIt/capture/CaptureView;
    .locals 1
    .parameter

    .prologue
    .line 679
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView$10;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView$10;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    new-instance v1, Lcom/ui/LapseIt/capture/CaptureView$10$1;

    invoke-direct {v1, p0}, Lcom/ui/LapseIt/capture/CaptureView$10$1;-><init>(Lcom/ui/LapseIt/capture/CaptureView$10;)V

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/capture/CaptureView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 689
    return-void
.end method
