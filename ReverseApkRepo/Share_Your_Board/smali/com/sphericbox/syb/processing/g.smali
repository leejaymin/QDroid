.class Lcom/sphericbox/syb/processing/g;
.super Lcom/sphericbox/syb/processing/IProcessingServiceCallback$Stub;
.source "SourceFile"


# instance fields
.field final synthetic aI:Lcom/sphericbox/syb/processing/ProcessingActivity;


# direct methods
.method private constructor <init>(Lcom/sphericbox/syb/processing/ProcessingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sphericbox/syb/processing/g;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    invoke-direct {p0}, Lcom/sphericbox/syb/processing/IProcessingServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sphericbox/syb/processing/ProcessingActivity;Lcom/sphericbox/syb/processing/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/sphericbox/syb/processing/g;-><init>(Lcom/sphericbox/syb/processing/ProcessingActivity;)V

    return-void
.end method


# virtual methods
.method public previewUpdated(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/sphericbox/syb/processing/g;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sphericbox/syb/processing/ProcessingActivity;->access$800(Lcom/sphericbox/syb/processing/ProcessingActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sphericbox/syb/processing/b;

    invoke-direct {v1, p0, p1}, Lcom/sphericbox/syb/processing/b;-><init>(Lcom/sphericbox/syb/processing/g;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public processingCompleted()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sphericbox/syb/processing/g;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingActivity;->T:Lcom/sphericbox/syb/h;
    invoke-static {v0}, Lcom/sphericbox/syb/processing/ProcessingActivity;->access$900(Lcom/sphericbox/syb/processing/ProcessingActivity;)Lcom/sphericbox/syb/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sphericbox/syb/h;->A()[Lcom/sphericbox/syb/b;

    move-result-object v0

    array-length v0, v0

    .line 144
    iget-object v1, p0, Lcom/sphericbox/syb/processing/g;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    invoke-virtual {v1}, Lcom/sphericbox/syb/processing/ProcessingActivity;->finish()V

    .line 145
    if-lez v0, :cond_0

    .line 146
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sphericbox/syb/processing/g;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    const-class v2, Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    iget-object v1, p0, Lcom/sphericbox/syb/processing/g;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    invoke-virtual {v1, v0}, Lcom/sphericbox/syb/processing/ProcessingActivity;->startActivity(Landroid/content/Intent;)V

    .line 149
    :cond_0
    return-void
.end method

.method public processingFailed(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sphericbox/syb/processing/g;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sphericbox/syb/processing/ProcessingActivity;->access$1000(Lcom/sphericbox/syb/processing/ProcessingActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sphericbox/syb/processing/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/sphericbox/syb/processing/c;-><init>(Lcom/sphericbox/syb/processing/g;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method

.method public progress(III)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/processing/g;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sphericbox/syb/processing/ProcessingActivity;->access$500(Lcom/sphericbox/syb/processing/ProcessingActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sphericbox/syb/processing/a;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/sphericbox/syb/processing/a;-><init>(Lcom/sphericbox/syb/processing/g;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 123
    iget-object v0, p0, Lcom/sphericbox/syb/processing/g;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingActivity;->aD:Z
    invoke-static {v0}, Lcom/sphericbox/syb/processing/ProcessingActivity;->access$600(Lcom/sphericbox/syb/processing/ProcessingActivity;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/sphericbox/syb/processing/g;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    #setter for: Lcom/sphericbox/syb/processing/ProcessingActivity;->aD:Z
    invoke-static {v1, v2}, Lcom/sphericbox/syb/processing/ProcessingActivity;->access$602(Lcom/sphericbox/syb/processing/ProcessingActivity;Z)Z

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sphericbox/syb/processing/g;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    #setter for: Lcom/sphericbox/syb/processing/ProcessingActivity;->aD:Z
    invoke-static {v1, v2}, Lcom/sphericbox/syb/processing/ProcessingActivity;->access$602(Lcom/sphericbox/syb/processing/ProcessingActivity;Z)Z

    throw v0
.end method
