.class public final Lcom/tapjoy/d;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/tapjoy/bk;

.field private static e:Lcom/tapjoy/bd;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/d;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/d;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/d;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/tapjoy/d;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a()Lcom/tapjoy/bk;
    .locals 1

    sget-object v0, Lcom/tapjoy/d;->d:Lcom/tapjoy/bk;

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/d;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/tapjoy/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/tapjoy/bm;->b(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Success"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/bm;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "TapPoints"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/bm;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CurrencyName"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/bm;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/tapjoy/aw;->i()I

    move-result v2

    sget-object v3, Lcom/tapjoy/d;->e:Lcom/tapjoy/bd;

    if-eqz v3, :cond_0

    const/16 v3, -0x270f

    if-eq v2, v3, :cond_0

    if-le v0, v2, :cond_0

    const-string v3, "TapjoyPoints"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "earned: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/d;->e:Lcom/tapjoy/bd;

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/aw;->a(I)V

    sget-object v0, Lcom/tapjoy/d;->d:Lcom/tapjoy/bk;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tapjoy/bk;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    const-string v0, "TapjoyPoints"

    const-string v1, "Invalid XML: Missing tags."

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v0, "TapjoyPoints"

    const-string v1, "Invalid XML: Missing <Success> tag."

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/tapjoy/bk;)V
    .locals 2

    sput-object p1, Lcom/tapjoy/d;->d:Lcom/tapjoy/bk;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/e;

    invoke-direct {v1, p0}, Lcom/tapjoy/e;-><init>(Lcom/tapjoy/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
