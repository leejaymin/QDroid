.class Lcom/ui/LapseIt/capture/CaptureView$13;
.super Ljava/lang/Object;
.source "CaptureView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/capture/CaptureView;->createCancelCaptureDialog()V
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
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureView$13;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 851
    packed-switch p2, :pswitch_data_0

    .line 858
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 859
    return-void

    .line 853
    :pswitch_0
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView$13;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureView;->cThread:Lcom/ui/LapseIt/capture/CaptureThread;

    invoke-virtual {v0}, Lcom/ui/LapseIt/capture/CaptureThread;->pauseCaptureProcess()V

    .line 855
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView$13;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v0}, Lcom/ui/LapseIt/capture/CaptureView;->finish()V

    goto :goto_0

    .line 851
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
