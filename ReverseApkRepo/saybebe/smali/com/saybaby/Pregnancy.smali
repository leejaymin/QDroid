.class public Lcom/saybaby/Pregnancy;
.super Lkr/co/medinbiz/CommonActivity;
.source "Pregnancy.java"


# instance fields
.field private widget:Lkr/co/medinbiz/widget/pregnancy/PregnancyMain;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lkr/co/medinbiz/CommonActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/saybaby/Pregnancy;->widget:Lkr/co/medinbiz/widget/pregnancy/PregnancyMain;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/pregnancy/PregnancyMain;->onBackPressed()V

    .line 32
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lkr/co/medinbiz/CommonActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const-class v0, Lcom/saybaby/Calculator;

    sput-object v0, Lkr/co/medinbiz/widget/pregnancy/PregnancyCommon;->CALCLASS:Ljava/lang/Class;

    .line 26
    new-instance v0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMain;

    iget-object v1, p0, Lcom/saybaby/Pregnancy;->mainview:Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1}, Lkr/co/medinbiz/widget/pregnancy/PregnancyMain;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/saybaby/Pregnancy;->widget:Lkr/co/medinbiz/widget/pregnancy/PregnancyMain;

    .line 27
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lkr/co/medinbiz/CommonActivity;->onResume()V

    .line 18
    invoke-static {p0}, Lcom/saybaby/helfer/TabRegister;->TabRegist(Landroid/app/Activity;)V

    .line 19
    iget-object v0, p0, Lcom/saybaby/Pregnancy;->widget:Lkr/co/medinbiz/widget/pregnancy/PregnancyMain;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/pregnancy/PregnancyMain;->onResume()V

    .line 20
    return-void
.end method
