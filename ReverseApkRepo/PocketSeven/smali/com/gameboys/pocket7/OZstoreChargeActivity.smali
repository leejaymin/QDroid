.class public Lcom/gameboys/pocket7/OZstoreChargeActivity;
.super Lcom/feelingk/lguiab/LguIAPLib;
.source "OZstoreChargeActivity.java"


# static fields
.field public static final PID_HOT_GIRL:Ljava/lang/String; = "Q02D10134561"

.field public static final PID_HOT_GIRLPLUS:Ljava/lang/String; = "Q02D10142996"

.field public static final PID_NASTY_GIRL:Ljava/lang/String; = "Q02D10134559"

.field public static final PID_NASTY_GIRLPLUS:Ljava/lang/String; = "Q02D10142992"

.field public static final PID_PICKY_GIRL:Ljava/lang/String; = "Q02D10134560"

.field public static final PID_PICKY_GIRLPLUS:Ljava/lang/String; = "Q02D10142994"

.field public static final PID_QUTE_GIRL:Ljava/lang/String; = "Q02D10134558"

.field public static final PID_QUTE_GIRLPLUS:Ljava/lang/String; = "Q02D10142990"

.field public static final PRODUCT_HOT_GIRL:I = 0xfa0

.field public static final PRODUCT_HOT_GIRLPLUS:I = 0x1770

.field public static final PRODUCT_NASTY_GIRL:I = 0x7d0

.field public static final PRODUCT_NASTY_GIRLPLUS:I = 0x1388

.field public static final PRODUCT_PICKY_GIRL:I = 0xbb8

.field public static final PRODUCT_PICKY_GIRLPLUS:I = 0x157c

.field public static final PRODUCT_QUTE_GIRL:I = 0x3e8

.field public static final PRODUCT_QUTE_GIRLPLUS:I = 0x1194


# instance fields
.field private AppID:Ljava/lang/String;

.field private PID:Ljava/lang/String;

.field private mClientListener:Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

.field private mTestBpData:Ljava/lang/String;

.field private mTestBpIP:Ljava/lang/String;

.field private mTestBpPort:Ljava/lang/String;

.field private mTestBpUri:Ljava/lang/String;

.field product:I

.field private serverType:Z

.field private setting:Lcom/feelingk/lguiab/vo/IAPLibSetting;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Lcom/feelingk/lguiab/LguIAPLib;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->setting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    .line 20
    const-string v0, "Q02010133591"

    iput-object v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->AppID:Ljava/lang/String;

    .line 21
    const-string v0, "Q02D10134558"

    iput-object v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->PID:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->mTestBpIP:Ljava/lang/String;

    .line 24
    const-string v0, "0"

    iput-object v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->mTestBpPort:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->mTestBpUri:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->mTestBpData:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->serverType:Z

    .line 96
    new-instance v0, Lcom/gameboys/pocket7/OZstoreChargeActivity$1;

    invoke-direct {v0, p0}, Lcom/gameboys/pocket7/OZstoreChargeActivity$1;-><init>(Lcom/gameboys/pocket7/OZstoreChargeActivity;)V

    iput-object v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->mClientListener:Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    .line 14
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/feelingk/lguiab/LguIAPLib;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/gameboys/pocket7/OZstoreChargeActivity;->setContentView(I)V

    .line 55
    new-instance v0, Lcom/feelingk/lguiab/vo/IAPLibSetting;

    iget-object v2, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->AppID:Ljava/lang/String;

    iget-object v3, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->mTestBpIP:Ljava/lang/String;

    iget-object v4, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->mTestBpPort:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->serverType:Z

    iget-object v6, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->mClientListener:Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/feelingk/lguiab/vo/IAPLibSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/feelingk/lguiab/LguIAPLib$OnClientListener;)V

    iput-object v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->setting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    .line 57
    iget-object v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->setting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {p0, v0}, Lcom/gameboys/pocket7/OZstoreChargeActivity;->LguIAPLibInit(Lcom/feelingk/lguiab/vo/IAPLibSetting;)V

    .line 59
    invoke-virtual {p0}, Lcom/gameboys/pocket7/OZstoreChargeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 60
    .local v7, extra:Landroid/os/Bundle;
    const-string v0, "PRODUCT"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->product:I

    .line 62
    iget v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->product:I

    sparse-switch v0, :sswitch_data_0

    .line 89
    :goto_0
    const-string v0, "PRODUCT ID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->PID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->AppID:Ljava/lang/String;

    iget-object v3, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->PID:Ljava/lang/String;

    .line 91
    iget-object v4, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->mTestBpUri:Ljava/lang/String;

    iget-object v5, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->mTestBpData:Ljava/lang/String;

    iget-object v6, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->setting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    move-object v0, p0

    move-object v1, p0

    .line 90
    invoke-virtual/range {v0 .. v6}, Lcom/gameboys/pocket7/OZstoreChargeActivity;->lguIABpopPurchaseDlg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/feelingk/lguiab/vo/IAPLibSetting;)V

    .line 93
    return-void

    .line 65
    :sswitch_0
    const-string v0, "Q02D10134558"

    iput-object v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->PID:Ljava/lang/String;

    goto :goto_0

    .line 68
    :sswitch_1
    const-string v0, "Q02D10134559"

    iput-object v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->PID:Ljava/lang/String;

    goto :goto_0

    .line 71
    :sswitch_2
    const-string v0, "Q02D10134560"

    iput-object v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->PID:Ljava/lang/String;

    goto :goto_0

    .line 74
    :sswitch_3
    const-string v0, "Q02D10134561"

    iput-object v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->PID:Ljava/lang/String;

    goto :goto_0

    .line 77
    :sswitch_4
    const-string v0, "Q02D10142990"

    iput-object v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->PID:Ljava/lang/String;

    goto :goto_0

    .line 80
    :sswitch_5
    const-string v0, "Q02D10142992"

    iput-object v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->PID:Ljava/lang/String;

    goto :goto_0

    .line 83
    :sswitch_6
    const-string v0, "Q02D10142994"

    iput-object v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->PID:Ljava/lang/String;

    goto :goto_0

    .line 86
    :sswitch_7
    const-string v0, "Q02D10142996"

    iput-object v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity;->PID:Ljava/lang/String;

    goto :goto_0

    .line 62
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
        0xbb8 -> :sswitch_2
        0xfa0 -> :sswitch_3
        0x1194 -> :sswitch_4
        0x1388 -> :sswitch_5
        0x157c -> :sswitch_6
        0x1770 -> :sswitch_7
    .end sparse-switch
.end method
