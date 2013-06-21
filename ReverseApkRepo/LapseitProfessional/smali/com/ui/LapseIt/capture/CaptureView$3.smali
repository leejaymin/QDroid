.class Lcom/ui/LapseIt/capture/CaptureView$3;
.super Landroid/content/BroadcastReceiver;
.source "CaptureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/capture/CaptureView;
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
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureView$3;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    .line 802
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 805
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView$3;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v0}, Lcom/ui/LapseIt/capture/CaptureView;->createLowBatteryDialog()V

    .line 806
    return-void
.end method
