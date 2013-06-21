.class public Lcom/fleapapa/helper/Ad;
.super Ljava/lang/Object;
.source "Ad.java"


# static fields
.field static ath:Ljava/lang/Thread;

.field static dads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fleapapa/helper/Ad;",
            ">;"
        }
    .end annotation
.end field

.field static initialized:Z


# instance fields
.field dist:I

.field draw:Landroid/graphics/drawable/Drawable;

.field high:I

.field lati:I

.field loni:I

.field url_image:Ljava/lang/String;

.field url_page:Ljava/lang/String;

.field weight:I

.field wide:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fleapapa/helper/Ad;->dads:Ljava/util/HashMap;

    .line 27
    invoke-static {}, Lcom/fleapapa/helper/Ad;->initialize()Z

    move-result v0

    sput-boolean v0, Lcom/fleapapa/helper/Ad;->initialized:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "url_image"
    .parameter "url_page"
    .parameter "weight"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/fleapapa/helper/Ad;->url_image:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/fleapapa/helper/Ad;->url_page:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/fleapapa/helper/Ad;->weight:I

    .line 34
    return-void
.end method

.method public static initialize()Z
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 37
    :try_start_0
    sget-object v7, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f05

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 38
    .local v4, istream:Ljava/io/InputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 39
    .local v3, ireader:Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 41
    .local v1, breader:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 48
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 49
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 50
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 55
    .end local v1           #breader:Ljava/io/BufferedReader;
    .end local v3           #ireader:Ljava/io/InputStreamReader;
    .end local v4           #istream:Ljava/io/InputStream;
    .end local v5           #line:Ljava/lang/String;
    :goto_1
    return v12

    .line 42
    .restart local v1       #breader:Ljava/io/BufferedReader;
    .restart local v3       #ireader:Ljava/io/InputStreamReader;
    .restart local v4       #istream:Ljava/io/InputStream;
    .restart local v5       #line:Ljava/lang/String;
    :cond_1
    const-string v7, "\\|"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 43
    .local v6, t:[Ljava/lang/String;
    array-length v7, v6

    if-lt v7, v13, :cond_0

    .line 44
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Ad.initialize: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Lcom/fleapapa/helper/Ad;

    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    array-length v9, v6

    const/4 v10, 0x3

    if-ge v9, v10, :cond_2

    move v9, v11

    :goto_2
    invoke-direct {v0, v7, v8, v9}, Lcom/fleapapa/helper/Ad;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    .local v0, ad:Lcom/fleapapa/helper/Ad;
    sget-object v7, Lcom/fleapapa/helper/Ad;->dads:Ljava/util/HashMap;

    iget-object v8, v0, Lcom/fleapapa/helper/Ad;->url_image:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    .end local v0           #ad:Lcom/fleapapa/helper/Ad;
    .end local v1           #breader:Ljava/io/BufferedReader;
    .end local v3           #ireader:Ljava/io/InputStreamReader;
    .end local v4           #istream:Ljava/io/InputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #t:[Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 53
    .local v2, e:Ljava/lang/Exception;
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Ad.initialize: fail to load servers.txt!!+("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 45
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #breader:Ljava/io/BufferedReader;
    .restart local v3       #ireader:Ljava/io/InputStreamReader;
    .restart local v4       #istream:Ljava/io/InputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #t:[Ljava/lang/String;
    :cond_2
    const/4 v9, 0x2

    :try_start_1
    aget-object v9, v6, v9

    invoke-static {v9}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    goto :goto_2
.end method


# virtual methods
.method browse(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 95
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad.browse: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fleapapa/helper/Ad;->url_page:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/fleapapa/helper/Ad;->url_page:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void
.end method

.method display(Landroid/widget/ImageView;)V
    .locals 6
    .parameter "iv"

    .prologue
    .line 58
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad.display: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fleapapa/helper/Ad;->url_image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fleapapa/helper/Ad;->url_page:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 62
    .local v3, handler:Landroid/os/Handler;
    new-instance v4, Lcom/fleapapa/helper/Ad$1;

    invoke-direct {v4, p0, p1}, Lcom/fleapapa/helper/Ad$1;-><init>(Lcom/fleapapa/helper/Ad;Landroid/widget/ImageView;)V

    .line 67
    .local v4, ok:Ljava/lang/Runnable;
    new-instance v5, Lcom/fleapapa/helper/Ad$2;

    invoke-direct {v5, p0, p1}, Lcom/fleapapa/helper/Ad$2;-><init>(Lcom/fleapapa/helper/Ad;Landroid/widget/ImageView;)V

    .line 72
    .local v5, err:Ljava/lang/Runnable;
    sget-object v0, Lcom/fleapapa/helper/Ad;->ath:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fleapapa/helper/Ad;->ath:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/fleapapa/helper/Ad;->ath:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 74
    :cond_0
    new-instance v0, Lcom/fleapapa/helper/Ad$3;

    const-string v2, "Ad.ad_fetch"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fleapapa/helper/Ad$3;-><init>(Lcom/fleapapa/helper/Ad;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    sput-object v0, Lcom/fleapapa/helper/Ad;->ath:Ljava/lang/Thread;

    .line 92
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 93
    return-void
.end method
