.class Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$1;
.super Ljava/util/TimerTask;
.source "CaptureMenuWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$1;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    .line 230
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$1;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureView;->cThread:Lcom/ui/LapseIt/capture/CaptureThread;

    invoke-virtual {v0}, Lcom/ui/LapseIt/capture/CaptureThread;->beginCaptureProcess()V

    .line 235
    return-void
.end method
