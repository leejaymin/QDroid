.class public Lcom/gameboys/pocket7/TstoreChargeActivity;
.super Lcom/feelingk/iap/IAPActivity;
.source "TstoreChargeActivity.java"


# static fields
.field public static final PID_HOT_GIRL:Ljava/lang/String; = "0900471768"

.field public static final PID_HOT_GIRL600:Ljava/lang/String; = "0900542353"

.field public static final PID_HOT_GIRLPLUS:Ljava/lang/String; = "0900495699"

.field public static final PID_NASTY_GIRL:Ljava/lang/String; = "0900471706"

.field public static final PID_NASTY_GIRL520:Ljava/lang/String; = "0900542350"

.field public static final PID_NASTY_GIRLPLUS:Ljava/lang/String; = "0900495697"

.field public static final PID_PICKY_GIRL:Ljava/lang/String; = "0900471767"

.field public static final PID_PICKY_GIRL560:Ljava/lang/String; = "0900542352"

.field public static final PID_PICKY_GIRLPLUS:Ljava/lang/String; = "0900495698"

.field public static final PID_QUTE_GIRL480:Ljava/lang/String; = "0900542349"

.field public static final PID_QUTE_GIRL80:Ljava/lang/String; = "0900471705"

.field public static final PID_QUTE_GIRLPLUS:Ljava/lang/String; = "0900495696"

.field public static final PID_SEXY_GIRL440:Ljava/lang/String; = "0900542348"

.field public static final PRODUCT_HOT_GIRL:I = 0xfa0

.field public static final PRODUCT_HOT_GIRL600:I = 0x2134

.field public static final PRODUCT_HOT_GIRLPLUS:I = 0x1770

.field public static final PRODUCT_NASTY_GIRL:I = 0x7d0

.field public static final PRODUCT_NASTY_GIRL520:I = 0x1d4c

.field public static final PRODUCT_NASTY_GIRLPLUS:I = 0x1388

.field public static final PRODUCT_PICKY_GIRL:I = 0xbb8

.field public static final PRODUCT_PICKY_GIRL560:I = 0x1f40

.field public static final PRODUCT_PICKY_GIRLPLUS:I = 0x157c

.field public static final PRODUCT_QUTE_GIRL:I = 0x3e8

.field public static final PRODUCT_QUTE_GIRL480:I = 0x1b58

.field public static final PRODUCT_QUTE_GIRLPLUS:I = 0x1194

.field public static final PRODUCT_SEXY_GIRL440:I = 0x1964


# instance fields
.field AppID:Ljava/lang/String;

.field BP_IP:Ljava/lang/String;

.field BP_Port:I

.field PID:Ljava/lang/String;

.field addCash:I

.field bPaid:Ljava/lang/Boolean;

.field closeButton:Landroid/widget/Button;

.field mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

