.class public final LeF;
.super LeE;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, LeE;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/Set;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 21
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 26
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const/4 v1, 0x5

    if-ge v2, v1, :cond_3

    .line 28
    new-instance v1, Lfe;

    invoke-direct {v1}, Lfe;-><init>()V

    .line 31
    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 32
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 34
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v1, v4}, Lfe;->a(Landroid/content/ContentProviderOperation;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 39
    :catch_0
    move-exception v1

    .line 41
    const-string v3, "KMS"

    const-string v4, "Error during call logs delete"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    invoke-static {}, Lfm;->a()V

    .line 26
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 36
    :cond_2
    :try_start_1
    const-string v3, "call_log"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lfe;->a(Ljava/lang/String;Landroid/content/ContentResolver;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 46
    :cond_3
    invoke-static {p1, p2, v0}, LeE;->a(Landroid/content/Context;Ljava/util/Set;I)Z

    move-result v0

    goto :goto_0
.end method
