.class Lcom/ui/LapseIt/capture/CaptureView$10$1;
.super Ljava/lang/Object;
.source "CaptureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/capture/CaptureView$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/capture/CaptureView$10;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/CaptureView$10;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureView$10$1;->this$1:Lcom/ui/LapseIt/capture/CaptureView$10;

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView$10$1;->this$1:Lcom/ui/LapseIt/capture/CaptureView$10;

    #getter for: Lcom/ui/LapseIt/capture/CaptureView$10;->this$0:Lcom/ui/LapseIt/capture/CaptureView;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureView$10;->access$0(Lcom/ui/LapseIt/capture/CaptureView$10;)Lcom/ui/LapseIt/capture/CaptureView;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureView;->cThread:Lcom/ui/LapseIt/capture/CaptureThread;

    invoke-virtual {v0}, Lcom/ui/LapseIt/capture/CaptureThread;->beginCaptureProcess()V

    .line 687
    return-void
.end method
