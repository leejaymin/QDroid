.class public final La/a/f;
.super La/a/b;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static c:Ljava/lang/Class;


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "/"

    invoke-direct {p0, v0}, La/a/f;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, La/a/b;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    invoke-static {v0}, La/a/f;->a(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "twitter4j.properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;)Z

    sget-object v1, La/a/f;->c:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "a.a.a"

    invoke-static {v1}, La/a/f;->v(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, La/a/f;->c:Ljava/lang/Class;

    :goto_1
    const-string v2, "/twitter4j.properties"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0, v1}, La/a/f;->a(Ljava/util/Properties;Ljava/io/InputStream;)Z

    sget-object v1, La/a/f;->c:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "a.a.a"

    invoke-static {v1}, La/a/f;->v(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, La/a/f;->c:Ljava/lang/Class;

    :goto_2
    const-string v2, "/WEB-INF/twitter4j.properties"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0, v1}, La/a/f;->a(Ljava/util/Properties;Ljava/io/InputStream;)Z

    invoke-direct {p0, v0, p1}, La/a/f;->b(Ljava/util/Properties;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v1, La/a/f;->c:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    sget-object v1, La/a/f;->c:Ljava/lang/Class;

    goto :goto_2
.end method

.method private static a(Ljava/util/Properties;)V
    .locals 6

    invoke-virtual {p0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, -0x1

    const-string v4, "twitter4j."

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "twitter4j."

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static a(Ljava/util/Properties;Ljava/io/InputStream;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-static {p0}, La/a/f;->a(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/util/Properties;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-static {p0}, La/a/f;->a(Ljava/util/Properties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v1

    :goto_2
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_4
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_5
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method private static a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 7

    const-string v0, ""

    invoke-direct {p0, p1, v0}, La/a/f;->c(Ljava/util/Properties;Ljava/lang/String;)V

    const-string v0, "/"

    invoke-static {p2, v0}, La/c/d/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    const/4 v3, 0x0

    move v6, v3

    move-object v3, v1

    move v1, v6

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-direct {p0, p1, v3}, La/a/f;->c(Ljava/util/Properties;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static b(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static c(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private c(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 1

    const-string v0, "debug"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "debug"

    invoke-static {p1, p2, v0}, La/a/f;->b(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, La/a/f;->a(Z)V

    :cond_0
    const-string v0, "source"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "source"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->b(Ljava/lang/String;)V

    :cond_1
    const-string v0, "user"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "user"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->c(Ljava/lang/String;)V

    :cond_2
    const-string v0, "password"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "password"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->d(Ljava/lang/String;)V

    :cond_3
    const-string v0, "http.useSSL"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "http.useSSL"

    invoke-static {p1, p2, v0}, La/a/f;->b(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, La/a/f;->b(Z)V

    :cond_4
    :goto_0
    const-string v0, "http.proxyHost"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "http.proxyHost"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->e(Ljava/lang/String;)V

    :cond_5
    :goto_1
    const-string v0, "http.proxyUser"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "http.proxyUser"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->f(Ljava/lang/String;)V

    :cond_6
    const-string v0, "http.proxyPassword"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "http.proxyPassword"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->g(Ljava/lang/String;)V

    :cond_7
    const-string v0, "http.proxyPort"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "http.proxyPort"

    invoke-static {p1, p2, v0}, La/a/f;->c(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, La/a/f;->a(I)V

    :cond_8
    :goto_2
    const-string v0, "http.connectionTimeout"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "http.connectionTimeout"

    invoke-static {p1, p2, v0}, La/a/f;->c(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, La/a/f;->b(I)V

    :cond_9
    const-string v0, "http.readTimeout"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "http.readTimeout"

    invoke-static {p1, p2, v0}, La/a/f;->c(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, La/a/f;->c(I)V

    :cond_a
    const-string v0, "http.streamingReadTimeout"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "http.streamingReadTimeout"

    invoke-static {p1, p2, v0}, La/a/f;->c(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, La/a/f;->d(I)V

    :cond_b
    const-string v0, "http.retryCount"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "http.retryCount"

    invoke-static {p1, p2, v0}, La/a/f;->c(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, La/a/f;->e(I)V

    :cond_c
    const-string v0, "http.retryIntervalSecs"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "http.retryIntervalSecs"

    invoke-static {p1, p2, v0}, La/a/f;->c(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, La/a/f;->f(I)V

    :cond_d
    const-string v0, "http.maxTotalConnections"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "http.maxTotalConnections"

    invoke-static {p1, p2, v0}, La/a/f;->c(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, La/a/f;->g(I)V

    :cond_e
    const-string v0, "http.defaultMaxPerRoute"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "http.defaultMaxPerRoute"

    invoke-static {p1, p2, v0}, La/a/f;->c(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, La/a/f;->h(I)V

    :cond_f
    const-string v0, "oauth.consumerKey"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "oauth.consumerKey"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->h(Ljava/lang/String;)V

    :cond_10
    const-string v0, "oauth.consumerSecret"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "oauth.consumerSecret"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->i(Ljava/lang/String;)V

    :cond_11
    const-string v0, "oauth.accessToken"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "oauth.accessToken"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->j(Ljava/lang/String;)V

    :cond_12
    const-string v0, "oauth.accessTokenSecret"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "oauth.accessTokenSecret"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->k(Ljava/lang/String;)V

    :cond_13
    const-string v0, "async.numThreads"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "async.numThreads"

    invoke-static {p1, p2, v0}, La/a/f;->c(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, La/a/f;->i(I)V

    :cond_14
    const-string v0, "async.dispatherImpl"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "async.dispatherImpl"

    invoke-static {p1, p2, v0}, La/a/f;->c(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, La/a/f;->i(I)V

    :cond_15
    const-string v0, "clientVersion"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "clientVersion"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->l(Ljava/lang/String;)V

    :cond_16
    const-string v0, "clientURL"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "clientURL"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->m(Ljava/lang/String;)V

    :cond_17
    const-string v0, "http.userAgent"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "http.userAgent"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->a(Ljava/lang/String;)V

    :cond_18
    const-string v0, "oauth.requestTokenURL"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "oauth.requestTokenURL"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->r(Ljava/lang/String;)V

    :cond_19
    const-string v0, "oauth.authorizationURL"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "oauth.authorizationURL"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->s(Ljava/lang/String;)V

    :cond_1a
    const-string v0, "oauth.accessTokenURL"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "oauth.accessTokenURL"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->t(Ljava/lang/String;)V

    :cond_1b
    const-string v0, "oauth.authenticationURL"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "oauth.authenticationURL"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->u(Ljava/lang/String;)V

    :cond_1c
    const-string v0, "restBaseURL"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "restBaseURL"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->n(Ljava/lang/String;)V

    :cond_1d
    const-string v0, "searchBaseURL"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "searchBaseURL"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->o(Ljava/lang/String;)V

    :cond_1e
    const-string v0, "streamBaseURL"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "streamBaseURL"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->p(Ljava/lang/String;)V

    :cond_1f
    const-string v0, "userStreamBaseURL"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "userStreamBaseURL"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->q(Ljava/lang/String;)V

    :cond_20
    const-string v0, "includeRTs"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "includeRTs"

    invoke-static {p1, p2, v0}, La/a/f;->b(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, La/a/f;->c(Z)V

    :cond_21
    return-void

    :cond_22
    const-string v0, "user"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "password"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La/a/f;->b(Z)V

    goto/16 :goto_0

    :cond_23
    const-string v0, "http.proxyHost"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "http.proxyHost"

    invoke-static {p1, p2, v0}, La/a/f;->d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/f;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_24
    const-string v0, "http.proxyPort"

    invoke-static {p1, p2, v0}, La/a/f;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "http.proxyPort"

    invoke-static {p1, p2, v0}, La/a/f;->c(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, La/a/f;->a(I)V

    goto/16 :goto_2
.end method

.method private static d(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static v(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, La/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, La/a/b;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, La/a/b;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, La/a/b;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, La/a/b;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, La/a/b;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, La/a/b;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, La/a/b;->n()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
