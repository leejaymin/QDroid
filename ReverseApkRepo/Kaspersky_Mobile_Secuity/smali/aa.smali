.class public final Laa;
.super Landroid/database/ContentObserver;
.source "SourceFile"

# interfaces
.implements LV;
.implements Lal;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final b:[B

.field private static final c:[B

.field private static final d:[Ljava/lang/String;


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lac;

.field private g:Laj;

.field private h:Lcom/kaspersky/components/urlchecker/UrlChecker;

.field private i:Lab;

.field private j:Ljava/util/regex/Pattern;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.browser"

    aput-object v1, v0, v2

    const-string v1, "com.google.android.browser"

    aput-object v1, v0, v3

    const-string v1, "com.sony.nfx.app.browser"

    aput-object v1, v0, v4

    sput-object v0, Laa;->a:[Ljava/lang/String;

    .line 35
    const-string v0, "HTTP/1.1 200 OK\nContent-Type: text/html; charset=utf-8\nDate: Wed, 30 Nov 2011 12:38:20 GMT\nConnection: close\n\n<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Laa;->b:[B

    .line 38
    const-string v0, "<html><head><noscript><META HTTP-EQUIV=\"REFRESH\" CONTENT=\"0\";URL=\"permission_denied.html\"></noscript></head><body><script type=\'text/javascript\'>function deny(){window.location.href=\"permission_denied.html\";};window.setInterval(\'deny()\',30);</script></body></html>"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Laa;->c:[B

    .line 42
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "BrowserActivity"

    aput-object v1, v0, v2

    const-string v1, "HtcBookmarkUtility"

    aput-object v1, v0, v3

    sput-object v0, Laa;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lab;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 82
    iput-object p1, p0, Laa;->e:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Laa;->i:Lab;

    .line 84
    invoke-static {p1}, Lac;->a(Landroid/content/Context;)Lac;

    move-result-object v0

    iput-object v0, p0, Laa;->f:Lac;

    .line 85
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlChecker;

    invoke-direct {v0}, Lcom/kaspersky/components/urlchecker/UrlChecker;-><init>()V

    iput-object v0, p0, Laa;->h:Lcom/kaspersky/components/urlchecker/UrlChecker;

    .line 87
    iget-object v0, p0, Laa;->f:Lac;

    invoke-virtual {v0}, Lac;->b()V

    .line 97
    invoke-direct {p0}, Laa;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "(?:url|dat|query)\\s*=\\s*(.*?)(?:$|;|\\s)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Laa;->j:Ljava/util/regex/Pattern;

    .line 100
    invoke-direct {p0}, Laa;->f()V

    .line 102
    :cond_0
    return-void
.end method

.method private a(Lai;)Lcom/kaspersky/components/urlchecker/UrlCategory;
    .locals 4
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Laa;->h:Lcom/kaspersky/components/urlchecker/UrlChecker;

    invoke-virtual {p1}, Lai;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lai;->b()I

    move-result v2

    invoke-virtual {p1}, Lai;->c()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlChecker;->checkUrl(Ljava/lang/String;II)Lcom/kaspersky/components/urlchecker/UrlInfo;

    move-result-object v1

    .line 224
    if-nez v1, :cond_1

    .line 225
    sget-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->UNKNOWN:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 235
    :cond_0
    :goto_0
    return-object v0

    .line 227
    :cond_1
    iget-object v0, p0, Laa;->e:Landroid/content/Context;

    invoke-static {v0}, LZ;->a(Landroid/content/Context;)LZ;

    move-result-object v0

    iget-wide v2, v1, Lcom/kaspersky/components/urlchecker/UrlInfo;->mCategories:J

    invoke-virtual {v0, v2, v3}, LZ;->a(J)Lcom/kaspersky/components/urlchecker/UrlCategory;

    move-result-object v0

    .line 228
    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->NONE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    if-ne v0, v2, :cond_0

    .line 230
    iget v1, v1, Lcom/kaspersky/components/urlchecker/UrlInfo;->mVerdict:I

    if-nez v1, :cond_0

    .line 232
    sget-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->UNKNOWN:Lcom/kaspersky/components/urlchecker/UrlCategory;

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)V
    .locals 3
    .parameter

    .prologue
    .line 319
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 644 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 323
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 5
    .parameter

    .prologue
    .line 287
    const/4 v2, 0x0

    .line 290
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Laa;->e:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v3, "permission_denied.html"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 292
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :try_start_1
    invoke-static {p1, v1}, Lah;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 294
    invoke-static {v0}, Laa;->a(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 302
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 298
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 302
    if-eqz v1, :cond_0

    .line 306
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 310
    :catch_1
    move-exception v0

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_1

    .line 306
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 310
    :cond_1
    :goto_3
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 302
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 296
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 240
    sget-object v0, Laa;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 241
    invoke-static {p0, p1}, Lah;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 242
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 329
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 330
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 332
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 333
    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 334
    if-eqz p2, :cond_0

    .line 336
    const v1, -0x400001

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 338
    :cond_0
    iget-object v1, p0, Laa;->k:Ljava/lang/String;

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    iget-object v1, p0, Laa;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    :try_start_0
    iget-object v1, p0, Laa;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 344
    iget-object v0, p0, Laa;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 348
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lai;Ljava/io/OutputStream;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p1}, Lai;->b()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v0

    .line 357
    :cond_1
    iget-object v2, p0, Laa;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/kaspersky/components/urlfilter/ExclusionList;->a(Landroid/content/Context;)Lcom/kaspersky/components/urlfilter/ExclusionList;

    move-result-object v2

    invoke-virtual {p1}, Lai;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kaspersky/components/urlfilter/ExclusionList;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 360
    invoke-direct {p0, p1}, Laa;->a(Lai;)Lcom/kaspersky/components/urlchecker/UrlCategory;

    move-result-object v2

    .line 361
    sget-object v3, Lcom/kaspersky/components/urlchecker/UrlCategory;->NONE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/kaspersky/components/urlchecker/UrlCategory;->UNKNOWN:Lcom/kaspersky/components/urlchecker/UrlCategory;

    if-eq v2, v3, :cond_0

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lai;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " categorized as "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/kaspersky/components/urlchecker/UrlCategory;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lam;->b(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p1}, Lai;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v3, p0, Laa;->i:Lab;

    invoke-interface {v3, v0, v2}, Lab;->a(Ljava/lang/String;Lcom/kaspersky/components/urlchecker/UrlCategory;)Ljava/io/InputStream;

    move-result-object v2

    .line 369
    if-eqz p2, :cond_2

    .line 371
    :try_start_0
    invoke-static {v2, p2}, Laa;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    move v0, v1

    .line 397
    goto :goto_0

    .line 375
    :cond_2
    :try_start_1
    invoke-direct {p0, v2}, Laa;->a(Ljava/io/InputStream;)V

    .line 376
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_3

    .line 388
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Laa;->a(Ljava/lang/String;Z)V

    .line 390
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Laa;->a(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 395
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Laa;->g:Laj;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Laa;->g:Laj;

    invoke-virtual {v0, p0}, Laj;->a(Lal;)V

    .line 180
    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Laa;->g:Laj;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Laa;->g:Laj;

    invoke-virtual {v0, p0}, Laj;->b(Lal;)V

    .line 188
    :cond_0
    return-void
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Laa;->g:Laj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laa;->f:Lac;

    invoke-virtual {v0}, Lac;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Laa;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laa;->e:Landroid/content/Context;

    invoke-static {v0}, LZ;->a(Landroid/content/Context;)LZ;

    move-result-object v0

    invoke-virtual {v0}, LZ;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 5

    .prologue
    .line 246
    const/4 v1, 0x0

    .line 249
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Laa;->e:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    const-string v3, "blocked.html"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    .line 253
    const-string v2, "content://com.android.htmlfileprovider/"

    iput-object v2, p0, Laa;->l:Ljava/lang/String;

    .line 259
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Laa;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Laa;->l:Ljava/lang/String;

    .line 261
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 262
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :try_start_1
    sget-object v1, Laa;->c:[B

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 264
    invoke-static {v0}, Laa;->a(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 272
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 283
    :cond_0
    :goto_1
    return-void

    .line 257
    :cond_1
    :try_start_3
    const-string v2, "file://"

    iput-object v2, p0, Laa;->l:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 268
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 272
    if-eqz v1, :cond_0

    .line 276
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 280
    :catch_1
    move-exception v0

    goto :goto_1

    .line 272
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_2

    .line 276
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 280
    :cond_2
    :goto_4
    throw v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 272
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 266
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 106
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Laa;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :cond_1
    :try_start_1
    iput-boolean p1, p0, Laa;->m:Z

    .line 112
    iget-boolean v1, p0, Laa;->m:Z

    if-eqz v1, :cond_4

    .line 114
    invoke-direct {p0}, Laa;->b()V

    .line 116
    invoke-direct {p0}, Laa;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    sget-object v1, Laa;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Laa;->k:Ljava/lang/String;

    .line 120
    :goto_1
    sget-object v1, Laa;->a:[Ljava/lang/String;

    array-length v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v0, v1, :cond_2

    .line 124
    :try_start_2
    iget-object v1, p0, Laa;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Laa;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_3

    .line 127
    sget-object v1, Laa;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Laa;->k:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 136
    :cond_2
    :try_start_3
    invoke-static {p0}, LW;->a(LV;)V

    .line 137
    iget-object v0, p0, Laa;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 131
    :catch_0
    move-exception v1

    .line 120
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 142
    :cond_4
    :try_start_4
    invoke-direct {p0}, Laa;->c()V

    .line 144
    invoke-direct {p0}, Laa;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-static {p0}, LW;->b(LV;)V

    .line 147
    iget-object v0, p0, Laa;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 411
    invoke-direct {p0}, Laa;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v0

    .line 414
    :cond_1
    sget-object v1, Laa;->d:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_2

    sget-object v1, Laa;->d:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 420
    :cond_2
    :try_start_0
    iget-object v1, p0, Laa;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 421
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    new-instance v2, Lai;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lai;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Laa;->a(Lai;Ljava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 426
    :catch_0
    move-exception v1

    .line 428
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onChange(Z)V
    .locals 6
    .parameter

    .prologue
    .line 436
    if-nez p1, :cond_1

    invoke-direct {p0}, Laa;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    :try_start_0
    iget-object v0, p0, Laa;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 441
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 444
    if-eqz v0, :cond_1

    .line 446
    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 448
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 450
    :cond_0
    new-instance v1, Lai;

    invoke-direct {v1, v0}, Lai;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Laa;->a(Lai;Ljava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Laa;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :cond_1
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 459
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
