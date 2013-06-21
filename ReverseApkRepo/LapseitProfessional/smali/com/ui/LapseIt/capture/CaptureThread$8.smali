.class Lcom/ui/LapseIt/capture/CaptureThread$8;
.super Ljava/lang/Object;
.source "CaptureThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/capture/CaptureThread;->beginCaptureProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/capture/CaptureThread;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/CaptureThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureThread$8;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 146
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread$8;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureThread;->access$0(Lcom/ui/LapseIt/capture/CaptureThread;)Lcom/ui/LapseIt/capture/CaptureView;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureView;->camFlip:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread$8;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureThread;->access$0(Lcom/ui/LapseIt/capture/CaptureThread;)Lcom/ui/LapseIt/capture/CaptureView;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureView;->zoomWidget:Lcom/ui/LapseIt/capture/ZoomWidget;

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/capture/ZoomWidget;->setVisibility(I)V

    .line 148
    return-void
.end method
