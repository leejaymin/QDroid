.class public Lcom/sphericbox/syb/processing/ProcessingActivity;
.super Lcom/sphericbox/syb/ui/ActionActivity;
.source "SourceFile"


# instance fields
.field private T:Lcom/sphericbox/syb/h;

.field private aA:Landroid/widget/ProgressBar;

.field private aB:Landroid/widget/TextView;

.field private aC:Landroid/content/ServiceConnection;

.field private aD:Z

.field private ax:Lcom/sphericbox/syb/processing/IProcessingServiceCallback;

.field private ay:Lcom/sphericbox/syb/processing/IProcessingService;

.field private az:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sphericbox/syb/ui/ActionActivity;-><init>()V

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/sphericbox/syb/processing/ProcessingActivity;)Lcom/sphericbox/syb/processing/IProcessingService;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->ay:Lcom/sphericbox/syb/processing/IProcessingService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sphericbox/syb/processing/ProcessingActivity;Lcom/sphericbox/syb/processing/IProcessingService;)Lcom/sphericbox/syb/processing/IProcessingService;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->ay:Lcom/sphericbox/syb/processing/IProcessingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sphericbox/syb/processing/ProcessingActivity;)Lcom/sphericbox/syb/processing/IProcessingServiceCallback;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->ax:Lcom/sphericbox/syb/processing/IProcessingServiceCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sphericbox/syb/processing/ProcessingActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sphericbox/syb/processing/ProcessingActivity;Lcom/sphericbox/syb/processing/IProcessingServiceCallback;)Lcom/sphericbox/syb/processing/IProcessingServiceCallback;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->ax:Lcom/sphericbox/syb/processing/IProcessingServiceCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sphericbox/syb/processing/ProcessingActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->aB:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sphericbox/syb/processing/ProcessingActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->aA:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sphericbox/syb/processing/ProcessingActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sphericbox/syb/processing/ProcessingActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->aD:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sphericbox/syb/processing/ProcessingActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->aD:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sphericbox/syb/processing/ProcessingActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->az:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sphericbox/syb/processing/ProcessingActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sphericbox/syb/processing/ProcessingActivity;)Lcom/sphericbox/syb/h;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->T:Lcom/sphericbox/syb/h;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 36
    invoke-super {p0, p1}, Lcom/sphericbox/syb/ui/ActionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance v0, Lcom/sphericbox/syb/h;

    invoke-direct {v0, p0}, Lcom/sphericbox/syb/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->T:Lcom/sphericbox/syb/h;

    .line 42
    invoke-virtual {p0, v3}, Lcom/sphericbox/syb/processing/ProcessingActivity;->requestWindowFeature(I)Z

    .line 44
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/processing/ProcessingActivity;->setContentView(I)V

    .line 45
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/processing/ProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->az:Landroid/widget/ImageView;

    .line 47
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/processing/ProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 48
    new-instance v1, Lcom/sphericbox/syb/ui/a;

    new-instance v2, Lcom/sphericbox/syb/processing/h;

    invoke-direct {v2, p0}, Lcom/sphericbox/syb/processing/h;-><init>(Lcom/sphericbox/syb/processing/ProcessingActivity;)V

    invoke-direct {v1, v2}, Lcom/sphericbox/syb/ui/a;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/processing/ProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->aA:Landroid/widget/ProgressBar;

    .line 51
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/processing/ProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->aB:Landroid/widget/TextView;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->aD:Z

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sphericbox/syb/processing/IProcessingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v1, Lcom/sphericbox/syb/processing/i;

    invoke-direct {v1, p0}, Lcom/sphericbox/syb/processing/i;-><init>(Lcom/sphericbox/syb/processing/ProcessingActivity;)V

    iput-object v1, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->aC:Landroid/content/ServiceConnection;

    .line 72
    iget-object v1, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->aC:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Lcom/sphericbox/syb/processing/ProcessingActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 77
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->T:Lcom/sphericbox/syb/h;

    invoke-virtual {v0}, Lcom/sphericbox/syb/h;->release()V

    .line 82
    iput-object v3, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->T:Lcom/sphericbox/syb/h;

    .line 84
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->ay:Lcom/sphericbox/syb/processing/IProcessingService;

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->ay:Lcom/sphericbox/syb/processing/IProcessingService;

    iget-object v1, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->ax:Lcom/sphericbox/syb/processing/IProcessingServiceCallback;

    invoke-interface {v0, v1}, Lcom/sphericbox/syb/processing/IProcessingService;->unregisterCallback(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->aC:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/processing/ProcessingActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 92
    iput-object v3, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->aC:Landroid/content/ServiceConnection;

    .line 93
    iput-object v3, p0, Lcom/sphericbox/syb/processing/ProcessingActivity;->ay:Lcom/sphericbox/syb/processing/IProcessingService;

    .line 94
    invoke-super {p0}, Lcom/sphericbox/syb/ui/ActionActivity;->onDestroy()V

    .line 95
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v1, "ProcessingActivity"

    const-string v2, "Not able to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
