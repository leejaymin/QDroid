.class final Lcom/a/a/a/a/n;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/a/a/a/q;

.field private final b:Lcom/a/a/a/a/m;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/a/a/a/a/b;


# direct methods
.method constructor <init>(Lcom/a/a/a/a/q;Lcom/a/a/a/a/b;Lcom/a/a/a/a/m;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/a/n;->a:Lcom/a/a/a/a/q;

    iput-object p2, p0, Lcom/a/a/a/a/n;->f:Lcom/a/a/a/a/b;

    iput-object p3, p0, Lcom/a/a/a/a/n;->b:Lcom/a/a/a/a/m;

    iput p4, p0, Lcom/a/a/a/a/n;->c:I

    iput-object p5, p0, Lcom/a/a/a/a/n;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/a/a/a/a/n;->e:Ljava/lang/String;

    return-void
.end method

.method private a(ILcom/a/a/a/a/s;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/a/n;->a:Lcom/a/a/a/a/q;

    invoke-interface {v0, p1, p2}, Lcom/a/a/a/a/q;->a(ILcom/a/a/a/a/s;)V

    iget-object v0, p0, Lcom/a/a/a/a/n;->a:Lcom/a/a/a/a/q;

    invoke-interface {v0}, Lcom/a/a/a/a/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/a/n;->b:Lcom/a/a/a/a/m;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/n;->b:Lcom/a/a/a/a/m;

    invoke-interface {v0, p1}, Lcom/a/a/a/a/m;->a(I)V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/a/n;->b:Lcom/a/a/a/a/m;

    const/16 v1, 0x231

    invoke-interface {v0, v1}, Lcom/a/a/a/a/m;->a(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/a/a/a/a/m;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/a/n;->b:Lcom/a/a/a/a/m;

    return-object v0
.end method

.method public final a(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v4, 0x123

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-eq p2, v1, :cond_0

    if-ne p2, v2, :cond_9

    :cond_0
    :try_start_0
    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    invoke-static {p4}, Lcom/a/a/a/a/a/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LicenseValidator"

    const-string v1, "Signature verification failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/a/a/a/a/n;->d()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/a/a/a/a/a/b; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/a/a/a/a/n;->b:Lcom/a/a/a/a/m;

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    const-string v0, "LicenseValidator"

    const-string v1, "Could not Base64-decode signature."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/a/a/a/a/n;->d()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3a

    :try_start_1
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_2

    const-string v0, ""

    move-object v1, v0

    :goto_1
    const-string v0, "|"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    const/4 v3, 0x6

    if-ge v0, v3, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong number of fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    :catch_4
    move-exception v0

    const-string v0, "LicenseValidator"

    const-string v1, "Could not parse response."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/a/a/a/a/n;->d()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_3

    const-string v0, ""

    move-object p3, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object p3, v1

    move-object v1, v0

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/a/a/a/a/s;

    invoke-direct {v0}, Lcom/a/a/a/a/s;-><init>()V

    iput-object v1, v0, Lcom/a/a/a/a/s;->g:Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/a/a/a/a/s;->a:I

    const/4 v1, 0x1

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/a/a/a/a/s;->b:I

    const/4 v1, 0x2

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/a/a/a/a/s;->c:Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/a/a/a/a/s;->d:Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/a/a/a/a/s;->e:Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/a/a/a/a/s;->f:J
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    iget v1, v0, Lcom/a/a/a/a/s;->a:I

    if-eq v1, p2, :cond_5

    const-string v0, "LicenseValidator"

    const-string v1, "Response codes don\'t match."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/a/a/a/a/n;->d()V

    goto/16 :goto_0

    :cond_5
    iget v1, v0, Lcom/a/a/a/a/s;->b:I

    iget v2, p0, Lcom/a/a/a/a/n;->c:I

    if-eq v1, v2, :cond_6

    const-string v0, "LicenseValidator"

    const-string v1, "Nonce doesn\'t match."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/a/a/a/a/n;->d()V

    goto/16 :goto_0

    :cond_6
    iget-object v1, v0, Lcom/a/a/a/a/s;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/a/a/n;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v0, "LicenseValidator"

    const-string v1, "Package name doesn\'t match."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/a/a/a/a/n;->d()V

    goto/16 :goto_0

    :cond_7
    iget-object v1, v0, Lcom/a/a/a/a/s;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/a/a/n;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v0, "LicenseValidator"

    const-string v1, "Version codes don\'t match."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/a/a/a/a/n;->d()V

    goto/16 :goto_0

    :cond_8
    iget-object v1, v0, Lcom/a/a/a/a/s;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "LicenseValidator"

    const-string v1, "User identifier is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/a/a/a/a/n;->d()V

    goto/16 :goto_0

    :cond_9
    sparse-switch p2, :sswitch_data_0

    const-string v0, "LicenseValidator"

    const-string v1, "Unknown response code for license check."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/a/a/a/a/n;->d()V

    goto/16 :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/a/a/a/a/n;->f:Lcom/a/a/a/a/b;

    const/16 v1, 0x100

    invoke-direct {p0, v1, v0}, Lcom/a/a/a/a/n;->a(ILcom/a/a/a/a/s;)V

    goto/16 :goto_0

    :sswitch_1
    const/16 v1, 0x231

    invoke-direct {p0, v1, v0}, Lcom/a/a/a/a/n;->a(ILcom/a/a/a/a/s;)V

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "LicenseValidator"

    const-string v2, "Error contacting licensing server."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, v0}, Lcom/a/a/a/a/n;->a(ILcom/a/a/a/a/s;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "LicenseValidator"

    const-string v2, "An error has occurred on the licensing server."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, v0}, Lcom/a/a/a/a/n;->a(ILcom/a/a/a/a/s;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "LicenseValidator"

    const-string v2, "Licensing server is refusing to talk to this device, over quota."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, v0}, Lcom/a/a/a/a/n;->a(ILcom/a/a/a/a/s;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/a/a/a/a/n;->b:Lcom/a/a/a/a/m;

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/a/a/a/a/n;->b:Lcom/a/a/a/a/m;

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/a/a/a/a/n;->b:Lcom/a/a/a/a/m;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_7
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x101 -> :sswitch_2
        0x102 -> :sswitch_5
        0x103 -> :sswitch_6
    .end sparse-switch
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/a/n;->c:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/a/n;->d:Ljava/lang/String;

    return-object v0
.end method
