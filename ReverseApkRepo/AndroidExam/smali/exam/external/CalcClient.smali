.class public Lexam/external/CalcClient;
.super Landroid/app/Activity;
.source "CalcClient.java"


# instance fields
.field mCalc:Lexam/service/ICalc;

.field mResult:Landroid/widget/TextView;

.field srvConn:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    new-instance v0, Lexam/external/CalcClient$1;

    invoke-direct {v0, p0}, Lexam/external/CalcClient$1;-><init>(Lexam/external/CalcClient;)V

    iput-object v0, p0, Lexam/external/CalcClient;->srvConn:Landroid/content/ServiceConnection;

    .line 10
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v2, 0x7f030050

    invoke-virtual {p0, v2}, Lexam/external/CalcClient;->setContentView(I)V

    .line 17
    const v2, 0x7f0c0050

    invoke-virtual {p0, v2}, Lexam/external/CalcClient;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lexam/external/CalcClient;->mResult:Landroid/widget/TextView;

    .line 19
    const v2, 0x7f0c0066

    invoke-virtual {p0, v2}, Lexam/external/CalcClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 20
    .local v0, btnLCM:Landroid/widget/Button;
    new-instance v2, Lexam/external/CalcClient$2;

    invoke-direct {v2, p0}, Lexam/external/CalcClient$2;-><init>(Lexam/external/CalcClient;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v2, 0x7f0c0067

    invoke-virtual {p0, v2}, Lexam/external/CalcClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 33
    .local v1, btnPrime:Landroid/widget/Button;
    new-instance v2, Lexam/external/CalcClient$3;

    invoke-direct {v2, p0}, Lexam/external/CalcClient$3;-><init>(Lexam/external/CalcClient;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 54
    iget-object v0, p0, Lexam/external/CalcClient;->srvConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lexam/external/CalcClient;->unbindService(Landroid/content/ServiceConnection;)V

    .line 55
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "exam.service.CALC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lexam/external/CalcClient;->srvConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lexam/external/CalcClient;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 50
    return-void
.end method
