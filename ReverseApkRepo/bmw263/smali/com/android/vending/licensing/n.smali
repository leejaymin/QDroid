.class final Lcom/android/vending/licensing/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/android/vending/licensing/q;

.field private final b:Lcom/android/vending/licensing/l;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/android/vending/licensing/b;


# direct methods
.method constructor <init>(Lcom/android/vending/licensing/q;Lcom/android/vending/licensing/b;Lcom/android/vending/licensing/l;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/vending/licensing/n;->a:Lcom/android/vending/licensing/q;

    .line 62
    iput-object p2, p0, Lcom/android/vending/licensing/n;->f:Lcom/android/vending/licensing/b;

    .line 63
    iput-object p3, p0, Lcom/android/vending/licensing/n;->b:Lcom/android/vending/licensing/l;

    .line 64
    iput p4, p0, Lcom/android/vending/licensing/n;->c:I

    .line 65
    iput-object p5, p0, Lcom/android/vending/licensing/n;->d:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/android/vending/licensing/n;->e:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private a(Lcom/android/vending/licensing/r;Lcom/android/vending/licensing/t;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/vending/licensing/n;->a:Lcom/android/vending/licensing/q;

    invoke-interface {v0, p1, p2}, Lcom/android/vending/licensing/q;->a(Lcom/android/vending/licensing/r;Lcom/android/vending/licensing/t;)V

    .line 216
    iget-object v0, p0, Lcom/android/vending/licensing/n;->a:Lcom/android/vending/licensing/q;

    invoke-interface {v0}, Lcom/android/vending/licensing/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/vending/licensing/n;->b:Lcom/android/vending/licensing/l;

    invoke-interface {v0}, Lcom/android/vending/licensing/l;->a()V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/vending/licensing/n;->b:Lcom/android/vending/licensing/l;

    invoke-interface {v0}, Lcom/android/vending/licensing/l;->b()V

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/vending/licensing/n;->b:Lcom/android/vending/licensing/l;

    invoke-interface {v0}, Lcom/android/vending/licensing/l;->c()V

    .line 225
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/vending/licensing/n;->b:Lcom/android/vending/licensing/l;

    invoke-interface {v0}, Lcom/android/vending/licensing/l;->b()V

    .line 229
    return-void
.end method


# virtual methods
.method public final a()Lcom/android/vending/licensing/l;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/vending/licensing/n;->b:Lcom/android/vending/licensing/l;

    return-object v0
.end method

.method public final a(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 92
    .line 94
    const/4 v0, 0x0

    .line 95
    if-eqz p2, :cond_0

    if-eq p2, v1, :cond_0

    .line 96
    if-ne p2, v2, :cond_9

    .line 99
    :cond_0
    :try_start_0
    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 101
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 103
    invoke-static {p4}, Lcom/android/vending/licensing/a/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/android/vending/licensing/n;->e()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/vending/licensing/a/b; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    .line 202
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 112
    :catch_1
    move-exception v0

    sget-object v0, Lcom/android/vending/licensing/m;->e:Lcom/android/vending/licensing/m;

    invoke-direct {p0}, Lcom/android/vending/licensing/n;->d()V

    goto :goto_0

    .line 114
    :catch_2
    move-exception v0

    .line 115
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 118
    :catch_3
    move-exception v0

    invoke-direct {p0}, Lcom/android/vending/licensing/n;->e()V

    goto :goto_0

    .line 122
    :catch_4
    move-exception v0

    invoke-direct {p0}, Lcom/android/vending/licensing/n;->e()V

    goto :goto_0

    .line 128
    :cond_1
    :try_start_1
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v0, p3}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blank response."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5

    .line 131
    :catch_5
    move-exception v0

    invoke-direct {p0}, Lcom/android/vending/licensing/n;->e()V

    goto :goto_0

    .line 128
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_3
    const-string v2, "|"

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    const/4 v3, 0x6

    if-ge v0, v3, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong number of fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/android/vending/licensing/t;

    invoke-direct {v0}, Lcom/android/vending/licensing/t;-><init>()V

    iput-object v1, v0, Lcom/android/vending/licensing/t;->g:Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/vending/licensing/t;->a:I

    const/4 v1, 0x1

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/vending/licensing/t;->b:I

    const/4 v1, 0x2

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/android/vending/licensing/t;->c:Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/android/vending/licensing/t;->d:Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/android/vending/licensing/t;->e:Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/vending/licensing/t;->f:J
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5

    .line 135
    iget v1, v0, Lcom/android/vending/licensing/t;->a:I

    if-eq v1, p2, :cond_5

    .line 137
    invoke-direct {p0}, Lcom/android/vending/licensing/n;->e()V

    goto/16 :goto_0

    .line 141
    :cond_5
    iget v1, v0, Lcom/android/vending/licensing/t;->b:I

    iget v2, p0, Lcom/android/vending/licensing/n;->c:I

    if-eq v1, v2, :cond_6

    .line 143
    invoke-direct {p0}, Lcom/android/vending/licensing/n;->e()V

    goto/16 :goto_0

    .line 147
    :cond_6
    iget-object v1, v0, Lcom/android/vending/licensing/t;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vending/licensing/n;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 149
    invoke-direct {p0}, Lcom/android/vending/licensing/n;->e()V

    goto/16 :goto_0

    .line 153
    :cond_7
    iget-object v1, v0, Lcom/android/vending/licensing/t;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vending/licensing/n;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 155
    invoke-direct {p0}, Lcom/android/vending/licensing/n;->e()V

    goto/16 :goto_0

    .line 160
    :cond_8
    iget-object v1, v0, Lcom/android/vending/licensing/t;->e:Ljava/lang/String;

    .line 161
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 163
    invoke-direct {p0}, Lcom/android/vending/licensing/n;->e()V

    goto/16 :goto_0

    .line 168
    :cond_9
    sparse-switch p2, :sswitch_data_0

    .line 200
    invoke-direct {p0}, Lcom/android/vending/licensing/n;->e()V

    goto/16 :goto_0

    .line 171
    :sswitch_0
    iget-object v1, p0, Lcom/android/vending/licensing/n;->f:Lcom/android/vending/licensing/b;

    invoke-interface {v1}, Lcom/android/vending/licensing/b;->a()Lcom/android/vending/licensing/r;

    move-result-object v1

    .line 172
    invoke-direct {p0, v1, v0}, Lcom/android/vending/licensing/n;->a(Lcom/android/vending/licensing/r;Lcom/android/vending/licensing/t;)V

    goto/16 :goto_0

    .line 175
    :sswitch_1
    sget-object v1, Lcom/android/vending/licensing/r;->b:Lcom/android/vending/licensing/r;

    invoke-direct {p0, v1, v0}, Lcom/android/vending/licensing/n;->a(Lcom/android/vending/licensing/r;Lcom/android/vending/licensing/t;)V

    goto/16 :goto_0

    .line 179
    :sswitch_2
    sget-object v1, Lcom/android/vending/licensing/r;->c:Lcom/android/vending/licensing/r;

    invoke-direct {p0, v1, v0}, Lcom/android/vending/licensing/n;->a(Lcom/android/vending/licensing/r;Lcom/android/vending/licensing/t;)V

    goto/16 :goto_0

    .line 183
    :sswitch_3
    sget-object v1, Lcom/android/vending/licensing/r;->c:Lcom/android/vending/licensing/r;

    invoke-direct {p0, v1, v0}, Lcom/android/vending/licensing/n;->a(Lcom/android/vending/licensing/r;Lcom/android/vending/licensing/t;)V

    goto/16 :goto_0

    .line 187
    :sswitch_4
    sget-object v1, Lcom/android/vending/licensing/r;->c:Lcom/android/vending/licensing/r;

    invoke-direct {p0, v1, v0}, Lcom/android/vending/licensing/n;->a(Lcom/android/vending/licensing/r;Lcom/android/vending/licensing/t;)V

    goto/16 :goto_0

    .line 190
    :sswitch_5
    sget-object v0, Lcom/android/vending/licensing/m;->a:Lcom/android/vending/licensing/m;

    invoke-direct {p0}, Lcom/android/vending/licensing/n;->d()V

    goto/16 :goto_0

    .line 193
    :sswitch_6
    sget-object v0, Lcom/android/vending/licensing/m;->b:Lcom/android/vending/licensing/m;

    invoke-direct {p0}, Lcom/android/vending/licensing/n;->d()V

    goto/16 :goto_0

    .line 196
    :sswitch_7
    sget-object v0, Lcom/android/vending/licensing/m;->c:Lcom/android/vending/licensing/m;

    invoke-direct {p0}, Lcom/android/vending/licensing/n;->d()V

    goto/16 :goto_0

    .line 168
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

    .prologue
    .line 74
    iget v0, p0, Lcom/android/vending/licensing/n;->c:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/vending/licensing/n;->d:Ljava/lang/String;

    return-object v0
.end method
