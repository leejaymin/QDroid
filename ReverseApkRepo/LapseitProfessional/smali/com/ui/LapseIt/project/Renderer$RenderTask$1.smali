.class Lcom/ui/LapseIt/project/Renderer$RenderTask$1;
.super Ljava/lang/Object;
.source "Renderer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/Renderer$RenderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/project/Renderer$RenderTask;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/Renderer$RenderTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask$1;->this$1:Lcom/ui/LapseIt/project/Renderer$RenderTask;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask$1;->this$1:Lcom/ui/LapseIt/project/Renderer$RenderTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/project/Renderer$RenderTask;->cancel(Z)Z

    .line 233
    return-void
.end method
