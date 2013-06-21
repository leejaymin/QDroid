.class public final Lai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lai;->b:I

    .line 31
    iput-object p1, p0, Lai;->a:Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Lai;->d()V

    .line 33
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 73
    if-nez p1, :cond_1

    .line 75
    iput v1, p0, Lai;->b:I

    .line 76
    const/16 v0, 0x50

    iput v0, p0, Lai;->e:I

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    iput v1, p0, Lai;->b:I

    goto :goto_0

    .line 82
    :cond_2
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    const/4 v0, 0x2

    iput v0, p0, Lai;->b:I

    goto :goto_0

    .line 86
    :cond_3
    const-string v0, "ftp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    const/4 v0, 0x3

    iput v0, p0, Lai;->b:I

    goto :goto_0

    .line 90
    :cond_4
    const-string v0, "ftps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    const/4 v0, 0x4

    iput v0, p0, Lai;->b:I

    goto :goto_0

    .line 94
    :cond_5
    const-string v0, "file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    :cond_6
    const/4 v0, 0x5

    iput v0, p0, Lai;->b:I

    goto :goto_0
.end method

.method private a(Ljava/net/URI;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    iget v0, p0, Lai;->e:I

    if-nez v0, :cond_0

    .line 106
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    iput v1, p0, Lai;->e:I

    .line 108
    iget v1, p0, Lai;->e:I

    if-gtz v1, :cond_0

    .line 110
    invoke-virtual {v0}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    iput v0, p0, Lai;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 115
    invoke-static {v0}, Lam;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 62
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lai;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lai;->a(Ljava/lang/String;)V

    .line 64
    iget v1, p0, Lai;->b:I

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown scheme : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "//"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lai;->c:Ljava/lang/String;

    .line 67
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lai;->d:Ljava/lang/String;

    .line 68
    invoke-direct {p0, v0}, Lai;->a(Ljava/net/URI;)V

    .line 69
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lai;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lai;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lai;->e:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lai;->a:Ljava/lang/String;

    return-object v0
.end method
