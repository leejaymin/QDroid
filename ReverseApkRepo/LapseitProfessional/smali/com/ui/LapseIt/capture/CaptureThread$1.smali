.class Lcom/ui/LapseIt/capture/CaptureThread$1;
.super Ljava/lang/Object;
.source "CaptureThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/capture/CaptureThread;
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
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureThread$1;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread$1;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureThread;->access$0(Lcom/ui/LapseIt/capture/CaptureThread;)Lcom/ui/LapseIt/capture/CaptureView;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureView;->captureMenu:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-boolean v0, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->isManual:Z

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread$1;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureThread;->access$0(Lcom/ui/LapseIt/capture/CaptureThread;)Lcom/ui/LapseIt/capture/CaptureView;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureView;->info:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureThread$1;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->capturedFrames:I
    invoke-static {v2}, Lcom/ui/LapseIt/capture/CaptureThread;->access$1(Lcom/ui/LapseIt/capture/CaptureThread;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "F \u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureThread$1;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->totalTime:Ljava/lang/String;
    invoke-static {v2}, Lcom/ui/LapseIt/capture/CaptureThread;->access$2(Lcom/ui/LapseIt/capture/CaptureThread;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread$1;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureThread;->access$0(Lcom/ui/LapseIt/capture/CaptureThread;)Lcom/ui/LapseIt/capture/CaptureView;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureView;->captureMenu:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureThread$1;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;
    invoke-static {v1}, Lcom/ui/LapseIt/capture/CaptureThread;->access$0(Lcom/ui/LapseIt/capture/CaptureThread;)Lcom/ui/LapseIt/capture/CaptureView;

    move-result-object v1

    iget-object v1, v1, Lcom/ui/LapseIt/capture/CaptureView;->captureMenu:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v1, v1, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->firstItem:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureThread$1;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->totalTime:Ljava/lang/String;
    invoke-static {v2}, Lcom/ui/LapseIt/capture/CaptureThread;->access$2(Lcom/ui/LapseIt/capture/CaptureThread;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->changeButtonValue(Landroid/widget/RelativeLayout;Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread$1;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureThread;->access$0(Lcom/ui/LapseIt/capture/CaptureThread;)Lcom/ui/LapseIt/capture/CaptureView;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureView;->info:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureThread$1;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->capturedFrames:I
    invoke-static {v2}, Lcom/ui/LapseIt/capture/CaptureThread;->access$1(Lcom/ui/LapseIt/capture/CaptureThread;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "F"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
