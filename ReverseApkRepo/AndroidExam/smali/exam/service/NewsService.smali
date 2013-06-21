.class public Lexam/service/NewsService;
.super Landroid/app/Service;
.source "NewsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/service/NewsService$NewsThread;
    }
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field mQuit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 64
    new-instance v0, Lexam/service/NewsService$1;

    invoke-direct {v0, p0}, Lexam/service/NewsService$1;-><init>(Lexam/service/NewsService;)V

    iput-object v0, p0, Lexam/service/NewsService;->mHandler:Landroid/os/Handler;

    .line 10
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 15
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 18
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 20
    const-string v0, "Service End"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lexam/service/NewsService;->mQuit:Z

    .line 22
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 27
    const/4 v1, 0x0

    iput-boolean v1, p0, Lexam/service/NewsService;->mQuit:Z

    .line 28
    new-instance v0, Lexam/service/NewsService$NewsThread;

    iget-object v1, p0, Lexam/service/NewsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, p0, v1}, Lexam/service/NewsService$NewsThread;-><init>(Lexam/service/NewsService;Lexam/service/NewsService;Landroid/os/Handler;)V

    .line 29
    .local v0, thread:Lexam/service/NewsService$NewsThread;
    invoke-virtual {v0}, Lexam/service/NewsService$NewsThread;->start()V

    .line 30
    const/4 v1, 0x1

    return v1
.end method
