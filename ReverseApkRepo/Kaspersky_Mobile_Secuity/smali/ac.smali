.class public final Lac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Laf;

.field private static final b:Landroid/net/Uri;

.field private static c:Lac;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/net/InetSocketAddress;

.field private f:Ljava/net/InetSocketAddress;

.field private g:Z

.field private h:Landroid/database/ContentObserver;

.field private i:Landroid/database/ContentObserver;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Laf;

    const-string v1, "127.0.0.1"

    const/16 v2, 0xc38

    invoke-direct {v0, v1, v2}, Laf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lac;->a:Laf;

    .line 24
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lac;->b:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lac;->d:Landroid/content/Context;

    .line 165
    new-instance v2, Lae;

    invoke-direct {v2, p0}, Lae;-><init>(Lac;)V

    .line 167
    iget-object v0, p0, Lac;->d:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_APN_SETTINGS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lac;->j:Z

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lac;->a(Lae;Landroid/content/ContentResolver;)V

    .line 172
    iget-boolean v0, p0, Lac;->j:Z

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Lad;

    invoke-direct {v0, p0}, Lad;-><init>(Lac;)V

    iput-object v0, p0, Lac;->h:Landroid/database/ContentObserver;

    .line 175
    iget-object v0, p0, Lac;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lac;->b:Landroid/net/Uri;

    iget-object v3, p0, Lac;->h:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 177
    :cond_0
    new-instance v0, Lag;

    invoke-direct {v0, p0}, Lag;-><init>(Lac;)V

    iput-object v0, p0, Lac;->i:Landroid/database/ContentObserver;

    .line 178
    iget-object v0, p0, Lac;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lac;->i:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 179
    return-void

    .line 167
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lac;
    .locals 2
    .parameter

    .prologue
    .line 155
    const-class v1, Lac;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lac;->c:Lac;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lac;

    invoke-direct {v0, p0}, Lac;-><init>(Landroid/content/Context;)V

    sput-object v0, Lac;->c:Lac;

    .line 159
    :cond_0
    sget-object v0, Lac;->c:Lac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lac;Landroid/content/ContentResolver;Laf;)Laf;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lac;->a(Landroid/content/ContentResolver;Laf;)Laf;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/ContentResolver;Laf;)Laf;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 251
    new-instance v6, Laf;

    invoke-direct {v6}, Laf;-><init>()V

    .line 252
    sget-object v1, Lac;->b:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_3

    .line 255
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 258
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 260
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_0
    :try_start_0
    const-string v0, "proxy"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_1

    .line 268
    iput-object v0, v6, Laf;->a:Ljava/lang/String;

    .line 269
    const-string v0, "port"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Laf;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lac;->j:Z

    if-eqz v0, :cond_2

    invoke-virtual {v6, p2}, Laf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    const-string v0, "proxy"

    iget-object v4, p2, Laf;->a:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v0, "port"

    iget v4, p2, Laf;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    sget-object v0, Lac;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://telephony/carriers/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 285
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_3
    return-object v6

    .line 272
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lac;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lac;->d:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lae;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lac;->b(Lae;Landroid/content/ContentResolver;)V

    .line 217
    invoke-direct {p0, p1, p2}, Lac;->c(Lae;Landroid/content/ContentResolver;)V

    .line 218
    return-void
.end method

