.class public Lexam/service/CalcService;
.super Landroid/app/Service;
.source "CalcService.java"


# instance fields
.field mBinder:Lexam/service/ICalc$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    new-instance v0, Lexam/service/CalcService$1;

    invoke-direct {v0, p0}, Lexam/service/CalcService$1;-><init>(Lexam/service/CalcService;)V

    iput-object v0, p0, Lexam/service/CalcService;->mBinder:Lexam/service/ICalc$Stub;

    .line 10
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 20
    iget-object v0, p0, Lexam/service/CalcService;->mBinder:Lexam/service/ICalc$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 13
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 17
    return-void
.end method
