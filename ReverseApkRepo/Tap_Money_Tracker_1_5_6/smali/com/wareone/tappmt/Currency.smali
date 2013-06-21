.class public Lcom/wareone/tappmt/Currency;
.super Landroid/app/Activity;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/Currency$CurrencyAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private handler:Landroid/os/Handler;

.field private m_RateThread:Ljava/lang/Thread;

.field private m_adapter:Lcom/wareone/tappmt/Currency$CurrencyAdapter;

.field private m_data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

.field private m_dlg:Landroid/app/ProgressDialog;

.field private m_values:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/wareone/tappmt/Currency;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/Currency;->TAG:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 470
    new-instance v0, Lcom/wareone/tappmt/Currency$1;

    invoke-direct {v0, p0}, Lcom/wareone/tappmt/Currency$1;-><init>(Lcom/wareone/tappmt/Currency;)V

    iput-object v0, p0, Lcom/wareone/tappmt/Currency;->handler:Landroid/os/Handler;

    .line 541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/Currency;->m_data:Ljava/util/List;

    .line 544
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/Currency;->m_values:Landroid/content/ContentValues;

    .line 545
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wareone/tappmt/Currency;->m_RateThread:Ljava/lang/Thread;

    .line 59
    return-void
.end method

.method private _loadData()V
    .locals 5

    .prologue
    .line 447
    iget-object v3, p0, Lcom/wareone/tappmt/Currency;->m_data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 448
    iget-object v3, p0, Lcom/wareone/tappmt/Currency;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getCurrencies()Landroid/database/Cursor;

    move-result-object v0

    .line 449
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 451
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 453
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 454
    .local v2, value:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/wareone/tappmt/Currency;->m_data:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->FIELDS:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_3

    .line 459
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 452
    if-nez v3, :cond_0

    .line 461
    .end local v1           #i:I
    .end local v2           #value:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_2
    return-void

    .line 456
    .restart local v1       #i:I
    .restart local v2       #value:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->FIELDS:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->FIELDS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private _setDefaultCurrency()V
    .locals 3

    .prologue
    .line 418
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 419
    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 420
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 421
    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 422
    const v1, 0x7f09004d

    new-instance v2, Lcom/wareone/tappmt/Currency$6;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Currency$6;-><init>(Lcom/wareone/tappmt/Currency;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 432
    const v1, 0x7f09004b

    new-instance v2, Lcom/wareone/tappmt/Currency$7;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Currency$7;-><init>(Lcom/wareone/tappmt/Currency;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 441
    return-void
.end method

.method private _setDigits()V
    .locals 4

    .prologue
    .line 375
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 376
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "2"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/wareone/tappmt/Currency;->m_values:Landroid/content/ContentValues;

    const-string v3, "digits"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 377
    new-instance v3, Lcom/wareone/tappmt/Currency$4;

    invoke-direct {v3, p0}, Lcom/wareone/tappmt/Currency$4;-><init>(Lcom/wareone/tappmt/Currency;)V

    .line 376
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 392
    return-void
.end method

.method private _setSymbol()V
    .locals 5

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/wareone/tappmt/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, symbols:[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 399
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 400
    iget-object v3, p0, Lcom/wareone/tappmt/Currency;->m_values:Landroid/content/ContentValues;

    const-string v4, "symbol"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 401
    new-instance v4, Lcom/wareone/tappmt/Currency$5;

    invoke-direct {v4, p0, v1}, Lcom/wareone/tappmt/Currency$5;-><init>(Lcom/wareone/tappmt/Currency;[Ljava/lang/String;)V

    .line 400
    invoke-virtual {v2, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 414
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 416
    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Currency;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Lcom/wareone/tappmt/Currency;->m_dlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/wareone/tappmt/Currency;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/wareone/tappmt/Currency;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 541
    iget-object v0, p0, Lcom/wareone/tappmt/Currency;->m_data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/wareone/tappmt/Currency;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 544
    iget-object v0, p0, Lcom/wareone/tappmt/Currency;->m_values:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$4(Lcom/wareone/tappmt/Currency;)Lcom/wareone/tappmt/PmtDbAdapter;
    .locals 1
    .parameter

    .prologue
    .line 543
    iget-object v0, p0, Lcom/wareone/tappmt/Currency;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/wareone/tappmt/Currency;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/wareone/tappmt/Currency;->_setDigits()V

    return-void
.end method

.method static synthetic access$6(Lcom/wareone/tappmt/Currency;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/wareone/tappmt/Currency;->_setSymbol()V

    return-void
.end method

.method static synthetic access$7(Lcom/wareone/tappmt/Currency;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/wareone/tappmt/Currency;->_setDefaultCurrency()V

    return-void
.end method


# virtual methods
.method protected _refresh()V
    .locals 1

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/wareone/tappmt/Currency;->_loadData()V

    .line 467
    iget-object v0, p0, Lcom/wareone/tappmt/Currency;->m_adapter:Lcom/wareone/tappmt/Currency$CurrencyAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/Currency$CurrencyAdapter;->notifyDataSetChanged()V

    .line 468
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    const v1, 0x7f03000f

    invoke-virtual {p0, v1}, Lcom/wareone/tappmt/Currency;->setContentView(I)V

    .line 175
    const v1, 0x7f090066

    invoke-virtual {p0, v1}, Lcom/wareone/tappmt/Currency;->setTitle(I)V

    .line 177
    new-instance v1, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v1, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wareone/tappmt/Currency;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 178
    iget-object v1, p0, Lcom/wareone/tappmt/Currency;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v1}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 179
    invoke-direct {p0}, Lcom/wareone/tappmt/Currency;->_loadData()V

    .line 181
    const v1, 0x7f0c004a

    invoke-virtual {p0, v1}, Lcom/wareone/tappmt/Currency;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 182
    .local v0, lv:Landroid/widget/ListView;
    new-instance v1, Lcom/wareone/tappmt/Currency$CurrencyAdapter;

    iget-object v2, p0, Lcom/wareone/tappmt/Currency;->m_data:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/wareone/tappmt/Currency$CurrencyAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/wareone/tappmt/Currency;->m_adapter:Lcom/wareone/tappmt/Currency$CurrencyAdapter;

    .line 184
    iget-object v1, p0, Lcom/wareone/tappmt/Currency;->m_adapter:Lcom/wareone/tappmt/Currency$CurrencyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    new-instance v1, Lcom/wareone/tappmt/Currency$2;

    invoke-direct {v1, p0}, Lcom/wareone/tappmt/Currency$2;-><init>(Lcom/wareone/tappmt/Currency;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 237
    new-instance v1, Lcom/wareone/tappmt/Currency$3;

    invoke-direct {v1, p0}, Lcom/wareone/tappmt/Currency$3;-><init>(Lcom/wareone/tappmt/Currency;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 277
    const v1, 0x7f0900c1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 279
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/wareone/tappmt/Currency;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 291
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 293
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/wareone/tappmt/Currency;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 285
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 286
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 300
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 370
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    .line 306
    :pswitch_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/wareone/tappmt/Currency;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 307
    .local v2, mConnMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_0

    .line 308
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    .line 310
    :cond_0
    sget-object v4, Lcom/wareone/tappmt/Currency;->TAG:Ljava/lang/String;

    const-string v5, "show progress"

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/wareone/tappmt/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09007c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/wareone/tappmt/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900ab

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5, v8, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/wareone/tappmt/Currency;->m_dlg:Landroid/app/ProgressDialog;

    .line 323
    sget-object v4, Lcom/wareone/tappmt/Currency;->TAG:Ljava/lang/String;

    const-string v5, "doSync"

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v4, p0, Lcom/wareone/tappmt/Currency;->m_data:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 325
    .local v0, _currency:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/wareone/tappmt/Currency;->m_data:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 329
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/wareone/tappmt/CurrencyRunner;

    iget-object v5, p0, Lcom/wareone/tappmt/Currency;->handler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5, v0}, Lcom/wareone/tappmt/CurrencyRunner;-><init>(Landroid/content/Context;Landroid/os/Handler;[Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 330
    .local v3, thread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 326
    .end local v3           #thread:Ljava/lang/Thread;
    :cond_1
    iget-object v4, p0, Lcom/wareone/tappmt/Currency;->m_data:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "currency_name"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 339
    .end local v0           #_currency:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_2
    const v4, 0x7f0900a9

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x7f0c00c1
        :pswitch_0
    .end packed-switch
.end method
