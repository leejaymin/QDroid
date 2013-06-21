.class Lcom/ui/LapseIt/capture/CaptureView$11;
.super Ljava/lang/Object;
.source "CaptureView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/capture/CaptureView;->buildErrorCameraAlert(I)V
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
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureView$11;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 786
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView$11;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v0}, Lcom/ui/LapseIt/capture/CaptureView;->finish()V

    .line 787
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 788
    return-void
.end method