.method static synthetic b(Lac;Landroid/content/ContentResolver;Laf;)Laf;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lac;->b(Landroid/content/ContentResolver;Laf;)Laf;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/ContentResolver;Laf;)Laf;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 329
    new-instance v0, Laf;

    invoke-direct {v0}, Laf;-><init>()V

    .line 331
    iget-boolean v1, p0, Lac;->g:Z

    if-eqz v1, :cond_2

    .line 335
    :try_start_0
    const-string v1, "wifi_http_proxy"

    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 336
    if-eqz v1, :cond_0

    .line 338
    iput-object v1, v0, Laf;->a:Ljava/lang/String;

    .line 340
    :cond_0
    const-string v1, "wifi_http_port"

    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 343
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Laf;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Laf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 353
    const-string v1, "wifi_http_proxy"

    iget-object v2, p2, Laf;->a:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 354
    const-string v1, "wifi_http_port"

    iget v2, p2, Laf;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 358
    :cond_2
    return-object v0

    .line 346
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Lae;Landroid/content/ContentResolver;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 224
    :try_start_0
    sget-object v0, Lac;->a:Laf;

    invoke-direct {p0, p2, v0}, Lac;->a(Landroid/content/ContentResolver;Laf;)Laf;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Laf;->a()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lac;->a:Laf;

    invoke-virtual {v0, v1}, Laf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, v0, Laf;->a:Ljava/lang/String;

    iget v3, v0, Laf;->b:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lac;->e:Ljava/net/InetSocketAddress;

    .line 229
    const-string v1, "proxy"

    iget-object v2, v0, Laf;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lae;->a(Ljava/lang/String;Ljava/lang/String;)Lae;

    move-result-object v1

    const-string v2, "port"

    iget v0, v0, Laf;->b:I

    invoke-virtual {v1, v2, v0}, Lae;->a(Ljava/lang/String;I)Lae;

    move-result-object v0

    invoke-virtual {v0}, Lae;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :cond_0
    :goto_0
    const-string v0, "proxy"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 242
    const-string v1, "port"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lae;->b(Ljava/lang/String;I)I

    move-result v1

    .line 243
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lac;->e:Ljava/net/InetSocketAddress;

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using APN proxy : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lac;->e:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lam;->b(Ljava/lang/String;)V

    .line 247
    :cond_1
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 236
    invoke-static {v0}, Lam;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic c()Laf;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lac;->a:Laf;

    return-object v0
.end method

.method private c(Lae;Landroid/content/ContentResolver;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 295
    :try_start_0
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "name"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\"wifi_http_proxy\""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 298
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    const/4 v1, 0x1

    iput-boolean v1, p0, Lac;->g:Z

    .line 302
    sget-object v1, Lac;->a:Laf;

    invoke-direct {p0, p2, v1}, Lac;->b(Landroid/content/ContentResolver;Laf;)Laf;

    move-result-object v1

    .line 303
    invoke-virtual {v1}, Laf;->a()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lac;->a:Laf;

    invoke-virtual {v1, v2}, Laf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    const-string v2, "wifi_http_proxy"

    iget-object v3, v1, Laf;->a:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lae;->a(Ljava/lang/String;Ljava/lang/String;)Lae;

    move-result-object v2

    const-string v3, "wifi_http_port"

    iget v1, v1, Laf;->b:I

    invoke-virtual {v2, v3, v1}, Lae;->a(Ljava/lang/String;I)Lae;

    move-result-object v1

    invoke-virtual {v1}, Lae;->a()V

    .line 310
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    const-string v0, "wifi_http_proxy"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 320
    const-string v1, "wifi_http_port"

    invoke-virtual {p1, v1, v6}, Lae;->b(Ljava/lang/String;I)I

    move-result v1

    .line 321
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lac;->f:Ljava/net/InetSocketAddress;

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using Wi-Fi proxy : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lac;->f:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lam;->b(Ljava/lang/String;)V

    .line 325
    :cond_1
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 314
    invoke-static {v0}, Lam;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lac;->g:Z

    return v0
.end method

.method public final declared-synchronized b()V
    .locals 6

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    new-instance v0, Lae;

    invoke-direct {v0, p0}, Lae;-><init>(Lac;)V

    .line 200
    iget-object v1, p0, Lac;->h:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lac;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lac;->h:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 204
    :cond_0
    iget-object v1, p0, Lac;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Laf;

    const-string v3, "proxy"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "port"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lae;->b(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Laf;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1, v2}, Lac;->a(Landroid/content/ContentResolver;Laf;)Laf;

    .line 208
    iget-object v1, p0, Lac;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lac;->i:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 209
    iget-object v1, p0, Lac;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Laf;

    const-string v3, "wifi_http_proxy"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "wifi_http_port"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lae;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v2, v3, v0}, Laf;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1, v2}, Lac;->b(Landroid/content/ContentResolver;Laf;)Laf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
