.class public La/c/a/f;
.super Ljava/lang/Object;

# interfaces
.implements La/c/a/c;
.implements Ljava/io/Serializable;


# static fields
.field static a:Ljava/lang/Class;

.field private static final b:La/c/b/a;

.field private static k:Z

.field private static final l:Ljava/util/Map;


# instance fields
.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v0, La/c/a/f;->a:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "a.c.a.f"

    invoke-static {v0}, La/c/a/f;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, La/c/a/f;->a:Ljava/lang/Class;

    :goto_0
    invoke-static {}, La/c/b/a;->a()La/c/b/a;

    move-result-object v0

    sput-object v0, La/c/a/f;->b:La/c/b/a;

    sput-boolean v6, La/c/a/f;->k:Z

    :try_start_0
    const-string v0, "java.specification.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/high16 v1, 0x3ff8

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    cmpl-double v0, v1, v3

    if-lez v0, :cond_3

    move v0, v5

    :goto_1
    sput-boolean v0, La/c/a/f;->k:Z

    :cond_0
    invoke-static {}, La/a/d;->a()La/a/a;

    move-result-object v0

    invoke-interface {v0}, La/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, La/c/a/f;->l:Ljava/util/Map;

    return-void

    :cond_2
    sget-object v0, La/c/a/f;->a:Ljava/lang/Class;

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_1

    :catch_0
    move-exception v0

    sput-boolean v5, La/c/a/f;->k:Z

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, La/c/a/f;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, La/c/a/f;->d:I

    iput-object v1, p0, La/c/a/f;->e:Ljava/lang/String;

    iput-object v1, p0, La/c/a/f;->f:Ljava/lang/String;

    const/16 v0, 0x4e20

    iput v0, p0, La/c/a/f;->g:I

    const v0, 0x1d4c0

    iput v0, p0, La/c/a/f;->h:I

    const/4 v0, 0x0

    iput v0, p0, La/c/a/f;->i:I

    const/16 v0, 0x1388

    iput v0, p0, La/c/a/f;->j:I

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Class;
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

