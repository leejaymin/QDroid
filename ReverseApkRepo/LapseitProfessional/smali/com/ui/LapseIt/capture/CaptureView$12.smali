.class Lcom/ui/LapseIt/capture/CaptureView$12;
.super Ljava/lang/Object;
.source "CaptureView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/capture/CaptureView;->createLowBatteryDialog()V
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
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureView$12;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 813
    packed-switch p2, :pswitch_data_0

    .line 818
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 819
    return-void

    .line 815
    :pswitch_0
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView$12;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureView;->cThread:Lcom/ui/LapseIt/capture/CaptureThread;

    invoke-virtual {v0}, Lcom/ui/LapseIt/capture/CaptureThread;->stopCaptureProcess()V

    goto :goto_0

    .line 813
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
    .end packed-switch
.end method
