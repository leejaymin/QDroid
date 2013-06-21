.class final Li;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/android/vending/licensing/Policy;

.field private final b:Lcom/android/vending/licensing/LicenseCheckerCallback;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lb;


# direct methods
.method constructor <init>(Lcom/android/vending/licensing/Policy;Lb;Lcom/android/vending/licensing/LicenseCheckerCallback;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Li;->a:Lcom/android/vending/licensing/Policy;

    .line 62
    iput-object p2, p0, Li;->f:Lb;

    .line 63
    iput-object p3, p0, Li;->b:Lcom/android/vending/licensing/LicenseCheckerCallback;

    .line 64
    iput p4, p0, Li;->c:I

    .line 65
    iput-object p5, p0, Li;->d:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Li;->e:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private a(Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;)V
    .locals 1
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Li;->b:Lcom/android/vending/licensing/LicenseCheckerCallback;

    invoke-interface {v0}, Lcom/android/vending/licensing/LicenseCheckerCallback;->c()V

    .line 225
    return-void
.end method

.method private a(Lcom/android/vending/licensing/Policy$LicenseResponse;Lm;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Li;->a:Lcom/android/vending/licensing/Policy;

    invoke-interface {v0, p1, p2}, Lcom/android/vending/licensing/Policy;->a(Lcom/android/vending/licensing/Policy$LicenseResponse;Lm;)V

    .line 216
    iget-object v0, p0, Li;->a:Lcom/android/vending/licensing/Policy;

    invoke-interface {v0}, Lcom/android/vending/licensing/Policy;->a()Z

    move-result v0

    nop

    nop

    .line 217
    iget-object v0, p0, Li;->b:Lcom/android/vending/licensing/LicenseCheckerCallback;

    invoke-interface {v0}, Lcom/android/vending/licensing/LicenseCheckerCallback;->a()V

    .line 221
    :goto_0
    return-void

    .line 219
    iget-object v0, p0, Li;->b:Lcom/android/vending/licensing/LicenseCheckerCallback;

    invoke-interface {v0}, Lcom/android/vending/licensing/LicenseCheckerCallback;->b()V

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Li;->b:Lcom/android/vending/licensing/LicenseCheckerCallback;

    invoke-interface {v0}, Lcom/android/vending/licensing/LicenseCheckerCallback;->b()V

    .line 229
    return-void
.end method


# virtual methods
.method public final a()Lcom/android/vending/licensing/LicenseCheckerCallback;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Li;->b:Lcom/android/vending/licensing/LicenseCheckerCallback;

    return-object v0
.end method

.method public final a(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    .line 94
    const/4 v0, 0x0

    .line 95
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_7

    .line 98
    :cond_0
    if-nez p3, :cond_1

    .line 99
    invoke-direct {p0}, Li;->d()V

    .line 202
    :goto_0
    return-void

    .line 103
    :cond_1
    :try_start_0
    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 105
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 107
    invoke-static {p4}, Lo;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    const-string v0, "LicenseValidator"

    const-string v1, "Signature verification failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0}, Li;->d()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/vending/licensing/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 114
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 116
    :catch_1
    move-exception v0

    sget-object v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->INVALID_PUBLIC_KEY:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    invoke-direct {p0, v0}, Li;->a(Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;)V

    goto :goto_0

    .line 118
    :catch_2
    move-exception v0

    .line 119
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 121
    :catch_3
    move-exception v0

    const-string v0, "LicenseValidator"

    const-string v1, "Could not Base64-decode signature."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {p0}, Li;->d()V

    goto :goto_0

    .line 128
    :cond_2
    :try_start_1
    invoke-static {p3}, Lm;->a(Ljava/lang/String;)Lm;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 135
    iget v1, v0, Lm;->a:I

    if-eq v1, p2, :cond_3

    .line 136
    const-string v0, "LicenseValidator"

    const-string v1, "Response codes don\'t match."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Li;->d()V

    goto :goto_0

    .line 130
    :catch_4
    move-exception v0

    const-string v0, "LicenseValidator"

    const-string v1, "Could not parse response."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0}, Li;->d()V

    goto :goto_0

    .line 141
    :cond_3
    iget v1, v0, Lm;->b:I

    iget v2, p0, Li;->c:I

    if-eq v1, v2, :cond_4

    .line 142
    const-string v0, "LicenseValidator"

    const-string v1, "Nonce doesn\'t match."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Li;->d()V

    goto :goto_0

    .line 147
    :cond_4
    iget-object v1, v0, Lm;->c:Ljava/lang/String;

    iget-object v2, p0, Li;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 148
    const-string v0, "LicenseValidator"

    const-string v1, "Package name doesn\'t match."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Li;->d()V

    goto/16 :goto_0

    .line 153
    :cond_5
    iget-object v1, v0, Lm;->d:Ljava/lang/String;

    iget-object v2, p0, Li;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 154
    const-string v0, "LicenseValidator"

    const-string v1, "Version codes don\'t match."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Li;->d()V

    goto/16 :goto_0

    .line 160
    :cond_6
    iget-object v1, v0, Lm;->e:Ljava/lang/String;

    .line 161
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 162
    const-string v0, "LicenseValidator"

    const-string v1, "User identifier is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0}, Li;->d()V

    goto/16 :goto_0

    .line 168
    :cond_7
    sparse-switch p2, :sswitch_data_0

    .line 199
    const-string v0, "LicenseValidator"

    const-string v1, "Unknown response code for license check."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0}, Li;->d()V

    goto/16 :goto_0

    .line 171
    :sswitch_0
    iget-object v1, p0, Li;->f:Lb;

    invoke-interface {v1}, Lb;->a()Lcom/android/vending/licensing/Policy$LicenseResponse;

    move-result-object v1

    .line 172
    invoke-direct {p0, v1, v0}, Li;->a(Lcom/android/vending/licensing/Policy$LicenseResponse;Lm;)V

    goto/16 :goto_0

    .line 175
    sget-object v1, Lcom/android/vending/licensing/Policy$LicenseResponse;->NOT_LICENSED:Lcom/android/vending/licensing/Policy$LicenseResponse;

    invoke-direct {p0, v1, v0}, Li;->a(Lcom/android/vending/licensing/Policy$LicenseResponse;Lm;)V

    goto/16 :goto_0

    .line 178
    :sswitch_1
    const-string v1, "LicenseValidator"

    const-string v2, "Error contacting licensing server."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v1, Lcom/android/vending/licensing/Policy$LicenseResponse;->RETRY:Lcom/android/vending/licensing/Policy$LicenseResponse;

    invoke-direct {p0, v1, v0}, Li;->a(Lcom/android/vending/licensing/Policy$LicenseResponse;Lm;)V

    goto/16 :goto_0

    .line 182
    :sswitch_2
    const-string v1, "LicenseValidator"

    const-string v2, "An error has occurred on the licensing server."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v1, Lcom/android/vending/licensing/Policy$LicenseResponse;->RETRY:Lcom/android/vending/licensing/Policy$LicenseResponse;

    invoke-direct {p0, v1, v0}, Li;->a(Lcom/android/vending/licensing/Policy$LicenseResponse;Lm;)V

    goto/16 :goto_0

    .line 186
    :sswitch_3
    const-string v1, "LicenseValidator"

    const-string v2, "Licensing server is refusing to talk to this device, over quota."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v1, Lcom/android/vending/licensing/Policy$LicenseResponse;->RETRY:Lcom/android/vending/licensing/Policy$LicenseResponse;

    invoke-direct {p0, v1, v0}, Li;->a(Lcom/android/vending/licensing/Policy$LicenseResponse;Lm;)V

    goto/16 :goto_0

    .line 190
    :sswitch_4
    sget-object v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->INVALID_PACKAGE_NAME:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    invoke-direct {p0, v0}, Li;->a(Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;)V

    goto/16 :goto_0

    .line 193
    :sswitch_5
    sget-object v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->NON_MATCHING_UID:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    invoke-direct {p0, v0}, Li;->a(Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;)V

    goto/16 :goto_0

    .line 196
    :sswitch_6
    sget-object v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->NOT_MARKET_MANAGED:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    invoke-direct {p0, v0}, Li;->a(Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;)V

    goto/16 :goto_0

    .line 168
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_6
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x101 -> :sswitch_1
        0x102 -> :sswitch_4
        0x103 -> :sswitch_5
    .end sparse-switch
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Li;->c:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Li;->d:Ljava/lang/String;

    return-object v0
.end method