.method static a(La/c/a/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/c/a/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method private static a(La/c/a/k;Ljava/net/HttpURLConnection;)V
    .locals 5

    sget-object v0, La/c/a/f;->b:La/c/b/a;

    invoke-virtual {v0}, La/c/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, La/c/a/f;->b:La/c/b/a;

    const-string v1, "Request: "

    invoke-virtual {v0, v1}, La/c/b/a;->a(Ljava/lang/String;)V

    sget-object v0, La/c/a/f;->b:La/c/b/a;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, La/c/a/k;->a()La/c/a/q;

    move-result-object v2

    invoke-virtual {v2}, La/c/a/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, La/c/a/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/c/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, La/c/a/k;->d()La/b/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, La/c/a/k;->d()La/b/b;

    move-result-object v0

    invoke-interface {v0, p0}, La/b/b;->a(La/c/a/k;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, La/c/a/f;->b:La/c/b/a;

    invoke-virtual {v1}, La/c/b/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, La/c/a/f;->b:La/c/b/a;

    const-string v2, "Authorization: "

    invoke-static {v0}, La/c/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, La/c/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "Authorization"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, La/c/a/k;->e()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, La/c/a/k;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, La/c/a/k;->e()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/c/a/f;->b:La/c/b/a;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, La/c/a/k;->e()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, La/c/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static a(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    sget-object v0, La/c/a/f;->b:La/c/b/a;

    invoke-virtual {v0, p1}, La/c/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static b(La/c/a/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/c/a/f;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(La/c/a/k;)La/c/a/l;
    .locals 17

    move-object/from16 v0, p0

    iget v0, v0, La/c/a/f;->i:I

    move v2, v0

    add-int/lit8 v4, v2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v3

    move-object v3, v2

    :goto_0
    if-ge v5, v4, :cond_14

    const/4 v6, -0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, La/c/a/k;->c()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, La/c/a/f;->c:Ljava/lang/String;

    move-object v8, v0

    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, La/c/a/f;->c:Ljava/lang/String;

    move-object v8, v0

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, La/c/a/f;->e:Ljava/lang/String;

    move-object v8, v0

    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, La/c/a/f;->e:Ljava/lang/String;

    move-object v8, v0

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    sget-object v8, La/c/a/f;->b:La/c/b/a;

    invoke-virtual {v8}, La/c/b/a;->b()Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, La/c/a/f;->b:La/c/b/a;

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "Proxy AuthUser: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, La/c/a/f;->e:Ljava/lang/String;

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, La/c/b/a;->a(Ljava/lang/String;)V

    sget-object v8, La/c/a/f;->b:La/c/b/a;

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "Proxy AuthPassword: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, La/c/a/f;->f:Ljava/lang/String;

    move-object v10, v0

    invoke-static {v10}, La/c/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, La/c/b/a;->a(Ljava/lang/String;)V

    :cond_0
    new-instance v8, La/c/a/g;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, La/c/a/g;-><init>(La/c/a/f;)V

    invoke-static {v8}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    :cond_1
    new-instance v8, Ljava/net/Proxy;

    sget-object v9, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    move-object/from16 v0, p0

    iget-object v0, v0, La/c/a/f;->c:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p0

    iget v0, v0, La/c/a/f;->d:I

    move v11, v0

    invoke-static {v10, v11}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    sget-object v9, La/c/a/f;->b:La/c/b/a;

    invoke-virtual {v9}, La/c/b/a;->b()Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, La/c/a/f;->b:La/c/b/a;

    new-instance v10, Ljava/lang/StringBuffer;

    const-string v11, "Opening proxied connection("

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, La/c/a/f;->c:Ljava/lang/String;

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object/from16 v0, p0

    iget v0, v0, La/c/a/f;->d:I

    move v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, La/c/b/a;->a(Ljava/lang/String;)V

    :cond_2
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, La/c/a/f;->g:I

    move v8, v0

    if-lez v8, :cond_3

    sget-boolean v8, La/c/a/f;->k:Z

    if-nez v8, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, La/c/a/f;->g:I

    move v8, v0

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, La/c/a/f;->h:I

    move v8, v0

    if-lez v8, :cond_4

    sget-boolean v8, La/c/a/f;->k:Z

    if-nez v8, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, La/c/a/f;->h:I

    move v8, v0

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_4
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-static {v0, v1}, La/c/a/f;->a(La/c/a/k;Ljava/net/HttpURLConnection;)V

    invoke-virtual/range {p1 .. p1}, La/c/a/k;->a()La/c/a/q;

    move-result-object v8

    invoke-virtual {v8}, La/c/a/q;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, La/c/a/k;->a()La/c/a/q;

    move-result-object v8

    sget-object v9, La/c/a/q;->b:La/c/a/q;

    if-ne v8, v9, :cond_a

    invoke-virtual/range {p1 .. p1}, La/c/a/k;->b()[La/c/a/j;

    move-result-object v8

    invoke-static {v8}, La/c/a/j;->a([La/c/a/j;)Z

    move-result v8

    if-eqz v8, :cond_c

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "----Twitter4J-upload"

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Content-Type"

    new-instance v10, Ljava/lang/StringBuffer;

    const-string v11, "multipart/form-data; boundary="

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "--"

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v7

    :try_start_1
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual/range {p1 .. p1}, La/c/a/k;->b()[La/c/a/j;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_9

    aget-object v13, v10, v12

    invoke-virtual {v13}, La/c/a/j;->e()Z

    move-result v14

    if-eqz v14, :cond_8

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, La/c/a/f;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuffer;

    const-string v15, "Content-Disposition: form-data; name=\""

    invoke-direct {v14, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, La/c/a/j;->a()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "\"; filename=\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v13}, La/c/a/j;->c()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "\"\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, La/c/a/f;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuffer;

    const-string v15, "Content-Type: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, La/c/a/j;->g()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "\r\n\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, La/c/a/f;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-virtual {v13}, La/c/a/j;->f()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v13}, La/c/a/j;->d()Ljava/io/InputStream;

    move-result-object v13

    :goto_3
    invoke-direct {v14, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_4
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->read()I

    move-result v13

    const/4 v15, -0x1

    if-eq v13, v15, :cond_7

    invoke-virtual {v9, v13}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v2

    move-object/from16 v16, v7

    move-object v7, v3

    move-object/from16 v3, v16

    :goto_5
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_6
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v2

    move v3, v6

    move-object v6, v7

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, La/c/a/f;->i:I

    move v7, v0

    if-ne v5, v7, :cond_15

    new-instance v4, La/o;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3}, La/o;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v4

    :cond_5
    :try_start_4
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_1

    :cond_6
    :try_start_5
    new-instance v15, Ljava/io/FileInputStream;

    invoke-virtual {v13}, La/c/a/j;->c()Ljava/io/File;

    move-result-object v13

    invoke-direct {v15, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v13, v15

    goto :goto_3

    :cond_7
    const-string v13, "\r\n"

    invoke-static {v9, v13}, La/c/a/f;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V

    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :cond_8
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, La/c/a/f;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuffer;

    const-string v15, "Content-Disposition: form-data; name=\""

    invoke-direct {v14, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, La/c/a/j;->a()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "\"\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, La/c/a/f;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    const-string v14, "Content-Type: text/plain; charset=UTF-8\r\n\r\n"

    invoke-static {v9, v14}, La/c/a/f;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    sget-object v14, La/c/a/f;->b:La/c/b/a;

    invoke-virtual {v13}, La/c/a/j;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, La/c/b/a;->a(Ljava/lang/String;)V

    invoke-virtual {v13}, La/c/a/j;->b()Ljava/lang/String;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/DataOutputStream;->write([B)V

    const-string v13, "\r\n"

    invoke-static {v9, v13}, La/c/a/f;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, "--\r\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, La/c/a/f;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    const-string v8, "\r\n"

    invoke-static {v9, v8}, La/c/a/f;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    :goto_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_a
    new-instance v8, La/c/a/o;

    invoke-direct {v8, v2}, La/c/a/o;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    sget-object v3, La/c/a/f;->b:La/c/b/a;

    invoke-virtual {v3}, La/c/b/a;->b()Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, La/c/a/f;->b:La/c/b/a;

    const-string v9, "Response: "

    invoke-virtual {v3, v9}, La/c/b/a;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_d

    sget-object v12, La/c/a/f;->b:La/c/b/a;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, La/c/b/a;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v2

    move-object v3, v7

    move-object v7, v8

    goto/16 :goto_5

    :cond_c
    :try_start_7
    const-string v8, "Content-Type"

    const-string v9, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, La/c/a/k;->b()[La/c/a/j;

    move-result-object v8

    invoke-static {v8}, La/c/a/j;->b([La/c/a/j;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, La/c/a/f;->b:La/c/b/a;

    const-string v10, "Post Params: "

    invoke-virtual {v9, v10, v8}, La/c/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const-string v9, "Content-Length"

    array-length v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v7

    :try_start_8
    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_9

    :cond_d
    :try_start_9
    sget-object v12, La/c/a/f;->b:La/c/b/a;

    invoke-virtual {v12, v3}, La/c/b/a;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    const/16 v2, 0xc8

    if-lt v6, v2, :cond_f

    const/16 v2, 0x12c

    if-gt v2, v6, :cond_11

    :cond_f
    const/16 v2, 0x1a4

    if-eq v6, v2, :cond_10

    const/16 v2, 0x1f7

    if-eq v6, v2, :cond_10

    const/16 v2, 0x190

    if-eq v6, v2, :cond_10

    const/16 v2, 0x1f4

    if-lt v6, v2, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, La/c/a/f;->i:I

    move v2, v0

    if-ne v5, v2, :cond_12

    :cond_10
    new-instance v2, La/o;

    invoke-virtual {v8}, La/c/a/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v8}, La/o;-><init>(Ljava/lang/String;La/c/a/l;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_11
    :try_start_a
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    move-object v2, v8

    :goto_b
    return-object v2

    :catch_1
    move-exception v2

    move-object v2, v8

    goto :goto_b

    :cond_12
    :try_start_b
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    move-object v2, v8

    :goto_c
    :try_start_c
    sget-object v3, La/c/a/f;->b:La/c/b/a;

    invoke-virtual {v3}, La/c/b/a;->b()Z

    move-result v3

    if-eqz v3, :cond_13

    if-eqz v2, :cond_13

    invoke-virtual {v2}, La/c/a/l;->b()Ljava/lang/String;

    :cond_13
    sget-object v3, La/c/a/f;->b:La/c/b/a;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Sleeping "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, La/c/a/f;->j:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " seconds until the next retry."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, La/c/b/a;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, La/c/a/f;->j:I

    move v3, v0

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_4

    :goto_d
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    move-object v2, v8

    goto :goto_c

    :catch_3
    move-exception v3

    goto/16 :goto_6

    :catch_4
    move-exception v3

    goto :goto_d

    :catch_5
    move-exception v2

    move v3, v6

    move-object v6, v8

    goto/16 :goto_7

    :catchall_2
    move-exception v2

    move-object/from16 v16, v7

    move-object v7, v3

    move-object/from16 v3, v16

    goto/16 :goto_5

    :cond_14
    move-object v2, v3

    goto :goto_b

    :cond_15
    move-object v2, v6

    goto :goto_c
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, La/c/a/f;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, La/c/a/f;

    iget v0, p0, La/c/a/f;->g:I

    iget v1, p1, La/c/a/f;->g:I

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget v0, p0, La/c/a/f;->d:I

    iget v1, p1, La/c/a/f;->d:I

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget v0, p0, La/c/a/f;->h:I

    iget v1, p1, La/c/a/f;->h:I

    if-eq v0, v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget v0, p0, La/c/a/f;->i:I

    iget v1, p1, La/c/a/f;->i:I

    if-eq v0, v1, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    iget v0, p0, La/c/a/f;->j:I

    iget v1, p1, La/c/a/f;->j:I

    if-eq v0, v1, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, La/c/a/f;->f:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, La/c/a/f;->f:Ljava/lang/String;

    iget-object v1, p1, La/c/a/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_7
    move v0, v2

    goto :goto_0

    :cond_8
    iget-object v0, p1, La/c/a/f;->f:Ljava/lang/String;

    if-nez v0, :cond_7

    :cond_9
    iget-object v0, p0, La/c/a/f;->e:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, La/c/a/f;->e:Ljava/lang/String;

    iget-object v1, p1, La/c/a/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    move v0, v2

    goto :goto_0

    :cond_b
    iget-object v0, p1, La/c/a/f;->e:Ljava/lang/String;

    if-nez v0, :cond_a

    :cond_c
    iget-object v0, p0, La/c/a/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, La/c/a/f;->c:Ljava/lang/String;

    iget-object v1, p1, La/c/a/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move v0, v2

    goto :goto_0

    :cond_e
    iget-object v0, p1, La/c/a/f;->c:Ljava/lang/String;

    if-nez v0, :cond_d

    :cond_f
    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/c/a/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/c/a/f;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/c/a/f;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, La/c/a/f;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, La/c/a/f;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, La/c/a/f;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, La/c/a/f;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/c/a/f;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/c/a/f;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/c/a/f;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/c/a/f;->j:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "HttpClientImpl{proxyHost=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/c/a/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", proxyPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, La/c/a/f;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", proxyAuthUser=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/c/a/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", proxyAuthPassword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/c/a/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", connectionTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, La/c/a/f;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", readTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, La/c/a/f;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, La/c/a/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", retryIntervalSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, La/c/a/f;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
