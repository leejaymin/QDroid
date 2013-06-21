.class public Lcom/kms/activation/gui/PasswordRecoveryActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lej;


# static fields
.field private static final f:[B

.field private static g:Ljava/lang/String;


# instance fields
.field private a:I

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/io/ByteArrayOutputStream;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Leb;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->f:[B

    .line 68
    const-string v0, "http://mobile.kaspersky-labs.com/recover-code/save"

    sput-object v0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->g:Ljava/lang/String;

    return-void

    .line 61
    :array_0
    .array-data 0x1
        0x68t
        0xfdt
        0x6ft
        0x43t
        0xf7t
        0x79t
        0x4at
        0xe5t
        0xact
        0x6t
        0x17t
        0x13t
        0x65t
        0x71t
        0xf7t
        0xect
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 51
    iput v1, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->a:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->e:Ljava/io/ByteArrayOutputStream;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->h:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->i:Ljava/lang/String;

    .line 76
    iput-boolean v1, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->k:Z

    return-void
.end method

.method public static synthetic a(Lcom/kms/activation/gui/PasswordRecoveryActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(I)V
    .locals 1
    .parameter

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic a(Lcom/kms/activation/gui/PasswordRecoveryActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static a([B[BII)[B
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x20

    .line 217
    array-length v0, p0

    if-lt v0, v4, :cond_0

    array-length v0, p1

    if-ge v0, v4, :cond_2

    .line 219
    :cond_0
    const/4 v0, 0x0

    .line 226
    :cond_1
    return-object v0

    .line 221
    :cond_2
    new-array v0, v4, [B

    .line 222
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 224
    add-int/lit8 v2, v1, 0x0

    aget-byte v2, p0, v2

    add-int/lit8 v3, v1, 0x0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static synthetic b(Lcom/kms/activation/gui/PasswordRecoveryActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->f()I

    move-result v0

    return v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic c(Lcom/kms/activation/gui/PasswordRecoveryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->k()V

    return-void
.end method

.method public static synthetic d(Lcom/kms/activation/gui/PasswordRecoveryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->l()V

    return-void
.end method

.method public static synthetic e(Lcom/kms/activation/gui/PasswordRecoveryActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->b:Landroid/widget/Button;

    return-object v0
.end method

.method private declared-synchronized f()I
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static h()Z
    .locals 2

    .prologue
    .line 99
    const-string v0, "google_sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->g:Ljava/lang/String;

    .line 107
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {v0}, Lfp;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->h:Ljava/lang/String;

    .line 185
    invoke-direct {p0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->n()V

    .line 186
    invoke-direct {p0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->o()V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->h:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->d:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const v0, 0x7f080172

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 198
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 200
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 204
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 205
    const-class v1, Lgd;

    monitor-enter v1

    .line 207
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v0, Lgd;->y:Z

    .line 208
    invoke-virtual {v0}, Lgd;->b()V

    .line 209
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    invoke-virtual {p0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->finish()V

    .line 213
    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private m()Z
    .locals 13

    .prologue
    const-wide v11, 0x38d7ea4c68000L

    const/16 v10, 0x20

    const/16 v9, 0x10

    const/4 v2, 0x0

    .line 231
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->e:Ljava/io/ByteArrayOutputStream;

    .line 233
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 242
    :try_start_1
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 243
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 244
    const/4 v1, 0x0

    array-length v4, v0

    invoke-virtual {v3, v0, v1, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 245
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->e:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual {v1, v0, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    :goto_0
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 254
    :try_start_2
    invoke-static {p0}, Lfp;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 270
    const-string v1, "KMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PasswordRecovery IMEI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 272
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 273
    const/4 v1, 0x0

    array-length v5, v0

    invoke-virtual {v3, v0, v1, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 274
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->e:Ljava/io/ByteArrayOutputStream;

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-virtual {v1, v0, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 280
    :goto_1
    new-array v5, v10, [B

    .line 281
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextBytes([B)V

    .line 282
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v5, v2, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 284
    array-length v0, v5

    invoke-static {v5, v0}, Lcom/kavsdk/shared/SdkUtils;->encodeBase64jni([BI)Ljava/lang/String;

    move-result-object v6

    .line 286
    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 288
    const-wide v7, 0x2386f26fc0ffffL

    cmp-long v7, v0, v7

    if-lez v7, :cond_0

    .line 290
    const-wide v7, 0xfffffffffffffL

    and-long/2addr v0, v7

    .line 292
    :cond_0
    cmp-long v7, v0, v11

    if-gez v7, :cond_1

    .line 293
    add-long/2addr v0, v11

    .line 295
    :cond_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 296
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 297
    invoke-virtual {v7, v0, v2, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 299
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 300
    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 301
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 302
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/kavsdk/shared/SdkUtils;->encodeBase64jni([BI)Ljava/lang/String;

    move-result-object v1

    .line 304
    new-array v0, v9, [B

    .line 305
    invoke-virtual {v4, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 306
    array-length v4, v0

    invoke-virtual {v7, v0, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 307
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 309
    invoke-static {v0, v5, v2, v10}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->a([B[BII)[B

    move-result-object v0

    .line 310
    if-nez v0, :cond_2

    move v0, v2

    .line 331
    :goto_2
    return v0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move v0, v2

    .line 238
    goto :goto_2

    .line 247
    :catch_1
    move-exception v0

    .line 248
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 276
    :catch_2
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 313
    :cond_2
    iget-object v4, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->e:Ljava/io/ByteArrayOutputStream;

    array-length v5, v0

    invoke-virtual {v4, v0, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 315
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 316
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 317
    array-length v5, v0

    invoke-virtual {v4, v0, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 318
    sget-object v0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->f:[B

    sget-object v5, Lcom/kms/activation/gui/PasswordRecoveryActivity;->f:[B

    array-length v5, v5

    invoke-virtual {v4, v0, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 319
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 320
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v0, v2, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 322
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 323
    iget-object v3, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v0, v2, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 325
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 326
    const-class v2, Lgd;

    monitor-enter v2

    .line 327
    :try_start_3
    iput-object v6, v0, Lgd;->l:Ljava/lang/String;

    .line 328
    iput-object v1, v0, Lgd;->k:Ljava/lang/String;

    .line 329
    invoke-virtual {v0}, Lgd;->b()V

    .line 330
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 331
    const/4 v0, 0x1

    goto :goto_2

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 344
    const v0, 0x7f0b0103

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 345
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 428
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 429
    iput-boolean v2, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->k:Z

    .line 430
    new-instance v0, Leb;

    const v1, 0x7f080171

    invoke-virtual {p0, v1}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v2, v1}, Leb;-><init>(Landroid/app/Activity;Lej;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->j:Leb;

    .line 435
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->j:Leb;

    invoke-virtual {v0}, Leb;->a()V

    .line 436
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 398
    new-instance v0, LaQ;

    invoke-direct {v0, p0}, LaQ;-><init>(Lcom/kms/activation/gui/PasswordRecoveryActivity;)V

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 424
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 336
    const v0, 0x7f0b0103

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 337
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 340
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method protected final b_()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public final c()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 356
    iget-boolean v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->k:Z

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, -0x1

    .line 388
    :goto_0
    return v0

    .line 360
    :cond_0
    iput-boolean v1, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->k:Z

    .line 361
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 362
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v2, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 363
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 364
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 365
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 367
    :try_start_0
    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 368
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 370
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 387
    :goto_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->a(I)V

    .line 388
    const/16 v0, 0x64

    goto :goto_0

    .line 373
    :cond_1
    const v1, 0x7f08016d

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 374
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-direct {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->b(Ljava/lang/String;)V

    .line 376
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->a(I)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 378
    :catch_0
    move-exception v0

    .line 379
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 380
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 381
    :catch_1
    move-exception v0

    .line 382
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 383
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 384
    :catch_2
    move-exception v0

    .line 385
    const v0, 0x7f08016c

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 444
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 445
    const-class v1, Lgd;

    monitor-enter v1

    .line 446
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lgd;->j:Z

    .line 447
    invoke-virtual {v0}, Lgd;->b()V

    .line 448
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 451
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LfZ;->a(ILjava/lang/Object;)V

    .line 452
    invoke-virtual {v0}, LfZ;->a()V

    .line 453
    return-void

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 152
    packed-switch p1, :pswitch_data_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->c:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    if-eq p2, v2, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->l()V

    goto :goto_0

    .line 163
    :pswitch_1
    if-ne p2, v2, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->o()V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->n()V

    .line 140
    invoke-direct {p0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->j()V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/activation/gui/PasswordRecoveryInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    invoke-virtual {p0, v0, v2}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const v0, 0x7f030034

    const v1, 0x7f0b0100

    invoke-super {p0, v0, v1}, Lcom/kms/gui/KMSBaseActivity;->a(II)V

    .line 115
    invoke-virtual {p0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 116
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 117
    invoke-virtual {p0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 119
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 120
    const-class v1, Lgd;

    monitor-enter v1

    .line 123
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v0, Lgd;->j:Z

    .line 124
    invoke-virtual {v0}, Lgd;->b()V

    .line 125
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->b:Landroid/widget/Button;

    .line 128
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->c:Landroid/widget/Button;

    .line 130
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v0, 0x7f0b0102

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->d:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActivity;->d:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const v0, 0x7f0b0101

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080161

    invoke-virtual {p0, v1}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
