.class public final Lcom/inisoft/mediaplayer/bp;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/inisoft/mediaplayer/bs;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inisoft/mediaplayer/bp;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inisoft/mediaplayer/bp;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inisoft/mediaplayer/bp;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inisoft/mediaplayer/bp;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/bp;->g:Z

    return-void
.end method

.method public constructor <init>(Lcom/inisoft/mediaplayer/bs;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/inisoft/mediaplayer/bp;->a(Lcom/inisoft/mediaplayer/bs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/inisoft/mediaplayer/bs;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/inisoft/mediaplayer/bp;->a(Lcom/inisoft/mediaplayer/bs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/inisoft/mediaplayer/bs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v3, ""

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/inisoft/mediaplayer/bp;->a(Lcom/inisoft/mediaplayer/bs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/inisoft/mediaplayer/bs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct/range {p0 .. p7}, Lcom/inisoft/mediaplayer/bp;->a(Lcom/inisoft/mediaplayer/bs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lcom/inisoft/mediaplayer/bs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/inisoft/mediaplayer/bp;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/inisoft/mediaplayer/bp;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/inisoft/mediaplayer/bp;->e:Ljava/lang/String;

    if-eqz p6, :cond_0

    iput-object p6, p0, Lcom/inisoft/mediaplayer/bp;->f:Ljava/lang/String;

    :cond_0
    iput-boolean p7, p0, Lcom/inisoft/mediaplayer/bp;->g:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, " | "

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/inisoft/mediaplayer/bs;->a(I)Lcom/inisoft/mediaplayer/bs;

    move-result-object v3

    iput-object v3, p0, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    const-string v3, " | "

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x3

    iput-object v2, p0, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    const-string v2, " | "

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x3

    iput-object v3, p0, Lcom/inisoft/mediaplayer/bp;->c:Ljava/lang/String;

    const-string v3, " | "

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x3

    iput-object v2, p0, Lcom/inisoft/mediaplayer/bp;->d:Ljava/lang/String;

    const-string v2, " | "

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x3

    iput-object v3, p0, Lcom/inisoft/mediaplayer/bp;->e:Ljava/lang/String;

    const-string v3, " | "

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inisoft/mediaplayer/bp;->f:Ljava/lang/String;

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x3

    iput-object v2, p0, Lcom/inisoft/mediaplayer/bp;->f:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/bp;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method
