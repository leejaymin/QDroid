.class public Lcom/falmarri/futures/Futures;
.super Landroid/app/ListActivity;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/falmarri/futures/Futures$QuoteAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_SELECT_INDICES:I = 0x2

.field private static final MENU_REFRESH:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Futures"

.field public static final indices:[Ljava/lang/String;


# instance fields
.field adapter:Lcom/falmarri/futures/Futures$QuoteAdapter;

.field bool:Z

.field checkedIndices:[Z

.field ctx:Landroid/content/Context;

.field display:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field displayedIndices:Ljava/lang/String;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mIsBound:Z

.field pref:Landroid/content/SharedPreferences;

.field private quoteBinder:Lcom/falmarri/futures/QuoteGetterService;

.field private final quotes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/falmarri/futures/Quote;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Landroid/content/BroadcastReceiver;

.field region:Ljava/lang/String;

.field reload:Z

.field which:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DJIA INDEX"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "S&P 500"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 57
    const-string v2, "NASDAQ 100"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "S&P/TSX 60 IX"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "MEX BOLSA IDX"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BOVESPA INDEX"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 58
    const-string v2, "EURO STOXX 50"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FTSE 100 IDX"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CAC40 10 EURO"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DAX INDEX"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "IBEX 35 INDX"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 59
    const-string v2, "FTSE/MIB IDX"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "AMSTERDAM IDX"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "OMXS30 IND"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "SWISS MKT IX"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 60
    const-string v2, "NIKKEI 225 (OSE)"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 61
    const-string v2, "HANG SENG IDX"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "SPI 200"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "CSI 300 IDX FUTUR"

    aput-object v2, v0, v1

    .line 56
    sput-object v0, Lcom/falmarri/futures/Futures;->indices:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 39
    const-string v0, "downloaded"

    iput-object v0, p0, Lcom/falmarri/futures/Futures;->which:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/falmarri/futures/Futures;->region:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/falmarri/futures/Futures;->bool:Z

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/falmarri/futures/Futures;->reload:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/falmarri/futures/Futures;->quotes:Ljava/util/ArrayList;

    .line 65
    const/16 v0, 0x13

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/falmarri/futures/Futures;->checkedIndices:[Z

    .line 73
    new-instance v0, Lcom/falmarri/futures/Futures$1;

    invoke-direct {v0, p0}, Lcom/falmarri/futures/Futures$1;-><init>(Lcom/falmarri/futures/Futures;)V

    iput-object v0, p0, Lcom/falmarri/futures/Futures;->receiver:Landroid/content/BroadcastReceiver;

    .line 95
    new-instance v0, Lcom/falmarri/futures/Futures$2;

    invoke-direct {v0, p0}, Lcom/falmarri/futures/Futures$2;-><init>(Lcom/falmarri/futures/Futures;)V

    iput-object v0, p0, Lcom/falmarri/futures/Futures;->mConnection:Landroid/content/ServiceConnection;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/falmarri/futures/Futures;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/falmarri/futures/Futures;->getFreshQuotes()V

    return-void
.end method

.method static synthetic access$1(Lcom/falmarri/futures/Futures;Lcom/falmarri/futures/QuoteGetterService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/falmarri/futures/Futures;->quoteBinder:Lcom/falmarri/futures/QuoteGetterService;

    return-void
.end method

.method static synthetic access$2(Lcom/falmarri/futures/Futures;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/falmarri/futures/Futures;->mIsBound:Z

    return-void
.end method

.method static synthetic access$3(Lcom/falmarri/futures/Futures;)Lcom/falmarri/futures/QuoteGetterService;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/falmarri/futures/Futures;->quoteBinder:Lcom/falmarri/futures/QuoteGetterService;

    return-object v0
.end method

.method private doBindService()V
    .locals 3

    .prologue
    .line 169
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/falmarri/futures/QuoteGetterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/falmarri/futures/Futures;->mConnection:Landroid/content/ServiceConnection;

    .line 170
    const/4 v2, 0x1

    .line 169
    invoke-virtual {p0, v0, v1, v2}, Lcom/falmarri/futures/Futures;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 171
    iget-object v0, p0, Lcom/falmarri/futures/Futures;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 172
    const-string v2, "com.falmarri.futures.QuoteUpdateEvent"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, v0, v1}, Lcom/falmarri/futures/Futures;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    return-void
.end method

.method private doUnbindService()V
    .locals 2

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/falmarri/futures/Futures;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/falmarri/futures/Futures;->quoteBinder:Lcom/falmarri/futures/QuoteGetterService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/falmarri/futures/QuoteGetterService;->connect(Z)V

    .line 181
    const-string v0, "Futures"

    const-string v1, "Unbinding service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/falmarri/futures/Futures;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/falmarri/futures/Futures;->unbindService(Landroid/content/ServiceConnection;)V

    .line 186
    :cond_0
    return-void
.end method

.method private getFreshQuotes()V
    .locals 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/falmarri/futures/Futures;->mIsBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/falmarri/futures/Futures;->quoteBinder:Lcom/falmarri/futures/QuoteGetterService;

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "Futures"

    const-string v1, "Received new quotes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/falmarri/futures/Futures;->quotes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 90
    iget-object v0, p0, Lcom/falmarri/futures/Futures;->quotes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/falmarri/futures/Futures;->quoteBinder:Lcom/falmarri/futures/QuoteGetterService;

    invoke-virtual {v1}, Lcom/falmarri/futures/QuoteGetterService;->getQuotes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 91
    iget-object v0, p0, Lcom/falmarri/futures/Futures;->adapter:Lcom/falmarri/futures/Futures$QuoteAdapter;

    invoke-virtual {v0}, Lcom/falmarri/futures/Futures$QuoteAdapter;->notifyDataSetChanged()V

    .line 93
    :cond_0
    return-void
.end method

.method private showPickerDialog()V
    .locals 5

    .prologue
    .line 228
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 230
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    sget-object v2, Lcom/falmarri/futures/Futures;->indices:[Ljava/lang/String;

    iget-object v3, p0, Lcom/falmarri/futures/Futures;->checkedIndices:[Z

    .line 231
    new-instance v4, Lcom/falmarri/futures/Futures$3;

    invoke-direct {v4, p0}, Lcom/falmarri/futures/Futures$3;-><init>(Lcom/falmarri/futures/Futures;)V

    .line 230
    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 246
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 248
    const-string v3, "Indices"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 250
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 252
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/falmarri/futures/QuoteGetterService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/falmarri/futures/Futures;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 151
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/falmarri/futures/Futures;->pref:Landroid/content/SharedPreferences;

    .line 153
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/falmarri/futures/Futures;->indices:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/falmarri/futures/Futures;->checkedIndices:[Z

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 160
    :cond_0
    new-instance v1, Lcom/falmarri/futures/Futures$QuoteAdapter;

    const v2, 0x7f030002

    iget-object v3, p0, Lcom/falmarri/futures/Futures;->quotes:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/falmarri/futures/Futures$QuoteAdapter;-><init>(Lcom/falmarri/futures/Futures;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/falmarri/futures/Futures;->adapter:Lcom/falmarri/futures/Futures$QuoteAdapter;

    .line 161
    iget-object v1, p0, Lcom/falmarri/futures/Futures;->adapter:Lcom/falmarri/futures/Futures$QuoteAdapter;

    invoke-virtual {p0, v1}, Lcom/falmarri/futures/Futures;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    return-void

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/falmarri/futures/Futures;->checkedIndices:[Z

    iget-object v2, p0, Lcom/falmarri/futures/Futures;->pref:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/falmarri/futures/Futures;->indices:[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 191
    const-string v0, "Refresh"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 192
    const/4 v0, 0x2

    const-string v1, "Select Indices to Show"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 194
    return v3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/falmarri/futures/QuoteGetterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/falmarri/futures/Futures;->stopService(Landroid/content/Intent;)Z

    .line 285
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 221
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/falmarri/futures/Futures;->quoteBinder:Lcom/falmarri/futures/QuoteGetterService;

    invoke-virtual {v0}, Lcom/falmarri/futures/QuoteGetterService;->update()V

    goto :goto_0

    .line 216
    :pswitch_1
    invoke-direct {p0}, Lcom/falmarri/futures/Futures;->showPickerDialog()V

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 264
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 265
    iget-object v0, p0, Lcom/falmarri/futures/Futures;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/falmarri/futures/Futures;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 266
    invoke-direct {p0}, Lcom/falmarri/futures/Futures;->doUnbindService()V

    .line 268
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 258
    invoke-direct {p0}, Lcom/falmarri/futures/Futures;->doBindService()V

    .line 260
    return-void
.end method
