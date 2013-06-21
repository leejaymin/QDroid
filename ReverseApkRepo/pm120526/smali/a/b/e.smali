.class public La/b/e;
.super Ljava/lang/Object;

# interfaces
.implements La/b/b;
.implements La/b/f;
.implements Ljava/io/Serializable;


# static fields
.field static a:Ljava/lang/Class;

.field private static transient c:La/c/a/h;

.field private static final d:La/c/a/j;

.field private static final e:La/c/b/a;

.field private static j:Ljava/util/Random;


# instance fields
.field private final b:La/a/a;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:La/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, La/c/a/j;

    const-string v1, "oauth_signature_method"

    const-string v2, "HMAC-SHA1"

    invoke-direct {v0, v1, v2}, La/c/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, La/b/e;->d:La/c/a/j;

    sget-object v0, La/b/e;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "a.b.e"

    invoke-static {v0}, La/b/e;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, La/b/e;->a:Ljava/lang/Class;

    :goto_0
    invoke-static {}, La/c/b/a;->a()La/c/b/a;

    move-result-object v0

    sput-object v0, La/b/e;->e:La/c/b/a;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, La/b/e;->j:Ljava/util/Random;

    return-void

    :cond_0
    sget-object v0, La/b/e;->a:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(La/a/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, La/b/e;->f:Ljava/lang/String;

    iput-object v1, p0, La/b/e;->h:Ljava/lang/String;

    iput-object v1, p0, La/b/e;->i:La/b/g;

    iput-object p1, p0, La/b/e;->b:La/a/a;

    new-instance v0, La/c/a/h;

    iget-object v1, p0, La/b/e;->b:La/a/a;

    invoke-direct {v0, v1}, La/c/a/h;-><init>(La/c/a/i;)V

    sput-object v0, La/b/e;->c:La/c/a/h;

    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    iput-object v0, p0, La/b/e;->f:Ljava/lang/String;

    if-eqz p3, :cond_1

    move-object v0, p3

    :goto_1
    iput-object v0, p0, La/b/e;->g:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_0

    const-string v3, "%2A"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_1

    const-string v3, "%20"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    const/16 v4, 0x25

    if-ne v3, v4, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x37

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_2

    const/16 v3, 0x7e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;La/b/g;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, La/b/e;->g:Ljava/lang/String;

    invoke-static {v3}, La/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v4, "HmacSHA1"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v2, v3

    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    invoke-static {v0}, La/c/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p2}, La/b/g;->c()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, La/b/e;->g:Ljava/lang/String;

    invoke-static {v3}, La/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p2}, La/b/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, La/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v4, "HmacSHA1"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p2, v3}, La/b/g;->a(Ljavax/crypto/spec/SecretKeySpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/c/a/j;

    invoke-virtual {p0}, La/c/a/j;->e()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p0}, La/c/a/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_3

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {p0}, La/c/a/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)V
    .locals 7

    const/4 v2, 0x0

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-static {v0, v1}, La/c/d/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :try_start_0
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-string v4, "="

    invoke-static {v3, v4}, La/c/d/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    new-instance v4, La/c/a/j;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v3, v3, v6

    const-string v6, "UTF-8"

    invoke-static {v3, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, La/c/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, La/c/a/j;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-direct {v4, v3, v5}, La/c/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_1
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/Class;
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
.method public final a(La/b/h;Ljava/lang/String;)La/b/a;
    .locals 7

    iput-object p1, p0, La/b/e;->i:La/b/g;

    iget-object v0, p0, La/b/e;->i:La/b/g;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No Token available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, La/b/a;

    sget-object v1, La/b/e;->c:La/c/a/h;

    iget-object v2, p0, La/b/e;->b:La/a/a;

    invoke-interface {v2}, La/a/a;->l()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [La/c/a/j;

    const/4 v4, 0x0

    new-instance v5, La/c/a/j;

    const-string v6, "oauth_verifier"

    invoke-direct {v5, v6, p2}, La/c/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3, p0}, La/c/a/h;->a(Ljava/lang/String;[La/c/a/j;La/b/b;)La/c/a/l;

    move-result-object v1

    invoke-direct {v0, v1}, La/b/a;-><init>(La/c/a/l;)V

    iput-object v0, p0, La/b/e;->i:La/b/g;

    iget-object p0, p0, La/b/e;->i:La/b/g;

    check-cast p0, La/b/a;

    return-object p0
.end method

.method public final a(La/c/a/k;)Ljava/lang/String;
    .locals 13

    const/16 v12, 0x8

    const/4 v11, -0x1

    const/4 v10, 0x0

    invoke-virtual {p1}, La/c/a/k;->a()La/c/a/q;

    move-result-object v0

    invoke-virtual {v0}, La/c/a/q;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, La/c/a/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, La/c/a/k;->b()[La/c/a/j;

    move-result-object v2

    iget-object v3, p0, La/b/e;->i:La/b/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sget-object v6, La/b/e;->j:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_0

    new-array v2, v10, [La/c/a/j;

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    const/4 v7, 0x5

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, La/c/a/j;

    const-string v8, "oauth_consumer_key"

    iget-object v9, p0, La/b/e;->f:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, La/c/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v7, La/b/e;->d:La/c/a/j;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, La/c/a/j;

    const-string v8, "oauth_timestamp"

    invoke-direct {v7, v8, v4}, La/c/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, La/c/a/j;

    const-string v7, "oauth_nonce"

    invoke-direct {v4, v7, v6}, La/c/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, La/c/a/j;

    const-string v6, "oauth_version"

    const-string v7, "1.0"

    invoke-direct {v4, v6, v7}, La/c/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_1

    new-instance v4, La/c/a/j;

    const-string v6, "oauth_token"

    invoke-virtual {v3}, La/b/g;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, La/c/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    array-length v7, v2

    add-int/2addr v6, v7

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v2}, La/c/a/j;->a([La/c/a/j;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v2

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-static {v1, v4}, La/b/e;->a(Ljava/lang/String;Ljava/util/List;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v11, v2, :cond_3

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string v2, "/"

    invoke-virtual {v1, v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    if-eq v11, v7, :cond_4

    const-string v8, "http://"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, ":80"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v6, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_4
    :goto_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v1, "&"

    invoke-static {v4, v1, v10}, La/b/e;->a(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, La/b/e;->e:La/c/b/a;

    const-string v2, "OAuth base string: "

    invoke-virtual {v1, v2, v0}, La/c/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, La/b/e;->a(Ljava/lang/String;La/b/g;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, La/b/e;->e:La/c/b/a;

    const-string v2, "OAuth signature: "

    invoke-virtual {v1, v2, v0}, La/c/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, La/c/a/j;

    const-string v2, "oauth_signature"

    invoke-direct {v1, v2, v0}, La/c/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/b/e;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v0, La/c/a/j;

    const-string v1, "realm"

    iget-object v2, p0, La/b/e;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, La/c/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "OAuth "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    const/4 v2, 0x1

    invoke-static {v5, v1, v2}, La/b/e;->a(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    const-string v8, "https://"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, ":443"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v6, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public final a(La/b/a;)V
    .locals 0

    iput-object p1, p0, La/b/e;->i:La/b/g;

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, La/b/e;->i:La/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/b/e;->i:La/b/g;

    instance-of v0, v0, La/b/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)La/b/h;
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [La/c/a/j;

    new-instance v1, La/c/a/j;

    const-string v2, "oauth_callback"

    invoke-direct {v1, v2, p1}, La/c/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    :goto_0
    new-instance v1, La/b/h;

    sget-object v2, La/b/e;->c:La/c/a/h;

    iget-object v3, p0, La/b/e;->b:La/a/a;

    invoke-interface {v3}, La/a/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p0}, La/c/a/h;->a(Ljava/lang/String;[La/c/a/j;La/b/b;)La/c/a/l;

    move-result-object v0

    invoke-direct {v1, v0, p0}, La/b/h;-><init>(La/c/a/l;La/b/f;)V

    iput-object v1, p0, La/b/e;->i:La/b/g;

    iget-object p0, p0, La/b/e;->i:La/b/g;

    check-cast p0, La/b/h;

    return-object p0

    :cond_0
    new-array v0, v3, [La/c/a/j;

    goto :goto_0
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
    instance-of v0, p1, La/b/f;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, La/b/e;

    iget-object v0, p0, La/b/e;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, La/b/e;->f:Ljava/lang/String;

    iget-object v1, p1, La/b/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p1, La/b/e;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_4
    iget-object v0, p0, La/b/e;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, La/b/e;->g:Ljava/lang/String;

    iget-object v1, p1, La/b/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p1, La/b/e;->g:Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_7
    iget-object v0, p0, La/b/e;->i:La/b/g;

    if-eqz v0, :cond_9

    iget-object v0, p0, La/b/e;->i:La/b/g;

    iget-object v1, p1, La/b/e;->i:La/b/g;

    invoke-virtual {v0, v1}, La/b/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    move v0, v2

    goto :goto_0

    :cond_9
    iget-object v0, p1, La/b/e;->i:La/b/g;

    if-nez v0, :cond_8

    :cond_a
    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/b/e;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/b/e;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, La/b/e;->g:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, La/b/e;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, La/b/e;->i:La/b/g;

    if-eqz v1, :cond_2

    iget-object v1, p0, La/b/e;->i:La/b/g;

    invoke-virtual {v1}, La/b/g;->hashCode()I

    move-result v1

    :goto_2
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
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "OAuthAuthorization{consumerKey=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/b/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", consumerSecret=\'******************************************\', oauthToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/b/e;->i:La/b/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
