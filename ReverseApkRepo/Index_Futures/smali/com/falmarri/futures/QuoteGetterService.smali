.class public Lcom/falmarri/futures/QuoteGetterService;
.super Landroid/app/Service;
.source "QuoteGetterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/falmarri/futures/QuoteGetterService$MyBinder;,
        Lcom/falmarri/futures/QuoteGetterService$QuoteGetter;
    }
.end annotation


# static fields
.field public static final BROADCAST_UPDATED:Ljava/lang/String; = "com.falmarri.futures.QuoteUpdateEvent"

.field public static final BROADCAST_UPDATE_NOW:Ljava/lang/String; = "com.falmarri.futures.UPDATE"

.field private static final indices:[Ljava/lang/String;


# instance fields
.field appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final binder:Landroid/os/IBinder;

.field private broadcast:Landroid/content/Intent;

.field displayedIndices:Ljava/lang/String;

.field private volatile displayedQuotes:Lcom/falmarri/futures/QuoteList;

.field futuresWidget:Landroid/content/ComponentName;

.field pref:Landroid/content/SharedPreferences;

.field prefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private volatile quotes:Lcom/falmarri/futures/QuoteList;

.field private receiver:Landroid/content/BroadcastReceiver;

.field removeViews:Landroid/widget/RemoteViews;

.field updated:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DJIA INDEX"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "S&P 500"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 38
    const-string v2, "NASDAQ 100"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "S&P/TSX 60"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "MEX BOLSA"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BOVESPA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 39
    const-string v2, "DJ EURO STOXX 50"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FTSE 100"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CAC 40 10 EURO"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DAX"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "IBEX 35"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 40
    const-string v2, "FTSE MIB"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "AMSTERDAM"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "OMXS30"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "SWISS MARKET"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "NIKKEI 225"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 41
    const-string v2, "HANG SENG"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "SPI 200"

    aput-object v2, v0, v1

    .line 37
    sput-object v0, Lcom/falmarri/futures/QuoteGetterService;->indices:[Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    new-instance v0, Lcom/falmarri/futures/QuoteList;

    invoke-direct {v0}, Lcom/falmarri/futures/QuoteList;-><init>()V

    iput-object v0, p0, Lcom/falmarri/futures/QuoteGetterService;->quotes:Lcom/falmarri/futures/QuoteList;

    .line 31
    new-instance v0, Lcom/falmarri/futures/QuoteGetterService$MyBinder;

    invoke-direct {v0, p0}, Lcom/falmarri/futures/QuoteGetterService$MyBinder;-><init>(Lcom/falmarri/futures/QuoteGetterService;)V

    iput-object v0, p0, Lcom/falmarri/futures/QuoteGetterService;->binder:Landroid/os/IBinder;

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.falmarri.futures.QuoteUpdateEvent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/falmarri/futures/QuoteGetterService;->broadcast:Landroid/content/Intent;

    .line 63
    new-instance v0, Lcom/falmarri/futures/QuoteGetterService$1;

    invoke-direct {v0, p0}, Lcom/falmarri/futures/QuoteGetterService$1;-><init>(Lcom/falmarri/futures/QuoteGetterService;)V

    iput-object v0, p0, Lcom/falmarri/futures/QuoteGetterService;->receiver:Landroid/content/BroadcastReceiver;

    .line 80
    new-instance v0, Lcom/falmarri/futures/QuoteGetterService$2;

    invoke-direct {v0, p0}, Lcom/falmarri/futures/QuoteGetterService$2;-><init>(Lcom/falmarri/futures/QuoteGetterService;)V

    iput-object v0, p0, Lcom/falmarri/futures/QuoteGetterService;->prefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 26
    return-void
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/falmarri/futures/QuoteGetterService;->indices:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/falmarri/futures/QuoteGetterService;)Lcom/falmarri/futures/QuoteList;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/falmarri/futures/QuoteGetterService;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/falmarri/futures/QuoteGetterService;->putQuote(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/falmarri/futures/QuoteGetterService;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/falmarri/futures/QuoteGetterService;->broadcast:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$4(Lcom/falmarri/futures/QuoteGetterService;Lcom/falmarri/futures/QuoteList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/falmarri/futures/QuoteGetterService;->quotes:Lcom/falmarri/futures/QuoteList;

    return-void
.end method

.method static synthetic access$5(Lcom/falmarri/futures/QuoteGetterService;Lcom/falmarri/futures/QuoteList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    return-void
.end method

.method private putQuote(Ljava/lang/String;Z)V
    .locals 4
    .parameter "index"
    .parameter "in"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->quotes:Lcom/falmarri/futures/QuoteList;

    invoke-virtual {v1, p1}, Lcom/falmarri/futures/QuoteList;->take(Ljava/lang/String;)Lcom/falmarri/futures/Quote;

    move-result-object v1

    iget-boolean v1, v1, Lcom/falmarri/futures/Quote;->blank:Z

    if-eqz v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    if-nez p2, :cond_3

    .line 124
    const/4 v0, 0x1

    .local v0, j:I
    :goto_1
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    invoke-virtual {v1}, Lcom/falmarri/futures/QuoteList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    invoke-virtual {v1, v0}, Lcom/falmarri/futures/QuoteList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/falmarri/futures/Quote;

    invoke-virtual {v1}, Lcom/falmarri/futures/Quote;->getIndex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    invoke-virtual {v1, v0}, Lcom/falmarri/futures/QuoteList;->remove(I)Ljava/lang/Object;

    .line 124
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    .end local v0           #j:I
    :cond_3
    const/4 v0, 0x1

    .restart local v0       #j:I
    :goto_2
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    invoke-virtual {v1}, Lcom/falmarri/futures/QuoteList;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 159
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    iget-object v2, p0, Lcom/falmarri/futures/QuoteGetterService;->quotes:Lcom/falmarri/futures/QuoteList;

    invoke-virtual {v2, p1}, Lcom/falmarri/futures/QuoteList;->take(Ljava/lang/String;)Lcom/falmarri/futures/Quote;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/falmarri/futures/QuoteList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_4
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    invoke-virtual {v1, v0}, Lcom/falmarri/futures/QuoteList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/falmarri/futures/Quote;

    iget-boolean v1, v1, Lcom/falmarri/futures/Quote;->blank:Z

    if-nez v1, :cond_5

    .line 137
    sget-object v1, Lcom/falmarri/futures/QuoteGetterService;->indices:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 138
    sget-object v3, Lcom/falmarri/futures/QuoteGetterService;->indices:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 137
    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 139
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    invoke-virtual {v1, v0}, Lcom/falmarri/futures/QuoteList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/falmarri/futures/Quote;

    invoke-virtual {v1}, Lcom/falmarri/futures/Quote;->getIndex()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 141
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    iget-object v2, p0, Lcom/falmarri/futures/QuoteGetterService;->quotes:Lcom/falmarri/futures/QuoteList;

    invoke-virtual {v2, p1}, Lcom/falmarri/futures/QuoteList;->take(Ljava/lang/String;)Lcom/falmarri/futures/Quote;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/falmarri/futures/QuoteList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 147
    :cond_5
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    invoke-virtual {v1, v0}, Lcom/falmarri/futures/QuoteList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/falmarri/futures/Quote;

    iget-boolean v1, v1, Lcom/falmarri/futures/Quote;->blank:Z

    if-eqz v1, :cond_6

    .line 148
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    .line 149
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/falmarri/futures/QuoteList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/falmarri/futures/Quote;

    invoke-virtual {v1}, Lcom/falmarri/futures/Quote;->getRegion()Ljava/lang/String;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/falmarri/futures/QuoteGetterService;->quotes:Lcom/falmarri/futures/QuoteList;

    invoke-virtual {v2, p1}, Lcom/falmarri/futures/QuoteList;->take(Ljava/lang/String;)Lcom/falmarri/futures/Quote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/falmarri/futures/Quote;->getRegion()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 152
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    iget-object v2, p0, Lcom/falmarri/futures/QuoteGetterService;->quotes:Lcom/falmarri/futures/QuoteList;

    invoke-virtual {v2, p1}, Lcom/falmarri/futures/QuoteList;->take(Ljava/lang/String;)Lcom/falmarri/futures/Quote;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/falmarri/futures/QuoteList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 133
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method


# virtual methods
.method public buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 212
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030003

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 213
    .local v2, updateViews:Landroid/widget/RemoteViews;
    const v3, 0x7f080002

    const-string v4, "Text"

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 214
    const v3, 0x7f080004

    const-string v4, "-32.01"

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 215
    const v3, 0x7f080003

    const-string v4, "3829.39"

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 216
    const v3, 0x7f080005

    const-string v4, "10/32"

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/falmarri/futures/Futures;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v0, i:Landroid/content/Intent;
    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 220
    .local v1, pend:Landroid/app/PendingIntent;
    const v3, 0x7f080006

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 222
    return-object v2
.end method

.method public connect(Z)V
    .locals 2
    .parameter "a"

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/falmarri/futures/QuoteGetterService;->pref:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->prefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/falmarri/futures/QuoteGetterService;->pref:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->prefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public getQuotes()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/falmarri/futures/Quote;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    if-nez v1, :cond_0

    .line 252
    iget-object v2, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    monitor-enter v2

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 255
    invoke-virtual {p0}, Lcom/falmarri/futures/QuoteGetterService;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    return-object v1

    .line 256
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 252
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/falmarri/futures/QuoteGetterService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 170
    const-string v0, "Futures"

    const-string v1, "Service coming up"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v0, Lcom/falmarri/futures/QuoteList;

    invoke-direct {v0}, Lcom/falmarri/futures/QuoteList;-><init>()V

    iput-object v0, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    .line 175
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/falmarri/futures/QuoteGetterService;->pref:Landroid/content/SharedPreferences;

    .line 178
    iget-object v0, p0, Lcom/falmarri/futures/QuoteGetterService;->pref:Landroid/content/SharedPreferences;

    const-string v1, "indices"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedIndices:Ljava/lang/String;

    .line 186
    invoke-virtual {p0}, Lcom/falmarri/futures/QuoteGetterService;->update()V

    .line 188
    invoke-virtual {p0, p0}, Lcom/falmarri/futures/QuoteGetterService;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Lcom/falmarri/futures/QuoteGetterService;->removeViews:Landroid/widget/RemoteViews;

    .line 190
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/falmarri/futures/FuturesWidget;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/falmarri/futures/QuoteGetterService;->futuresWidget:Landroid/content/ComponentName;

    .line 192
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/falmarri/futures/QuoteGetterService;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 194
    iget-object v0, p0, Lcom/falmarri/futures/QuoteGetterService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.falmarri.futures.UPDATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/falmarri/futures/QuoteGetterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 312
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 313
    const-string v0, "Futures"

    const-string v1, "Service going down"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/falmarri/futures/QuoteGetterService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/falmarri/futures/QuoteGetterService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 316
    iget-object v0, p0, Lcom/falmarri/futures/QuoteGetterService;->pref:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->prefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 318
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startID"

    .prologue
    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public setDisplayed()V
    .locals 6

    .prologue
    .line 269
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Setting displayed"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->quotes:Lcom/falmarri/futures/QuoteList;

    if-nez v1, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/falmarri/futures/QuoteGetterService;->update()V

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    monitor-enter v2

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    invoke-virtual {v1}, Lcom/falmarri/futures/QuoteList;->clear()V

    .line 283
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->quotes:Lcom/falmarri/futures/QuoteList;

    if-nez v1, :cond_1

    .line 284
    monitor-exit v2

    .line 302
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    iget-object v3, p0, Lcom/falmarri/futures/QuoteGetterService;->quotes:Lcom/falmarri/futures/QuoteList;

    invoke-virtual {v1, v3}, Lcom/falmarri/futures/QuoteList;->addAll(Ljava/util/Collection;)Z

    .line 288
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 290
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->quotes:Lcom/falmarri/futures/QuoteList;

    invoke-virtual {v1}, Lcom/falmarri/futures/QuoteList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 276
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->broadcast:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/falmarri/futures/QuoteGetterService;->sendBroadcast(Landroid/content/Intent;)V

    .line 301
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lcom/falmarri/futures/QuoteGetterService;->futuresWidget:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/falmarri/futures/QuoteGetterService;->removeViews:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v2, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 290
    :cond_3
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/falmarri/futures/Quote;

    .line 291
    .local v0, q:Lcom/falmarri/futures/Quote;
    iget-object v3, p0, Lcom/falmarri/futures/QuoteGetterService;->pref:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Lcom/falmarri/futures/Quote;->getIndex()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 293
    invoke-virtual {v0}, Lcom/falmarri/futures/Quote;->getIndex()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/falmarri/futures/QuoteGetterService;->putQuote(Ljava/lang/String;Z)V

    goto :goto_1

    .line 276
    .end local v0           #q:Lcom/falmarri/futures/Quote;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public update()V
    .locals 2

    .prologue
    .line 306
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/falmarri/futures/QuoteGetterService$QuoteGetter;

    invoke-direct {v1, p0}, Lcom/falmarri/futures/QuoteGetterService$QuoteGetter;-><init>(Lcom/falmarri/futures/QuoteGetterService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 308
    return-void
.end method
