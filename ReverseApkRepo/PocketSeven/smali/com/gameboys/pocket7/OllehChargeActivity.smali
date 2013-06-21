.class public Lcom/gameboys/pocket7/OllehChargeActivity;
.super Lcom/kt/olleh/inapp/KTInAppActivity;
.source "OllehChargeActivity.java"


# static fields
.field private static final ADDR:Ljava/lang/String; = "210.127.253.142"

.field private static final AID:Ljava/lang/String; = "8100F346"

.field public static final PID_HOT_GIRL:Ljava/lang/String; = "I00004000"

.field public static final PID_HOT_GIRLPLUS:Ljava/lang/String; = "I00006000"

.field public static final PID_NASTY_GIRL:Ljava/lang/String; = "I00002000"

.field public static final PID_NASTY_GIRLPLUS:Ljava/lang/String; = "I00005000"

.field public static final PID_PICKY_GIRL:Ljava/lang/String; = "I00003000"

.field public static final PID_PICKY_GIRLPLUS:Ljava/lang/String; = "I00005500"

.field public static final PID_QUTE_GIRL:Ljava/lang/String; = "I00001000"

.field public static final PID_QUTE_GIRLPLUS:Ljava/lang/String; = "I00004500"

.field public static final PRODUCT_HOT_GIRL:I = 0xfa0

.field public static final PRODUCT_HOT_GIRLPLUS:I = 0x1770

.field public static final PRODUCT_NASTY_GIRL:I = 0x7d0

.field public static final PRODUCT_NASTY_GIRLPLUS:I = 0x1388

.field public static final PRODUCT_PICKY_GIRL:I = 0xbb8

.field public static final PRODUCT_PICKY_GIRLPLUS:I = 0x157c

.field public static PRODUCT_PRICE:I = 0x0

.field public static final PRODUCT_QUTE_GIRL:I = 0x3e8

.field public static final PRODUCT_QUTE_GIRLPLUS:I = 0x1194


# instance fields
.field PID:Ljava/lang/String;

.field addCash:I

.field closeButton:Landroid/widget/Button;

.field mInAPInformationListener:Lcom/kt/olleh/inapp/OnInAppListener;