.field product:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;-><init>()V

    .line 20
    const-string v0, "OA00276949"

    iput-object v0, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->AppID:Ljava/lang/String;

    .line 21
    const-string v0, "0900471705"

    iput-object v0, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->PID:Ljava/lang/String;

    .line 22
    iput-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->BP_IP:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->BP_Port:I

    .line 25
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->bPaid:Ljava/lang/Boolean;

    .line 29
    iput-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->closeButton:Landroid/widget/Button;

    .line 137
    new-instance v0, Lcom/gameboys/pocket7/TstoreChargeActivity$1;

    invoke-direct {v0, p0}, Lcom/gameboys/pocket7/TstoreChargeActivity$1;-><init>(Lcom/gameboys/pocket7/TstoreChargeActivity;)V

    iput-object v0, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 18
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/feelingk/iap/IAPActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/gameboys/pocket7/TstoreChargeActivity;->setContentView(I)V

    .line 67
    new-instance v1, Lcom/feelingk/iap/IAPLibSetting;

    invoke-direct {v1}, Lcom/feelingk/iap/IAPLibSetting;-><init>()V

    .line 68
    .local v1, setting:Lcom/feelingk/iap/IAPLibSetting;
    iget-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->AppID:Ljava/lang/String;

    iput-object v2, v1, Lcom/feelingk/iap/IAPLibSetting;->AppID:Ljava/lang/String;

    .line 69
    iget-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->BP_IP:Ljava/lang/String;

    iput-object v2, v1, Lcom/feelingk/iap/IAPLibSetting;->BP_IP:Ljava/lang/String;

    .line 70
    iget v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->BP_Port:I

    iput v2, v1, Lcom/feelingk/iap/IAPLibSetting;->BP_Port:I

    .line 71
    iget-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    iput-object v2, v1, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 73
    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Lcom/gameboys/pocket7/TstoreChargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->closeButton:Landroid/widget/Button;

    .line 74
    iget-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->closeButton:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 76
    iget-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->closeButton:Landroid/widget/Button;

    new-instance v3, Lcom/gameboys/pocket7/TstoreChargeActivity$2;

    invoke-direct {v3, p0}, Lcom/gameboys/pocket7/TstoreChargeActivity$2;-><init>(Lcom/gameboys/pocket7/TstoreChargeActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/gameboys/pocket7/TstoreChargeActivity;->IAPLibInit(Lcom/feelingk/iap/IAPLibSetting;)V

    .line 86
    invoke-virtual {p0}, Lcom/gameboys/pocket7/TstoreChargeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    .local v0, extra:Landroid/os/Bundle;
    const-string v2, "PRODUCT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->product:I

    .line 89
    iget v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->product:I

    sparse-switch v2, :sswitch_data_0

    .line 132
    :goto_0
    iget-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->PID:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/gameboys/pocket7/TstoreChargeActivity;->popPurchaseDlg(Ljava/lang/String;)V

    .line 133
    const-string v2, "PURCHASE"

    const-string v3, "POPUP ON"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void

    .line 92
    :sswitch_0
    const-string v2, "0900471705"

    iput-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->PID:Ljava/lang/String;

    goto :goto_0

    .line 95
    :sswitch_1
    const-string v2, "0900471706"

    iput-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->PID:Ljava/lang/String;

    goto :goto_0

    .line 98
    :sswitch_2
    const-string v2, "0900471767"

    iput-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->PID:Ljava/lang/String;

    goto :goto_0

    .line 101
    :sswitch_3
    const-string v2, "0900471768"

    iput-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->PID:Ljava/lang/String;

    goto :goto_0

    .line 104
    :sswitch_4
    const-string v2, "0900495696"

    iput-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->PID:Ljava/lang/String;

    goto :goto_0

    .line 107
    :sswitch_5
    const-string v2, "0900495697"

    iput-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->PID:Ljava/lang/String;

    goto :goto_0

    .line 110
    :sswitch_6
    const-string v2, "0900495698"

    iput-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->PID:Ljava/lang/String;

    goto :goto_0

    .line 113
    :sswitch_7
    const-string v2, "0900495699"

    iput-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->PID:Ljava/lang/String;

    goto :goto_0

    .line 116
    :sswitch_8
    const-string v2, "0900542348"

    iput-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->PID:Ljava/lang/String;

    goto :goto_0

    .line 119
    :sswitch_9
    const-string v2, "0900542349"

    iput-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->PID:Ljava/lang/String;

    goto :goto_0

    .line 122
    :sswitch_a
    const-string v2, "0900542350"

    iput-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->PID:Ljava/lang/String;

    goto :goto_0

    .line 125
    :sswitch_b
    const-string v2, "0900542352"

    iput-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->PID:Ljava/lang/String;

    goto :goto_0

    .line 128
    :sswitch_c
    const-string v2, "0900542353"

    iput-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity;->PID:Ljava/lang/String;

    goto :goto_0

    .line 89
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
        0x1964 -> :sswitch_8
        0x1b58 -> :sswitch_9
        0x1d4c -> :sswitch_a
        0x1f40 -> :sswitch_b
        0x2134 -> :sswitch_c
    .end sparse-switch
.end method
