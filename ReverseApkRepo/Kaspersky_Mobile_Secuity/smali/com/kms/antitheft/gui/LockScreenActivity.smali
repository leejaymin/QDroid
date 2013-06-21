.class public Lcom/kms/antitheft/gui/LockScreenActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Z

.field private b:I

.field private c:Landroid/widget/Button;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:LbW;

.field private g:LbZ;

.field private h:Lca;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->a:Z

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->d:Ljava/lang/String;

    .line 53
    new-instance v0, LbW;

    invoke-direct {v0, p0}, LbW;-><init>(Lcom/kms/antitheft/gui/LockScreenActivity;)V

    iput-object v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->f:LbW;

    .line 54
    new-instance v0, LbZ;

    invoke-direct {v0, p0}, LbZ;-><init>(Lcom/kms/antitheft/gui/LockScreenActivity;)V

    iput-object v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->g:LbZ;

    .line 55
    new-instance v0, Lca;

    invoke-direct {v0, p0}, Lca;-><init>(Lcom/kms/antitheft/gui/LockScreenActivity;)V

    iput-object v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->h:Lca;

    .line 151
    return-void
.end method

.method public static synthetic a(Lcom/kms/antitheft/gui/LockScreenActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->b:I

    return v0
.end method

.method public static synthetic a(Lcom/kms/antitheft/gui/LockScreenActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->b:I

    return p1
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 94
    iput p1, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->e:I

    .line 95
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 97
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/LockScreenActivity;->setContentView(I)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 101
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/LockScreenActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/kms/antitheft/gui/LockScreenActivity;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kms/antitheft/gui/LockScreenActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 60
    if-nez p1, :cond_0

    .line 62
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/LockScreenActivity;->setContentView(I)V

    .line 64
    :cond_0
    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    invoke-static {}, LfS;->a()LfS;

    move-result-object v1

    invoke-virtual {v1, v2}, LfS;->a(I)LfV;

    move-result-object v1

    check-cast v1, LfZ;

    .line 67
    invoke-virtual {v1, v2}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 69
    iget-object v1, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->f:LbW;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const/16 v0, 0x8

    iput v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->b:I

    .line 71
    return-void
.end method

.method private b(I)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0b0060

    .line 107
    iput p1, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->e:I

    .line 108
    invoke-virtual {p0, v2}, Lcom/kms/antitheft/gui/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 109
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    iget v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->e:I

    invoke-direct {p0, v0}, Lcom/kms/antitheft/gui/LockScreenActivity;->a(I)V

    .line 113
    invoke-virtual {p0, v2}, Lcom/kms/antitheft/gui/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static {p0}, LcW;->a(Landroid/app/Activity;)V

    .line 116
    invoke-static {p0, p0}, LcW;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 119
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/kms/antitheft/gui/LockScreenActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/kms/antitheft/gui/LockScreenActivity;->a(I)V

    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 408
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->o()Ljava/util/Set;

    move-result-object v0

    .line 409
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 413
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 415
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 417
    iget-boolean v0, v0, Lgd;->b:Z

    .line 419
    if-nez v0, :cond_1

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->a:Z

    .line 422
    invoke-static {p0, v3}, Lfp;->b(Landroid/content/Context;Z)V

    .line 423
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/LockScreenActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0, v3}, Lcom/kms/kmsshared/KMSApplication;->b(Z)V

    .line 428
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/LockScreenActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_1
    return-void

    .line 432
    :catch_0
    move-exception v0

    .line 434
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected final a_()Z
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x0

    return v0
.end method

.method protected final b_()I
    .locals 1

    .prologue
    .line 589
    const v0, 0x7f060015

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v3, 0x0

    const/4 v6, 0x6

    const/4 v2, 0x1

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 228
    const v1, 0x7f0b0060

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 229
    const/16 v5, 0xa

    if-ge v4, v5, :cond_1

    .line 231
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    const/16 v0, 0xa

    if-ne v4, v0, :cond_2

    .line 235
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_0

    .line 238
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 239
    if-lez v1, :cond_0

    .line 240
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 243
    :cond_2
    const/16 v0, 0xb

    if-ne v4, v0, :cond_3

    .line 245
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/LockScreenActivity;->openOptionsMenu()V

    goto :goto_0

    .line 247
    :cond_3
    const/16 v0, 0xc

    if-ne v4, v0, :cond_0

    .line 249
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_5

    .line 254
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 262
    iget v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->b:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 293
    :pswitch_1
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v6}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 294
    const-class v5, Lgd;

    monitor-enter v5

    .line 295
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v7, :cond_7

    iget-object v1, v0, Lgd;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/kavsdk/shared/SdkUtils;->getPasswordHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    .line 297
    :goto_1
    if-eqz v1, :cond_4

    .line 298
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->a:Z

    .line 299
    const/4 v2, 0x0

    iput-boolean v2, v0, Lgd;->b:Z

    .line 300
    invoke-virtual {v0}, Lgd;->b()V

    .line 302
    :cond_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    if-eqz v1, :cond_8

    .line 309
    invoke-direct {p0}, Lcom/kms/antitheft/gui/LockScreenActivity;->c()V

    goto :goto_0

    .line 258
    :cond_5
    const v0, 0x7f08012b

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 266
    :pswitch_2
    const/4 v0, 0x0

    .line 268
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 272
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 273
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 274
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/kavsdk/shared/SdkUtils;->encodeBase64jni([BI)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v6}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 277
    iget-object v0, v0, Lgd;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 278
    if-eqz v0, :cond_6

    .line 280
    iput v8, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->b:I

    .line 287
    :goto_3
    iget v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->b:I

    invoke-static {p0, v0, v2}, LcW;->a(Landroid/app/Activity;IZ)V

    goto/16 :goto_0

    .line 269
    :catch_0
    move-exception v1

    .line 270
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2

    .line 284
    :cond_6
    const v0, 0x7f080170

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_7
    move v1, v3

    .line 295
    goto :goto_1

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 318
    :cond_8
    invoke-static {p0}, LcW;->b(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 328
    :pswitch_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v7, :cond_9

    .line 329
    const v0, 0x7f0801c1

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 330
    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 333
    :cond_9
    iput-object v4, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->d:Ljava/lang/String;

    .line 334
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_a

    .line 336
    invoke-virtual {p0, v2}, Lcom/kms/antitheft/gui/LockScreenActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 341
    :cond_a
    iput v6, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->b:I

    .line 342
    iget v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->b:I

    invoke-static {p0, v0, v2}, LcW;->a(Landroid/app/Activity;IZ)V

    .line 344
    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 350
    :pswitch_4
    iget-object v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 352
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v6}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 353
    const-class v1, Lgd;

    monitor-enter v1

    .line 354
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, v0, Lgd;->b:Z

    .line 355
    invoke-virtual {v0}, Lgd;->b()V

    .line 356
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 357
    iget-object v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Lfp;->f(Ljava/lang/String;)Z

    .line 359
    iput-boolean v2, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->a:Z

    .line 361
    const v0, 0x7f080129

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 363
    invoke-direct {p0}, Lcom/kms/antitheft/gui/LockScreenActivity;->c()V

    goto/16 :goto_0

    .line 356
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 367
    :cond_b
    const v0, 0x7f080128

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 368
    iput v8, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->b:I

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->d:Ljava/lang/String;

    .line 370
    iget v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->b:I

    invoke-static {p0, v0, v2}, LcW;->a(Landroid/app/Activity;IZ)V

    goto/16 :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    iget v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->b:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->b:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->b:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 83
    :cond_0
    iget v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->e:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 85
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/kms/antitheft/gui/LockScreenActivity;->b(I)V

    .line 86
    iget v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->b:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, LcW;->a(Landroid/app/Activity;IZ)V

    .line 89
    :cond_1
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 90
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x400

    const/4 v2, 0x0

    .line 205
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 206
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 208
    iget-boolean v0, v0, Lgd;->b:Z

    .line 210
    if-nez v0, :cond_0

    .line 212
    invoke-static {p0, v2}, Lfp;->b(Landroid/content/Context;Z)V

    .line 213
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/LockScreenActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0, v2}, Lcom/kms/kmsshared/KMSApplication;->b(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/LockScreenActivity;->finish()V

    .line 221
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/LockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 219
    const v0, 0x7f030026

    const/high16 v1, 0x7f0b

    invoke-virtual {p0, v0, v1}, Lcom/kms/antitheft/gui/LockScreenActivity;->a(II)V

    .line 220
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kms/antitheft/gui/LockScreenActivity;->a(Z)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 601
    packed-switch p1, :pswitch_data_0

    .line 615
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 605
    :pswitch_0
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08013b

    invoke-virtual {v0, v1}, Les;->a(I)Les;

    move-result-object v0

    const v1, 0x7f08013c

    invoke-virtual {v0, v1}, Les;->b(I)Les;

    move-result-object v0

    const v1, 0x7f08013d

    iget-object v2, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->h:Lca;

    invoke-virtual {v0, v1, v2}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    const v1, 0x7f08013e

    iget-object v2, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->h:Lca;

    invoke-virtual {v0, v1, v2}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 601
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 456
    iget v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 459
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kms/antitheft/gui/LockScreenActivity;->a(Z)V

    .line 461
    :cond_0
    const/4 v0, 0x7

    if-lt p1, v0, :cond_1

    const/16 v0, 0x10

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x14

    if-eq p1, v0, :cond_2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    const/16 v0, 0x52

    if-ne p1, v0, :cond_3

    .line 468
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/kms/gui/KMSBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 471
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0b0060

    const/4 v5, 0x7

    const/4 v4, 0x3

    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 477
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0b0146

    if-ne v0, v2, :cond_0

    .line 479
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/LockScreenActivity;->setContentView(I)V

    .line 480
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/LockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 481
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 482
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 483
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/LockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 486
    invoke-static {p0}, Lfp;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<b><u>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f080169

    invoke-virtual {p0, v3}, Lcom/kms/antitheft/gui/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</u></b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 489
    const v3, 0x7f080168

    invoke-virtual {p0, v3}, Lcom/kms/antitheft/gui/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    aput-object v2, v4, v5

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 491
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 492
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->c:Landroid/widget/Button;

    .line 494
    iget-object v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->c:Landroid/widget/Button;

    iget-object v2, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->g:LbZ;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 496
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v1

    .line 563
    :goto_0
    return v0

    .line 498
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0b0147

    if-ne v0, v2, :cond_1

    .line 499
    invoke-static {p0}, Lfp;->a(Landroid/app/Activity;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kms/antitheft/gui/LockScreenActivity;->a(I)V

    .line 500
    invoke-static {p0}, LcW;->a(Landroid/app/Activity;)V

    .line 501
    invoke-static {p0, v5, v1}, LcW;->a(Landroid/app/Activity;IZ)V

    .line 502
    invoke-static {p0, p0}, LcW;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    .line 503
    invoke-virtual {p0, v6}, Lcom/kms/antitheft/gui/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 504
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 505
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelected(Z)V

    .line 506
    new-instance v2, LbS;

    invoke-direct {v2, p0}, LbS;-><init>(Lcom/kms/antitheft/gui/LockScreenActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 516
    new-instance v2, LbT;

    invoke-direct {v2, p0}, LbT;-><init>(Lcom/kms/antitheft/gui/LockScreenActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 528
    iput v5, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->b:I

    move v0, v1

    .line 529
    goto :goto_0

    .line 530
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0b0149

    if-ne v0, v2, :cond_2

    .line 531
    invoke-static {p0}, Lfp;->a(Landroid/app/Activity;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kms/antitheft/gui/LockScreenActivity;->a(I)V

    .line 532
    invoke-static {p0}, LcW;->a(Landroid/app/Activity;)V

    .line 533
    invoke-static {p0, v4, v1}, LcW;->a(Landroid/app/Activity;IZ)V

    .line 534
    invoke-static {p0, p0}, LcW;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    .line 535
    invoke-virtual {p0, v6}, Lcom/kms/antitheft/gui/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 536
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 537
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelected(Z)V

    .line 538
    new-instance v2, LbU;

    invoke-direct {v2, p0}, LbU;-><init>(Lcom/kms/antitheft/gui/LockScreenActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 548
    new-instance v2, LbV;

    invoke-direct {v2, p0}, LbV;-><init>(Lcom/kms/antitheft/gui/LockScreenActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 560
    iput v4, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->b:I

    move v0, v1

    .line 561
    goto :goto_0

    .line 563
    :cond_2
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 569
    iget v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->b:I

    sparse-switch v0, :sswitch_data_0

    .line 580
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 571
    :sswitch_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 572
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/LockScreenActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 573
    const v1, 0x7f0a0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 577
    :sswitch_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 578
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/LockScreenActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 579
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 569
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 441
    invoke-super {p0}, Lcom/kms/gui/KMSBaseActivity;->onResume()V

    .line 442
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 444
    iget-boolean v0, v0, Lgd;->b:Z

    .line 446
    if-nez v0, :cond_0

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->a:Z

    .line 450
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 381
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 383
    iget-boolean v0, v0, Lgd;->b:Z

    .line 385
    if-eqz v0, :cond_1

    .line 387
    iget-boolean v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->a:Z

    if-nez v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/LockScreenActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->q()V

    .line 391
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/antitheft/gui/LockScreenActivity;->a:Z

    .line 397
    :goto_0
    invoke-super {p0}, Lcom/kms/gui/KMSBaseActivity;->onStop()V

    .line 398
    return-void

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/LockScreenActivity;->finish()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    const-string v1, "reason"

    const-string v2, "die"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/LockScreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 199
    :cond_0
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onWindowFocusChanged(Z)V

    .line 200
    return-void
.end method
