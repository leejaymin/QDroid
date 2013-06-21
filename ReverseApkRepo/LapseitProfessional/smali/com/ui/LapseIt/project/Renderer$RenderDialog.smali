.class Lcom/ui/LapseIt/project/Renderer$RenderDialog;
.super Landroid/app/ProgressDialog;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/Renderer;


# direct methods
.method public constructor <init>(Lcom/ui/LapseIt/project/Renderer;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/ui/LapseIt/project/Renderer$RenderDialog;->this$0:Lcom/ui/LapseIt/project/Renderer;

    .line 167
    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Lcom/ui/LapseIt/project/Renderer;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/ui/LapseIt/project/Renderer$RenderDialog;->this$0:Lcom/ui/LapseIt/project/Renderer;

    .line 171
    invoke-direct {p0, p2, p3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 172
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 175
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/ui/LapseIt/project/Renderer$RenderDialog;->this$0:Lcom/ui/LapseIt/project/Renderer;

    invoke-virtual {v1}, Lcom/ui/LapseIt/project/Renderer;->getRenderTask()Lcom/ui/LapseIt/project/Renderer$RenderTask;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ui/LapseIt/project/Renderer$RenderDialog;->this$0:Lcom/ui/LapseIt/project/Renderer;

    invoke-virtual {v1}, Lcom/ui/LapseIt/project/Renderer;->getRenderTask()Lcom/ui/LapseIt/project/Renderer$RenderTask;

    move-result-object v1

    #getter for: Lcom/ui/LapseIt/project/Renderer$RenderTask;->isCanceled:Z
    invoke-static {v1}, Lcom/ui/LapseIt/project/Renderer$RenderTask;->access$3(Lcom/ui/LapseIt/project/Renderer$RenderTask;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    const-string v1, "trace"

    const-string v2, "Canceling render"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectView;->getProjectView()Lcom/ui/LapseIt/project/ProjectView;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ui/LapseIt/project/ProjectView;->setRequestedOrientation(I)V

    .line 180
    iget-object v1, p0, Lcom/ui/LapseIt/project/Renderer$RenderDialog;->this$0:Lcom/ui/LapseIt/project/Renderer;

    invoke-virtual {v1}, Lcom/ui/LapseIt/project/Renderer;->getRenderTask()Lcom/ui/LapseIt/project/Renderer$RenderTask;

    move-result-object v1

    #setter for: Lcom/ui/LapseIt/project/Renderer$RenderTask;->isCanceled:Z
    invoke-static {v1, v0}, Lcom/ui/LapseIt/project/Renderer$RenderTask;->access$4(Lcom/ui/LapseIt/project/Renderer$RenderTask;Z)V

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
