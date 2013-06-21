.class Lcom/ui/LapseIt/capture/CaptureView$5;
.super Ljava/lang/Object;
.source "CaptureView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/capture/CaptureView;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureView$5;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 357
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureView$5;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->items:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, selectedItem:Ljava/lang/String;
    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 360
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureView$5;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->captureParams:Lcom/ui/LapseIt/capture/CaptureParams;

    invoke-virtual {v3, v1}, Lcom/ui/LapseIt/capture/CaptureParams;->setFocusMode(Ljava/lang/String;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 361
    .local v2, tempParams:Landroid/hardware/Camera$Parameters;
    if-eqz v2, :cond_0

    .line 363
    :try_start_0
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureView$5;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 364
    const-string v3, "auto"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 365
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureView$5;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureView$5;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v2           #tempParams:Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_0
    return-void

    .line 367
    .restart local v2       #tempParams:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
