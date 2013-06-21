.class Lcom/ui/LapseIt/capture/CaptureMenuWidget$2;
.super Ljava/util/TimerTask;
.source "CaptureMenuWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/capture/CaptureMenuWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/CaptureMenuWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$2;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    .line 684
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$2;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-boolean v0, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->isShowing:Z

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$2;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    #calls: Lcom/ui/LapseIt/capture/CaptureMenuWidget;->hideMenuAnimation()V
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget;)V

    .line 691
    :cond_0
    return-void
.end method
