.class public Lcom/gameboys/pocket7/Dungeons;
.super Landroid/app/Activity;
.source "Dungeons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameboys/pocket7/Dungeons$DungeonsPurchaseObserver;
    }
.end annotation


# static fields
.field private static final DB_INITIALIZED:Ljava/lang/String; = "db_initialized"

.field private static final DIALOG_BILLING_NOT_SUPPORTED_ID:I = 0x2

.field private static final DIALOG_CANNOT_CONNECT_ID:I = 0x1

.field private static final LOG_TEXT_KEY:Ljava/lang/String; = "DUNGEONS_LOG_TEXT"

.field public static final PID_HOT_GIRL:Ljava/lang/String; = "pocket7girl4000"

.field public static final PID_HOT_GIRL600:Ljava/lang/String; = "pocket7girl8500"

.field public static final PID_HOT_GIRLPLUS:Ljava/lang/String; = "pocket7girl6000"

.field public static final PID_NASTY_GIRL:Ljava/lang/String; = "pocket7girl2000"

.field public static final PID_NASTY_GIRL520:Ljava/lang/String; = "pocket7girl7500"

.field public static final PID_NASTY_GIRLPLUS:Ljava/lang/String; = "pocket7girl5000"

.field public static final PID_PICKY_GIRL:Ljava/lang/String; = "pocket7girl3000"

.field public static final PID_PICKY_GIRL560:Ljava/lang/String; = "pocket7girl8000"

.field public static final PID_PICKY_GIRLPLUS:Ljava/lang/String; = "pocket7girl5500"

.field public static final PID_QUTE_GIRL:Ljava/lang/String; = "pocket7girl1000"

.field public static final PID_QUTE_GIRL480:Ljava/lang/String; = "pocket7girl7000"

.field public static final PID_QUTE_GIRLPLUS:Ljava/lang/String; = "pocket7girl4500"

.field public static final PID_SEXY_GIRL440:Ljava/lang/String; = "pocket7girl6500"

.field public static final PRODUCT_HOT_GIRL:I = 0xfa0

.field public static final PRODUCT_HOT_GIRL600:I = 0x2134

.field public static final PRODUCT_HOT_GIRLPLUS:I = 0x1770

.field public static final PRODUCT_NASTY_GIRL:I = 0x7d0

.field public static final PRODUCT_NASTY_GIRL520:I = 0x1d4c

.field public static final PRODUCT_NASTY_GIRLPLUS:I = 0x1388

.field public static final PRODUCT_PICKY_GIRL:I = 0xbb8

.field public static final PRODUCT_PICKY_GIRL560:I = 0x1f40

.field public static final PRODUCT_PICKY_GIRLPLUS:I = 0x157c

.field public static PRODUCT_PRICE:I = 0x0

.field public static final PRODUCT_QUTE_GIRL:I = 0x3e8

.field public static final PRODUCT_QUTE_GIRL480:I = 0x1b58

.field public static final PRODUCT_QUTE_GIRLPLUS:I = 0x1194

.field public static final PRODUCT_SEXY_GIRL440:I = 0x1964

.field private static final TAG:Ljava/lang/String; = "Dungeons"

.field public static base64EncodedPublicKey:Ljava/lang/String;

.field public static chk:Z


# instance fields
.field private PID:Ljava/lang/String;

.field private mBillingService:Lcom/gameboys/pocket7/BillingService;

.field private mDungeonsPurchaseObserver:Lcom/gameboys/pocket7/Dungeons$DungeonsPurchaseObserver;

.field private mHandler:Landroid/os/Handler;

.field private mOwnedItemsCursor:Landroid/database/Cursor;

.field product:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    sput-boolean v1, Lcom/gameboys/pocket7/Dungeons;->chk:Z

    .line 71
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAopWsHTkkgeMAL1uyTorrduw+rRpuvLAspm/O8EepOuYwzRWS7mck/xy1ZWm5LZnm057fDOcEjRxXbMm87cudkxwdVzrOTXZqc2sLUGimMOtPpB/ZLzj6nIr7BQx+jcHZsZtEfGXrZGdAgG5nYztmU1SF1T0BpbbhGq1Tpph8QJZgH/H7kY9GioKlsXEgS6UVRJuIKNFxDHVflWeB/sulDDOGANo1GFwIOL32vmIPGRSgMygNKnVn1nBccbwNaQlyaTV1KK6u3k7dhB3YL25yImC/SDc9H1NogdMH1xvoShXDcTKwWORhA5QpEAycQknZuohs7DYGkBS6Z3y87oorFwIDAQAB"

    sput-object v0, Lcom/gameboys/pocket7/Dungeons;->base64EncodedPublicKey:Ljava/lang/String;

    .line 76
    sput v1, Lcom/gameboys/pocket7/Dungeons;->PRODUCT_PRICE:I

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    const-string v0, "pocket7girl1000"

    iput-object v0, p0, Lcom/gameboys/pocket7/Dungeons;->PID:Ljava/lang/String;

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/gameboys/pocket7/Dungeons;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/gameboys/pocket7/Dungeons;->restoreDatabase()V

    return-void
