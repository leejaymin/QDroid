.class public Lcom/sphericbox/syb/processing/ProcessingService$ProcessingBinder;
.super Lcom/sphericbox/syb/processing/IProcessingService$Stub;
.source "SourceFile"


# instance fields
.field final synthetic n:Lcom/sphericbox/syb/processing/ProcessingService;


# direct methods
.method public constructor <init>(Lcom/sphericbox/syb/processing/ProcessingService;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sphericbox/syb/processing/ProcessingService$ProcessingBinder;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-direct {p0}, Lcom/sphericbox/syb/processing/IProcessingService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/sphericbox/syb/processing/ProcessingService;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService$ProcessingBinder;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    return-object v0
.end method

.method public registerCallback(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService$ProcessingBinder;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/sphericbox/syb/processing/ProcessingService;->access$000(Lcom/sphericbox/syb/processing/ProcessingService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 148
    invoke-static {}, Lcom/sphericbox/syb/processing/ProcessingService;->access$100()Lcom/sphericbox/syb/a/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sphericbox/syb/a/p;->C()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sphericbox/syb/processing/IProcessingServiceCallback;->previewUpdated(Landroid/graphics/Bitmap;)V

    .line 150
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService$ProcessingBinder;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/sphericbox/syb/processing/ProcessingService;->access$000(Lcom/sphericbox/syb/processing/ProcessingService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 158
    :cond_0
    return-void
.end method
