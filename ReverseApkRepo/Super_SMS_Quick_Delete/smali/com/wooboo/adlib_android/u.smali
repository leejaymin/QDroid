.class public Lcom/wooboo/adlib_android/u;
.super Ljava/lang/Object;
.source "u.java"


# static fields
.field static instance:Lcom/wooboo/adlib_android/u;

.field static myMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static pro:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/wooboo/adlib_android/u;->pro:Ljava/util/Properties;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wooboo/adlib_android/u;->myMap:Ljava/util/HashMap;

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/wooboo/adlib_android/u;->instance:Lcom/wooboo/adlib_android/u;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/wooboo/adlib_android/u;
    .locals 10
    .parameter "c"

    .prologue
    .line 22
    const-class v6, Lcom/wooboo/adlib_android/u;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lcom/wooboo/adlib_android/u;->instance:Lcom/wooboo/adlib_android/u;

    if-eqz v7, :cond_0

    .line 23
    sget-object v7, Lcom/wooboo/adlib_android/u;->instance:Lcom/wooboo/adlib_android/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :goto_0
    monitor-exit v6

    return-object v7

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 28
    .local v4, myFile:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "ua.properties"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 29
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 30
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 31
    .local v3, line:Ljava/lang/String;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 36
    new-instance v7, Lcom/wooboo/adlib_android/u;

    invoke-direct {v7}, Lcom/wooboo/adlib_android/u;-><init>()V

    sput-object v7, Lcom/wooboo/adlib_android/u;->instance:Lcom/wooboo/adlib_android/u;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 41
    if-eqz v4, :cond_1

    .line 42
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 43
    :cond_1
    if-eqz v1, :cond_7

    .line 44
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v1

    .line 50
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    :try_start_4
    sget-object v7, Lcom/wooboo/adlib_android/u;->instance:Lcom/wooboo/adlib_android/u;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 32
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_3
    :try_start_5
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, "="

    invoke-direct {v5, v3, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .local v5, st:Ljava/util/StringTokenizer;
    sget-object v7, Lcom/wooboo/adlib_android/u;->myMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 37
    .end local v5           #st:Ljava/util/StringTokenizer;
    :catch_0
    move-exception v7

    move-object v2, v7

    move-object v0, v1

    .line 38
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v2, e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 41
    if-eqz v4, :cond_4

    .line 42
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 43
    :cond_4
    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 45
    :catch_1
    move-exception v7

    goto :goto_2

    .line 39
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 41
    :goto_4
    if-eqz v4, :cond_5

    .line 42
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 43
    :cond_5
    if-eqz v0, :cond_6

    .line 44
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 49
    :cond_6
    :goto_5
    :try_start_9
    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 22
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #myFile:Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    monitor-exit v6

    throw v7

    .line 45
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #myFile:Ljava/io/InputStream;
    :catch_2
    move-exception v7

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .end local v3           #line:Ljava/lang/String;
    :catch_3
    move-exception v8

    goto :goto_5

    .line 39
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .line 37
    .end local v3           #line:Ljava/lang/String;
    :catch_4
    move-exception v7

    move-object v2, v7

    goto :goto_3

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_7
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)I
    .locals 7
    .parameter "key"

    .prologue
    const/4 v6, -0x1

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, k:Ljava/lang/String;
    const/4 v4, 0x0

    .line 56
    .local v4, value:Ljava/lang/String;
    sget-object v5, Lcom/wooboo/adlib_android/u;->myMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 57
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 58
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    .line 67
    :goto_0
    return v5

    .line 59
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 60
    .local v3, ua:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_0

    .line 61
    sget-object v5, Lcom/wooboo/adlib_android/u;->myMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #value:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 62
    .restart local v4       #value:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0
.end method