.end method

.method static synthetic access$1(Lcom/gameboys/pocket7/Dungeons;)Landroid/database/Cursor;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/gameboys/pocket7/Dungeons;->mOwnedItemsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$2(Lcom/gameboys/pocket7/Dungeons;)Lcom/gameboys/pocket7/BillingService;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/gameboys/pocket7/Dungeons;->mBillingService:Lcom/gameboys/pocket7/BillingService;

    return-object v0
.end method

.method static synthetic access$3(Lcom/gameboys/pocket7/Dungeons;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/gameboys/pocket7/Dungeons;->PID:Ljava/lang/String;

    return-object v0
.end method

.method private createDialog(II)Landroid/app/Dialog;
    .locals 6
    .parameter "titleId"
    .parameter "messageId"

    .prologue
    .line 341
    const v3, 0x7f06002b

    invoke-virtual {p0, v3}, Lcom/gameboys/pocket7/Dungeons;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/gameboys/pocket7/Dungeons;->replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, helpUrl:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 347
    .local v1, helpUri:Landroid/net/Uri;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 348
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 349
    const v4, 0x108008a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 350
    invoke-virtual {v3, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 351
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 352
    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 353
    const v4, 0x7f06002a

    .line 354
    new-instance v5, Lcom/gameboys/pocket7/Dungeons$1;

    invoke-direct {v5, p0, v1}, Lcom/gameboys/pocket7/Dungeons$1;-><init>(Lcom/gameboys/pocket7/Dungeons;Landroid/net/Uri;)V

    .line 353
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 362
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 367
    const-string v1, "%lang%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%region%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 369
    .local v0, locale:Ljava/util/Locale;
    const-string v1, "%lang%"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 370
    const-string v1, "%region%"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 372
    .end local v0           #locale:Ljava/util/Locale;
    :cond_1
    return-object p1
.end method

.method private restoreDatabase()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 411
    invoke-virtual {p0, v3}, Lcom/gameboys/pocket7/Dungeons;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 412
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "db_initialized"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 413
    .local v0, initialized:Z
    if-nez v0, :cond_0

    .line 414
    iget-object v2, p0, Lcom/gameboys/pocket7/Dungeons;->mBillingService:Lcom/gameboys/pocket7/BillingService;

    invoke-virtual {v2}, Lcom/gameboys/pocket7/BillingService;->restoreTransactions()Z

    .line 416
    :cond_0
    return-void
.end method

.method private setupWidgets()V
    .locals 3

    .prologue
    .line 383
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 385
    const-string v1, "In App Billing"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 386
    const v1, 0x7f06001f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 387
    const v1, 0x1040013

    new-instance v2, Lcom/gameboys/pocket7/Dungeons$2;

    invoke-direct {v2, p0}, Lcom/gameboys/pocket7/Dungeons$2;-><init>(Lcom/gameboys/pocket7/Dungeons;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 393
    const v1, 0x1040009

    new-instance v2, Lcom/gameboys/pocket7/Dungeons$3;

    invoke-direct {v2, p0}, Lcom/gameboys/pocket7/Dungeons$3;-><init>(Lcom/gameboys/pocket7/Dungeons;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 399
    new-instance v1, Lcom/gameboys/pocket7/Dungeons$4;

    invoke-direct {v1, p0}, Lcom/gameboys/pocket7/Dungeons$4;-><init>(Lcom/gameboys/pocket7/Dungeons;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 408
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/gameboys/pocket7/Dungeons;->setContentView(I)V

    .line 113
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/gameboys/pocket7/Dungeons;->mHandler:Landroid/os/Handler;

    .line 114
    new-instance v1, Lcom/gameboys/pocket7/Dungeons$DungeonsPurchaseObserver;

    iget-object v2, p0, Lcom/gameboys/pocket7/Dungeons;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/gameboys/pocket7/Dungeons$DungeonsPurchaseObserver;-><init>(Lcom/gameboys/pocket7/Dungeons;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/gameboys/pocket7/Dungeons;->mDungeonsPurchaseObserver:Lcom/gameboys/pocket7/Dungeons$DungeonsPurchaseObserver;

    .line 115
    new-instance v1, Lcom/gameboys/pocket7/BillingService;

    invoke-direct {v1}, Lcom/gameboys/pocket7/BillingService;-><init>()V

    iput-object v1, p0, Lcom/gameboys/pocket7/Dungeons;->mBillingService:Lcom/gameboys/pocket7/BillingService;

    .line 116
    iget-object v1, p0, Lcom/gameboys/pocket7/Dungeons;->mBillingService:Lcom/gameboys/pocket7/BillingService;

    invoke-virtual {v1, p0}, Lcom/gameboys/pocket7/BillingService;->setContext(Landroid/content/Context;)V

    .line 118
    invoke-virtual {p0}, Lcom/gameboys/pocket7/Dungeons;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 119
    .local v0, extra:Landroid/os/Bundle;
    const-string v1, "PRODUCT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/gameboys/pocket7/Dungeons;->product:I

    .line 121
    iget v1, p0, Lcom/gameboys/pocket7/Dungeons;->product:I

    sparse-switch v1, :sswitch_data_0

    .line 177
    :goto_0
    invoke-direct {p0}, Lcom/gameboys/pocket7/Dungeons;->setupWidgets()V

    .line 180
    iget-object v1, p0, Lcom/gameboys/pocket7/Dungeons;->mDungeonsPurchaseObserver:Lcom/gameboys/pocket7/Dungeons$DungeonsPurchaseObserver;

    invoke-static {v1}, Lcom/gameboys/pocket7/ResponseHandler;->register(Lcom/gameboys/pocket7/PurchaseObserver;)V

    .line 181
    iget-object v1, p0, Lcom/gameboys/pocket7/Dungeons;->mBillingService:Lcom/gameboys/pocket7/BillingService;

    invoke-virtual {v1}, Lcom/gameboys/pocket7/BillingService;->checkBillingSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/gameboys/pocket7/Dungeons;->showDialog(I)V

    .line 186
    :cond_0
    return-void

    .line 124
    :sswitch_0
    const-string v1, "pocket7girl1000"

    iput-object v1, p0, Lcom/gameboys/pocket7/Dungeons;->PID:Ljava/lang/String;

    .line 125
    const/16 v1, 0x3e8

    sput v1, Lcom/gameboys/pocket7/Dungeons;->PRODUCT_PRICE:I

    goto :goto_0

    .line 128
    :sswitch_1
    const-string v1, "pocket7girl2000"

    iput-object v1, p0, Lcom/gameboys/pocket7/Dungeons;->PID:Ljava/lang/String;

    .line 129
    const/16 v1, 0x7d0

    sput v1, Lcom/gameboys/pocket7/Dungeons;->PRODUCT_PRICE:I

    goto :goto_0

    .line 132
    :sswitch_2
    const-string v1, "pocket7girl3000"

    iput-object v1, p0, Lcom/gameboys/pocket7/Dungeons;->PID:Ljava/lang/String;

    .line 133
    const/16 v1, 0xbb8

    sput v1, Lcom/gameboys/pocket7/Dungeons;->PRODUCT_PRICE:I

    goto :goto_0

    .line 136
    :sswitch_3
    const-string v1, "pocket7girl4000"

    iput-object v1, p0, Lcom/gameboys/pocket7/Dungeons;->PID:Ljava/lang/String;

    .line 137
    const/16 v1, 0xfa0

    sput v1, Lcom/gameboys/pocket7/Dungeons;->PRODUCT_PRICE:I

    goto :goto_0

    .line 140
    :sswitch_4
    const-string v1, "pocket7girl4500"

    iput-object v1, p0, Lcom/gameboys/pocket7/Dungeons;->PID:Ljava/lang/String;

    .line 141
    const/16 v1, 0x1194

    sput v1, Lcom/gameboys/pocket7/Dungeons;->PRODUCT_PRICE:I

    goto :goto_0

    .line 144
    :sswitch_5
    const-string v1, "pocket7girl5000"

    iput-object v1, p0, Lcom/gameboys/pocket7/Dungeons;->PID:Ljava/lang/String;

    .line 145
    const/16 v1, 0x1388

    sput v1, Lcom/gameboys/pocket7/Dungeons;->PRODUCT_PRICE:I

    goto :goto_0

    .line 148
    :sswitch_6
    const-string v1, "pocket7girl5500"

    iput-object v1, p0, Lcom/gameboys/pocket7/Dungeons;->PID:Ljava/lang/String;

    .line 149
    const/16 v1, 0x157c

    sput v1, Lcom/gameboys/pocket7/Dungeons;->PRODUCT_PRICE:I

    goto :goto_0

    .line 152
    :sswitch_7
    const-string v1, "pocket7girl6000"

    iput-object v1, p0, Lcom/gameboys/pocket7/Dungeons;->PID:Ljava/lang/String;

    .line 153
    const/16 v1, 0x1770

    sput v1, Lcom/gameboys/pocket7/Dungeons;->PRODUCT_PRICE:I

    goto :goto_0

    .line 156
    :sswitch_8
    const-string v1, "pocket7girl6500"

    iput-object v1, p0, Lcom/gameboys/pocket7/Dungeons;->PID:Ljava/lang/String;

    .line 157
    const/16 v1, 0x1964

    sput v1, Lcom/gameboys/pocket7/Dungeons;->PRODUCT_PRICE:I

    goto :goto_0

    .line 160
    :sswitch_9
    const-string v1, "pocket7girl7000"

    iput-object v1, p0, Lcom/gameboys/pocket7/Dungeons;->PID:Ljava/lang/String;

    .line 161
    const/16 v1, 0x1b58

    sput v1, Lcom/gameboys/pocket7/Dungeons;->PRODUCT_PRICE:I

    goto :goto_0

    .line 164
    :sswitch_a
    const-string v1, "pocket7girl7500"

    iput-object v1, p0, Lcom/gameboys/pocket7/Dungeons;->PID:Ljava/lang/String;

    .line 165
    const/16 v1, 0x1d4c

    sput v1, Lcom/gameboys/pocket7/Dungeons;->PRODUCT_PRICE:I

    goto :goto_0

    .line 168
    :sswitch_b
    const-string v1, "pocket7girl8000"

    iput-object v1, p0, Lcom/gameboys/pocket7/Dungeons;->PID:Ljava/lang/String;

    .line 169
    const/16 v1, 0x1f40

    sput v1, Lcom/gameboys/pocket7/Dungeons;->PRODUCT_PRICE:I

    goto :goto_0

    .line 172
    :sswitch_c
    const-string v1, "pocket7girl8500"

    iput-object v1, p0, Lcom/gameboys/pocket7/Dungeons;->PID:Ljava/lang/String;

    .line 173
    const/16 v1, 0x2134

    sput v1, Lcom/gameboys/pocket7/Dungeons;->PRODUCT_PRICE:I

    goto/16 :goto_0

    .line 121
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

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 328
    packed-switch p1, :pswitch_data_0

    .line 336
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 330
    :pswitch_0
    const v0, 0x7f060028

    .line 331
    const v1, 0x7f060029

    .line 330
    invoke-direct {p0, v0, v1}, Lcom/gameboys/pocket7/Dungeons;->createDialog(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 333
    :pswitch_1
    const v0, 0x7f060026

    .line 334
    const v1, 0x7f060027

    .line 333
    invoke-direct {p0, v0, v1}, Lcom/gameboys/pocket7/Dungeons;->createDialog(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 306
    iget-object v0, p0, Lcom/gameboys/pocket7/Dungeons;->mBillingService:Lcom/gameboys/pocket7/BillingService;

    invoke-virtual {v0}, Lcom/gameboys/pocket7/BillingService;->unbind()V

    .line 307
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 323
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 324
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 316
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 291
    iget-object v0, p0, Lcom/gameboys/pocket7/Dungeons;->mDungeonsPurchaseObserver:Lcom/gameboys/pocket7/Dungeons$DungeonsPurchaseObserver;

    invoke-static {v0}, Lcom/gameboys/pocket7/ResponseHandler;->register(Lcom/gameboys/pocket7/PurchaseObserver;)V

    .line 292
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 300
    iget-object v0, p0, Lcom/gameboys/pocket7/Dungeons;->mDungeonsPurchaseObserver:Lcom/gameboys/pocket7/Dungeons$DungeonsPurchaseObserver;

    invoke-static {v0}, Lcom/gameboys/pocket7/ResponseHandler;->unregister(Lcom/gameboys/pocket7/PurchaseObserver;)V

    .line 301
    return-void
.end method
