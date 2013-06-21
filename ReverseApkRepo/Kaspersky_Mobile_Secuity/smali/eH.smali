.class public final LeH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LfD;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, LeH;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LeH;->a:Ljava/lang/String;

    .line 107
    iget-object v1, p0, LeH;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    iget-object v1, p0, LeH;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v1, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 114
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 94
    const-string v0, "hide:"

    invoke-direct {p0, v0}, LeH;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wipe:"

    invoke-direct {p0, v0}, LeH;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "clean:"

    invoke-direct {p0, v0}, LeH;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "block:"

    invoke-direct {p0, v0}, LeH;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lock:"

    invoke-direct {p0, v0}, LeH;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "find:"

    invoke-direct {p0, v0}, LeH;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "locate:"

    invoke-direct {p0, v0}, LeH;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fullreset:"

    invoke-direct {p0, v0}, LeH;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x2

    return v0
.end method

.method public final a(LfK;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 21
    .line 22
    instance-of v0, p1, LfL;

    if-eqz v0, :cond_9

    move-object v0, p1

    .line 23
    check-cast v0, LfL;

    .line 24
    iget-object v1, v0, LfL;->e:Ljava/lang/String;

    iput-object v1, p0, LeH;->a:Ljava/lang/String;

    .line 25
    iget v1, v0, LfL;->d:I

    if-nez v1, :cond_8

    .line 26
    const-string v1, "wipe:"

    invoke-direct {p0, v1}, LeH;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    iget-object v4, p0, LeH;->a:Ljava/lang/String;

    const-string v5, "wipe:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, LfK;->c:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/kms/kmsshared/KMSApplication;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 77
    :goto_0
    if-ne v1, v2, :cond_b

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x3

    if-le v2, v4, :cond_b

    .line 79
    invoke-virtual {v0, v3}, LfL;->a(Z)V

    move v0, v1

    .line 90
    :goto_1
    return v0

    .line 31
    :cond_0
    const-string v1, "clean:"

    invoke-direct {p0, v1}, LeH;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    iget-object v4, p0, LeH;->a:Ljava/lang/String;

    const-string v5, "clean:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, LfK;->c:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/kms/kmsshared/KMSApplication;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    const-string v1, "fullreset:"

    invoke-direct {p0, v1}, LeH;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    iget-object v4, p0, LeH;->a:Ljava/lang/String;

    const-string v5, "fullreset:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, LfK;->c:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/kms/kmsshared/KMSApplication;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 40
    goto :goto_0

    .line 42
    :cond_2
    const-string v1, "full reset:"

    invoke-direct {p0, v1}, LeH;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 43
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    iget-object v4, p0, LeH;->a:Ljava/lang/String;

    const-string v5, "full reset:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, LfK;->c:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/kms/kmsshared/KMSApplication;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 46
    goto :goto_0

    .line 48
    :cond_3
    const-string v1, "block:"

    invoke-direct {p0, v1}, LeH;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 49
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    iget-object v4, p0, LeH;->a:Ljava/lang/String;

    const-string v5, "block:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, LfK;->c:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/kms/kmsshared/KMSApplication;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 53
    goto/16 :goto_0

    .line 55
    :cond_4
    const-string v1, "lock:"

    invoke-direct {p0, v1}, LeH;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 56
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    iget-object v4, p0, LeH;->a:Ljava/lang/String;

    const-string v5, "lock:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, LfK;->c:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/kms/kmsshared/KMSApplication;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 60
    goto/16 :goto_0

    .line 62
    :cond_5
    const-string v1, "find:"

    invoke-direct {p0, v1}, LeH;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 63
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    iget-object v4, p0, LeH;->a:Ljava/lang/String;

    const-string v5, "find:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, LfK;->c:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/kms/kmsshared/KMSApplication;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 65
    goto/16 :goto_0

    .line 67
    :cond_6
    const-string v1, "locate:"

    invoke-direct {p0, v1}, LeH;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 68
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    iget-object v4, p0, LeH;->a:Ljava/lang/String;

    const-string v5, "locate:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, LfK;->c:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/kms/kmsshared/KMSApplication;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 70
    goto/16 :goto_0

    .line 72
    :cond_7
    const-string v1, "hide:"

    invoke-direct {p0, v1}, LeH;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 73
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    iget-object v4, p0, LeH;->a:Ljava/lang/String;

    const-string v5, "hide:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, LfK;->c:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/kms/kmsshared/KMSApplication;->f(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 75
    goto/16 :goto_0

    .line 82
    :cond_8
    iget v0, v0, LfL;->d:I

    if-ne v0, v2, :cond_a

    .line 83
    invoke-direct {p0}, LeH;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 84
    invoke-virtual {p1, v2}, LfK;->a(Z)V

    move v0, v2

    .line 85
    goto/16 :goto_1

    :cond_9
    move v0, v3

    .line 90
    goto/16 :goto_1

    :cond_a
    move v0, v3

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto/16 :goto_1

    :cond_c
    move v1, v3

    goto/16 :goto_0
.end method
