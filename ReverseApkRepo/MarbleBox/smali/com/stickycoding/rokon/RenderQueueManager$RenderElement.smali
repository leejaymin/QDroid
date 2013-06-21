.class public Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;
.super Lcom/stickycoding/rokon/BaseObject;
.source "RenderQueueManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stickycoding/rokon/RenderQueueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderElement"
.end annotation


# instance fields
.field public drawable:Lcom/stickycoding/rokon/Drawable;

.field final synthetic this$0:Lcom/stickycoding/rokon/RenderQueueManager;

.field public useWindow:Z


# direct methods
.method public constructor <init>(Lcom/stickycoding/rokon/RenderQueueManager;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;->this$0:Lcom/stickycoding/rokon/RenderQueueManager;

    .line 73
    invoke-direct {p0}, Lcom/stickycoding/rokon/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;->drawable:Lcom/stickycoding/rokon/Drawable;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;->useWindow:Z

    .line 84
    return-void
.end method

.method public set(Lcom/stickycoding/rokon/Drawable;Z)V
    .locals 0
    .parameter "drawable"
    .parameter "useWindow"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;->drawable:Lcom/stickycoding/rokon/Drawable;

    .line 78
    iput-boolean p2, p0, Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;->useWindow:Z

    .line 79
    return-void
.end method