.field product:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/gameboys/pocket7/OllehChargeActivity;->PRODUCT_PRICE:I

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameboys/pocket7/OllehChargeActivity;->closeButton:Landroid/widget/Button;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/gameboys/pocket7/OllehChargeActivity;->PID:Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/gameboys/pocket7/OllehChargeActivity$1;

    invoke-direct {v0, p0}, Lcom/gameboys/pocket7/OllehChargeActivity$1;-><init>(Lcom/gameboys/pocket7/OllehChargeActivity;)V

    iput-object v0, p0, Lcom/gameboys/pocket7/OllehChargeActivity;->mInAPInformationListener:Lcom/kt/olleh/inapp/OnInAppListener;

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/gameboys/pocket7/OllehChargeActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/gameboys/pocket7/OllehChargeActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "result"

    .prologue
    .line 166
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 169
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 170
    const-string v1, "OK"

    new-instance v2, Lcom/gameboys/pocket7/OllehChargeActivity$6;

    invoke-direct {v2, p0}, Lcom/gameboys/pocket7/OllehChargeActivity$6;-><init>(Lcom/gameboys/pocket7/OllehChargeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 177
    return-void
.end method


# virtual methods
.method public ChargeDialog()V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    const-string v1, "\uacb0\uc81c \uc548\ub0b4"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uc2e4\uc81c \ud604\uae08 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/gameboys/pocket7/OllehChargeActivity;->PRODUCT_PRICE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uc6d0\uc758 \ucd94\uac00 \uc815\ubcf4\uc774\uc6a9\ub8cc(\ud1b5\ud654\ub8cc \ubcc4\ub3c4)\uac00 \ubd80\uacfc\ub429\ub2c8\ub2e4.\n\uad6c\ub9e4 \ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?\n\uc544\uc774\ud15c \uad6c\ub9e4\uc911 \uc77c\ubd80 \uc2dc\uac04\uc774 \uc18c\uc694\ub420 \uc218 \uc788\uc73c\ubbc0\ub85c \uac15\uc81c\uc885\ub8cc \ud558\uc9c0 \ub9c8\uc138\uc694."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 112
    const v1, 0x1040013

    new-instance v2, Lcom/gameboys/pocket7/OllehChargeActivity$3;

    invoke-direct {v2, p0}, Lcom/gameboys/pocket7/OllehChargeActivity$3;-><init>(Lcom/gameboys/pocket7/OllehChargeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 118
    const v1, 0x1040009

    new-instance v2, Lcom/gameboys/pocket7/OllehChargeActivity$4;

    invoke-direct {v2, p0}, Lcom/gameboys/pocket7/OllehChargeActivity$4;-><init>(Lcom/gameboys/pocket7/OllehChargeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 124
    new-instance v1, Lcom/gameboys/pocket7/OllehChargeActivity$5;

    invoke-direct {v1, p0}, Lcom/gameboys/pocket7/OllehChargeActivity$5;-><init>(Lcom/gameboys/pocket7/OllehChargeActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 133
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/kt/olleh/inapp/KTInAppActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/gameboys/pocket7/OllehChargeActivity;->setContentView(I)V

    .line 53
    iget-object v1, p0, Lcom/gameboys/pocket7/OllehChargeActivity;->mInAPInformationListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {p0, v1}, Lcom/gameboys/pocket7/OllehChargeActivity;->init(Lcom/kt/olleh/inapp/OnInAppListener;)V

    .line 54
    const v1, 0x7f080001

    invoke-virtual {p0, v1}, Lcom/gameboys/pocket7/OllehChargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/gameboys/pocket7/OllehChargeActivity;->closeButton:Landroid/widget/Button;

    .line 55
    iget-object v1, p0, Lcom/gameboys/pocket7/OllehChargeActivity;->closeButton:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 57
    iget-object v1, p0, Lcom/gameboys/pocket7/OllehChargeActivity;->closeButton:Landroid/widget/Button;

    new-instance v2, Lcom/gameboys/pocket7/OllehChargeActivity$2;

    invoke-direct {v2, p0}, Lcom/gameboys/pocket7/OllehChargeActivity$2;-><init>(Lcom/gameboys/pocket7/OllehChargeActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/gameboys/pocket7/OllehChargeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, extra:Landroid/os/Bundle;
    const-string v1, "PRODUCT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/gameboys/pocket7/OllehChargeActivity;->product:I

    .line 67
    iget v1, p0, Lcom/gameboys/pocket7/OllehChargeActivity;->product:I

    sparse-switch v1, :sswitch_data_0

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/gameboys/pocket7/OllehChargeActivity;->ChargeDialog()V

    .line 104
    return-void

    .line 70
    :sswitch_0
    const-string v1, "I00001000"

    iput-object v1, p0, Lcom/gameboys/pocket7/OllehChargeActivity;->PID:Ljava/lang/String;

    .line 71
    const/16 v1, 0x3e8

    sput v1, Lcom/gameboys/pocket7/OllehChargeActivity;->PRODUCT_PRICE:I

    goto :goto_0

    .line 74
    :sswitch_1
    const-string v1, "I00002000"

    iput-object v1, p0, Lcom/gameboys/pocket7/OllehChargeActivity;->PID:Ljava/lang/String;

    .line 75
    const/16 v1, 0x7d0

    sput v1, Lcom/gameboys/pocket7/OllehChargeActivity;->PRODUCT_PRICE:I

    goto :goto_0

    .line 78
    :sswitch_2
    const-string v1, "I00003000"

    iput-object v1, p0, Lcom/gameboys/pocket7/OllehChargeActivity;->PID:Ljava/lang/String;

    .line 79
    const/16 v1, 0xbb8

    sput v1, Lcom/gameboys/pocket7/OllehChargeActivity;->PRODUCT_PRICE:I

    goto :goto_0

    .line 82
    :sswitch_3
    const-string v1, "I00004000"

    iput-object v1, p0, Lcom/gameboys/pocket7/OllehChargeActivity;->PID:Ljava/lang/String;

    .line 83
    const/16 v1, 0xfa0

    sput v1, Lcom/gameboys/pocket7/OllehChargeActivity;->PRODUCT_PRICE:I

    goto :goto_0

    .line 86
    :sswitch_4
    const-string v1, "I00004500"

    iput-object v1, p0, Lcom/gameboys/pocket7/OllehChargeActivity;->PID:Ljava/lang/String;

    .line 87
    const/16 v1, 0x1194

    sput v1, Lcom/gameboys/pocket7/OllehChargeActivity;->PRODUCT_PRICE:I

    goto :goto_0

    .line 90
    :sswitch_5
    const-string v1, "I00005000"

    iput-object v1, p0, Lcom/gameboys/pocket7/OllehChargeActivity;->PID:Ljava/lang/String;

    .line 91
    const/16 v1, 0x1388

    sput v1, Lcom/gameboys/pocket7/OllehChargeActivity;->PRODUCT_PRICE:I

    goto :goto_0

    .line 94
    :sswitch_6
    const-string v1, "I00005500"

    iput-object v1, p0, Lcom/gameboys/pocket7/OllehChargeActivity;->PID:Ljava/lang/String;

    .line 95
    const/16 v1, 0x157c

    sput v1, Lcom/gameboys/pocket7/OllehChargeActivity;->PRODUCT_PRICE:I

    goto :goto_0

    .line 98
    :sswitch_7
    const-string v1, "I00006000"

    iput-object v1, p0, Lcom/gameboys/pocket7/OllehChargeActivity;->PID:Ljava/lang/String;

    .line 99
    const/16 v1, 0x1770

    sput v1, Lcom/gameboys/pocket7/OllehChargeActivity;->PRODUCT_PRICE:I

    goto :goto_0

    .line 67
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
