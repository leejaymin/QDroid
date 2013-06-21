.class public Lcom/kms/gui/KMSEnterCodeActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lej;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lds;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Class;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 78
    new-instance v0, Lds;

    invoke-direct {v0, p0}, Lds;-><init>(Lcom/kms/gui/KMSEnterCodeActivity;)V

    iput-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->d:Lds;

    .line 811
    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/KMSEnterCodeActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    return v0
.end method

.method public static synthetic a(Lcom/kms/gui/KMSEnterCodeActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    return p1
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0b0060

    .line 365
    iput p1, p0, Lcom/kms/gui/KMSEnterCodeActivity;->k:I

    .line 366
    invoke-virtual {p0, v2}, Lcom/kms/gui/KMSEnterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->a:Landroid/widget/EditText;

    .line 367
    iget-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 370
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->setContentView(I)V

    .line 376
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/kms/gui/KMSEnterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->a:Landroid/widget/EditText;

    .line 377
    iget-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 378
    invoke-static {p0}, LcW;->a(Landroid/app/Activity;)V

    .line 379
    invoke-static {p0, p0}, LcW;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    .line 380
    iget v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    invoke-static {p0, v0}, LcW;->a(Landroid/app/Activity;I)V

    .line 381
    iget-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 382
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->e()V

    .line 383
    return-void

    .line 372
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 374
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->setContentView(I)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x400

    const/4 v5, 0x6

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 116
    if-eqz v3, :cond_4

    .line 118
    const-string v0, "com.kms.gui.entercodemode"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    .line 119
    const-string v0, "com.kms.gui.entercodefullscreen"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 120
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 125
    :cond_0
    const-string v0, "com.kms.gui.entercodenonext"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->e:Z

    .line 126
    const-string v0, "com.kms.gui.next_activity"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->g:Ljava/lang/Class;

    .line 127
    const-string v0, "com.kms.gui.codeexpiration"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->h:Z

    .line 128
    const-string v0, "com.kms.gui.unblockuninstall"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->i:Z

    .line 129
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v5}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 132
    iget-object v0, v0, Lgd;->a:Ljava/lang/String;

    .line 134
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move v0, v2

    .line 136
    :goto_0
    iget v1, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    if-ne v1, v4, :cond_2

    if-eqz v0, :cond_2

    .line 137
    iput v2, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    .line 158
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 134
    goto :goto_0

    .line 142
    :cond_4
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v5}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 143
    iget-object v0, v0, Lgd;->a:Ljava/lang/String;

    .line 144
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 146
    :cond_5
    iput v2, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    .line 153
    :goto_2
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x800

    const/16 v3, 0x800

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 155
    iput-boolean v1, p0, Lcom/kms/gui/KMSEnterCodeActivity;->e:Z

    goto :goto_1

    .line 150
    :cond_6
    iput v4, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    goto :goto_2
.end method

.method private a(Ljava/lang/Class;)V
    .locals 2
    .parameter

    .prologue
    .line 399
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 400
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 401
    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 402
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 406
    const/4 v0, 0x0

    .line 407
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 408
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 409
    iget-object v0, v0, Lgd;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/kavsdk/shared/SdkUtils;->getPasswordHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 411
    :cond_0
    return v0
.end method

.method public static synthetic b(Lcom/kms/gui/KMSEnterCodeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->h()V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 708
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 710
    const v2, 0x7f08012c

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 718
    :goto_0
    return v0

    .line 713
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_1

    .line 715
    const v2, 0x7f08012d

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 718
    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    const v2, 0x7f0b005e

    .line 101
    iget v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 103
    invoke-virtual {p0, v2}, Lcom/kms/gui/KMSEnterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080126

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 107
    invoke-virtual {p0, v2}, Lcom/kms/gui/KMSEnterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080123

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private f()V
    .locals 5

    .prologue
    .line 189
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgb;

    .line 190
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgb;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Ldp;

    invoke-direct {v2, p0, v0}, Ldp;-><init>(Lcom/kms/gui/KMSEnterCodeActivity;Lgb;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    :cond_0
    return-void
.end method

.method private g()V
    .locals 15

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v14, 0x80

    .line 221
    .line 230
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 231
    const-class v5, Lgd;

    monitor-enter v5

    .line 233
    :try_start_0
    iget-boolean v6, v0, Lgd;->m:Z

    .line 234
    iget-boolean v7, v0, Lgd;->f:Z

    .line 235
    iget-boolean v8, v0, Lgd;->r:Z

    .line 236
    iget-boolean v9, v0, Lgd;->u:Z

    .line 237
    iget v3, v0, Lgd;->s:I

    invoke-static {p0}, LaE;->a(Landroid/content/Context;)I

    move-result v4

    if-ne v3, v4, :cond_2

    move v4, v2

    .line 238
    :goto_0
    iget-boolean v10, v0, Lgd;->v:Z

    .line 239
    iget-boolean v11, v0, Lgd;->w:Z

    .line 240
    iget-boolean v12, v0, Lgd;->x:Z

    .line 241
    iget-object v3, v0, Lgd;->a:Ljava/lang/String;

    invoke-static {v3}, Lfn;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lgd;->t:Ljava/lang/String;

    invoke-static {v3}, Lfn;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    move v3, v2

    .line 242
    :goto_1
    iget-boolean v13, v0, Lgd;->y:Z

    .line 243
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    if-nez v7, :cond_1

    if-eqz v6, :cond_4

    :cond_1
    move v0, v2

    .line 245
    :goto_2
    iget-boolean v5, p0, Lcom/kms/gui/KMSEnterCodeActivity;->i:Z

    if-eqz v5, :cond_5

    .line 247
    invoke-direct {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->d()V

    .line 337
    :goto_3
    return-void

    :cond_2
    move v4, v1

    .line 237
    goto :goto_0

    :cond_3
    move v3, v1

    .line 241
    goto :goto_1

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_4
    move v0, v1

    .line 244
    goto :goto_2

    .line 251
    :cond_5
    if-eqz v9, :cond_6

    if-nez v4, :cond_7

    .line 253
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kms/gui/WelcomeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    invoke-virtual {v1, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 256
    const-string v2, "com_kms_welcome_app_update"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSEnterCodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 258
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->finish()V

    goto :goto_3

    .line 262
    :cond_7
    if-nez v7, :cond_8

    if-nez v6, :cond_8

    .line 265
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/activation/gui/ActivationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 270
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->finish()V

    goto :goto_3

    .line 274
    :cond_8
    invoke-static {}, Lfp;->l()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 276
    invoke-static {p0}, LeO;->a(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 278
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/DeviceAdminSetupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 282
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->finish()V

    goto :goto_3

    .line 286
    :cond_9
    if-nez v10, :cond_a

    invoke-static {p0}, LeO;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 288
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/IncompatibleAppsSetupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 292
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->finish()V

    goto :goto_3

    .line 296
    :cond_a
    if-nez v11, :cond_b

    invoke-static {p0}, LeO;->e(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 298
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/DeviceAdminWorkaroundSetupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 301
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->finish()V

    goto/16 :goto_3

    .line 306
    :cond_b
    if-eqz v13, :cond_c

    .line 308
    invoke-direct {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->i()V

    goto/16 :goto_3

    .line 312
    :cond_c
    if-eqz v3, :cond_e

    if-nez v12, :cond_e

    .line 314
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/kms/gui/PremiumInstalledActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    const-string v3, "com.kms.gui.premium_version_updated"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 316
    if-eqz v8, :cond_d

    .line 318
    const-string v0, "com.kms.gui.premium_settings_imported"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 320
    :cond_d
    const/high16 v0, 0x4080

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSEnterCodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 322
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->finish()V

    goto/16 :goto_3

    .line 326
    :cond_e
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->c()Z

    move-result v0

    if-nez v0, :cond_f

    .line 328
    new-instance v0, Leb;

    const v2, 0x7f080228

    invoke-virtual {p0, v2}, Lcom/kms/gui/KMSEnterCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, p0, v1, v2}, Leb;-><init>(Landroid/app/Activity;Lej;ILjava/lang/String;)V

    invoke-virtual {v0}, Leb;->a()V

    goto/16 :goto_3

    .line 335
    :cond_f
    invoke-direct {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->d()V

    .line 336
    invoke-direct {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->h()V

    goto/16 :goto_3
.end method

.method private h()V
    .locals 2

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 342
    iget-boolean v1, p0, Lcom/kms/gui/KMSEnterCodeActivity;->h:Z

    if-eqz v1, :cond_2

    .line 344
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->g:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-class v0, Lcom/kms/gui/KMSMain;

    :goto_0
    invoke-direct {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->a(Ljava/lang/Class;)V

    .line 347
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->finish()V

    .line 355
    :cond_0
    :goto_1
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->g:Ljava/lang/Class;

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->v()V

    goto :goto_1
.end method

.method private i()V
    .locals 2

    .prologue
    .line 455
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/activation/gui/PasswordRecoveryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 456
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 457
    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 458
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->finish()V

    .line 459
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 901
    new-instance v0, Ldr;

    invoke-direct {v0, p0}, Ldr;-><init>(Lcom/kms/gui/KMSEnterCodeActivity;)V

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 913
    return-void
.end method

.method protected final a_()Z
    .locals 1

    .prologue
    .line 825
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 897
    return-void
.end method

.method protected final b_()I
    .locals 1

    .prologue
    .line 819
    const v0, 0x7f060015

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->b()V

    .line 890
    const/16 v0, 0x64

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 724
    packed-switch p1, :pswitch_data_0

    .line 734
    :goto_0
    return-void

    .line 730
    :pswitch_0
    iget-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->g:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Lcom/kms/gui/KMSMain;

    :goto_1
    invoke-direct {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->a(Ljava/lang/Class;)V

    .line 731
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->finish()V

    goto :goto_0

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->g:Ljava/lang/Class;

    goto :goto_1

    .line 724
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0b005e

    const/4 v6, 0x5

    const/4 v1, 0x0

    const/4 v5, 0x6

    const/4 v2, 0x1

    .line 464
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 465
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 467
    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    .line 469
    iget-object v1, p0, Lcom/kms/gui/KMSEnterCodeActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    const/16 v0, 0xa

    if-ne v3, v0, :cond_2

    .line 473
    iget-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_0

    .line 476
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 477
    if-lez v1, :cond_0

    .line 478
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 481
    :cond_2
    const/16 v0, 0xb

    if-ne v3, v0, :cond_3

    .line 483
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->openOptionsMenu()V

    goto :goto_0

    .line 485
    :cond_3
    const/16 v0, 0xc

    if-ne v3, v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 488
    if-eqz v0, :cond_4

    .line 492
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 501
    iget v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 504
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/kms/gui/KMSEnterCodeActivity;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iput-object v3, p0, Lcom/kms/gui/KMSEnterCodeActivity;->c:Ljava/lang/String;

    .line 507
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v5, :cond_5

    .line 509
    invoke-virtual {p0, v2}, Lcom/kms/gui/KMSEnterCodeActivity;->showDialog(I)V

    goto :goto_0

    .line 496
    :cond_4
    const v0, 0x7f08012b

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 513
    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    .line 514
    invoke-virtual {p0, v7}, Lcom/kms/gui/KMSEnterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080127

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 515
    iget-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 520
    :pswitch_1
    iget-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 522
    iget-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Lfp;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 523
    const v0, 0x7f08012a

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 524
    iput v2, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    .line 525
    iput-object v1, p0, Lcom/kms/gui/KMSEnterCodeActivity;->c:Ljava/lang/String;

    .line 526
    iget v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    invoke-static {p0, v0, v2}, LcW;->a(Landroid/app/Activity;IZ)V

    goto/16 :goto_0

    .line 529
    :cond_6
    const v0, 0x7f080129

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 530
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 531
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()V

    .line 533
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v5}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 534
    const-class v1, Lgd;

    monitor-enter v1

    .line 536
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lgd;->y:Z

    .line 537
    invoke-virtual {v0}, Lgd;->b()V

    .line 538
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-direct {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->i()V

    goto/16 :goto_0

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 544
    :cond_7
    const v0, 0x7f080128

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 545
    iput v2, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    .line 546
    iput-object v1, p0, Lcom/kms/gui/KMSEnterCodeActivity;->c:Ljava/lang/String;

    .line 547
    iget v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    invoke-static {p0, v0, v2}, LcW;->a(Landroid/app/Activity;IZ)V

    goto/16 :goto_0

    .line 552
    :pswitch_2
    invoke-static {v3}, Lcom/kms/gui/KMSEnterCodeActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 559
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v5}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 560
    const-class v1, Lgd;

    monitor-enter v1

    .line 562
    :try_start_1
    iget-object v4, v0, Lgd;->t:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8

    .line 564
    iput-object v3, v0, Lgd;->t:Ljava/lang/String;

    .line 565
    invoke-virtual {v0}, Lgd;->b()V

    .line 567
    :cond_8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 569
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 570
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()V

    .line 572
    const/4 v1, 0x0

    .line 573
    iget-boolean v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->e:Z

    if-nez v0, :cond_b

    .line 574
    iget-boolean v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->j:Z

    if-nez v0, :cond_a

    invoke-static {p0}, Lfp;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 577
    iput-boolean v2, p0, Lcom/kms/gui/KMSEnterCodeActivity;->j:Z

    .line 579
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antitheft/gui/InfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 580
    const-string v1, "com.kms.antitheft.info.title"

    const v3, 0x7f08011b

    invoke-virtual {p0, v3}, Lcom/kms/gui/KMSEnterCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    const-string v1, "com.kms.antitheft.info.text"

    const v3, 0x7f08011a

    invoke-virtual {p0, v3}, Lcom/kms/gui/KMSEnterCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/kms/gui/KMSEnterCodeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v2

    .line 587
    :goto_1
    if-nez v0, :cond_9

    .line 588
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->finish()V

    .line 590
    :cond_9
    iget-boolean v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->i:Z

    if-eqz v0, :cond_0

    .line 592
    invoke-static {v2}, Lcom/kms/kmsshared/KMSApplication;->e(Z)V

    goto/16 :goto_0

    .line 567
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 584
    :cond_a
    iget-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->g:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-class v0, Lcom/kms/gui/KMSMain;

    :goto_2
    invoke-direct {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->a(Ljava/lang/Class;)V

    :cond_b
    move v0, v1

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->g:Ljava/lang/Class;

    goto :goto_2

    .line 601
    :cond_d
    invoke-static {p0}, LcW;->b(Landroid/app/Activity;)V

    .line 602
    iget-boolean v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->i:Z

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->getApplication()Landroid/app/Application;

    .line 605
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kms/kmsshared/KMSApplication;->e(Z)V

    goto/16 :goto_0

    .line 617
    :pswitch_3
    invoke-static {v3}, Lcom/kms/gui/KMSEnterCodeActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 619
    iput v6, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    .line 620
    iget-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 621
    invoke-virtual {p0, v7}, Lcom/kms/gui/KMSEnterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 625
    :cond_e
    invoke-static {p0}, LcW;->b(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 631
    :pswitch_4
    invoke-direct {p0, v3}, Lcom/kms/gui/KMSEnterCodeActivity;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iput-object v3, p0, Lcom/kms/gui/KMSEnterCodeActivity;->c:Ljava/lang/String;

    .line 634
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v5, :cond_f

    .line 636
    invoke-virtual {p0, v2}, Lcom/kms/gui/KMSEnterCodeActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 640
    :cond_f
    iput v5, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    .line 641
    invoke-virtual {p0, v7}, Lcom/kms/gui/KMSEnterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 642
    iget-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 648
    :pswitch_5
    iget-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 650
    iget-object v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Lfp;->f(Ljava/lang/String;)Z

    .line 651
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 652
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()V

    .line 653
    const v0, 0x7f080129

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 654
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->finish()V

    goto/16 :goto_0

    .line 662
    :cond_10
    const v0, 0x7f080128

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 663
    iput v6, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    .line 664
    iput-object v1, p0, Lcom/kms/gui/KMSEnterCodeActivity;->c:Ljava/lang/String;

    .line 665
    iget v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    invoke-static {p0, v0, v2}, LcW;->a(Landroid/app/Activity;IZ)V

    goto/16 :goto_0

    .line 673
    :pswitch_6
    :try_start_2
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 677
    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 678
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 679
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/kavsdk/shared/SdkUtils;->encodeBase64jni([BI)Ljava/lang/String;

    move-result-object v1

    .line 681
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v5}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 684
    iget-object v0, v0, Lgd;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 686
    if-eqz v0, :cond_11

    .line 688
    iput v6, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    .line 689
    iget v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    invoke-static {p0, v0, v2}, LcW;->a(Landroid/app/Activity;IZ)V

    goto/16 :goto_0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object v0, v1

    goto :goto_3

    .line 693
    :cond_11
    const v0, 0x7f080170

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 694
    iget v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    invoke-static {p0, v0, v2}, LcW;->a(Landroid/app/Activity;IZ)V

    goto/16 :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 388
    iget v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->k:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 390
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->a(I)V

    .line 391
    iget v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, LcW;->a(Landroid/app/Activity;IZ)V

    .line 393
    :cond_0
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 394
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 163
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    :try_start_0
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 168
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->showDialog(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 177
    :cond_0
    iput-boolean v3, p0, Lcom/kms/gui/KMSEnterCodeActivity;->j:Z

    .line 178
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 179
    invoke-direct {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->a(Landroid/content/Intent;)V

    .line 180
    const v0, 0x7f030016

    const v1, 0x7f0b003b

    invoke-virtual {p0, v0, v1}, Lcom/kms/gui/KMSEnterCodeActivity;->a(II)V

    .line 181
    invoke-static {p0}, Lfp;->a(Landroid/app/Activity;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kms/gui/KMSEnterCodeActivity;->a(I)V

    .line 182
    iget v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, LcW;->a(Landroid/app/Activity;IZ)V

    .line 183
    invoke-direct {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->g()V

    .line 184
    invoke-direct {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->f()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 755
    packed-switch p1, :pswitch_data_0

    .line 785
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 759
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

    iget-object v2, p0, Lcom/kms/gui/KMSEnterCodeActivity;->d:Lds;

    invoke-virtual {v0, v1, v2}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    const v1, 0x7f08013e

    iget-object v2, p0, Lcom/kms/gui/KMSEnterCodeActivity;->d:Lds;

    invoke-virtual {v0, v1, v2}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 770
    :pswitch_1
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Les;->a(I)Les;

    move-result-object v0

    const v1, 0x7f080237

    invoke-virtual {v0, v1}, Les;->b(I)Les;

    move-result-object v0

    const v1, 0x7f080238

    new-instance v2, Ldq;

    invoke-direct {v2, p0}, Ldq;-><init>(Lcom/kms/gui/KMSEnterCodeActivity;)V

    invoke-virtual {v0, v1, v2}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 755
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 417
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v3}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 419
    iget-boolean v0, v0, Lgd;->b:Z

    .line 421
    if-eqz v0, :cond_4

    .line 423
    if-eq p1, v2, :cond_1

    if-gt p1, v4, :cond_0

    const/16 v0, 0x10

    if-ge p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_3

    .line 427
    :cond_1
    if-ne p1, v2, :cond_2

    .line 429
    iput-boolean v1, p0, Lcom/kms/gui/KMSEnterCodeActivity;->f:Z

    .line 430
    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSEnterCodeActivity;->moveTaskToBack(Z)Z

    move v0, v1

    .line 450
    :goto_0
    return v0

    .line 433
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/kms/gui/KMSBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 435
    goto :goto_0

    .line 439
    :cond_4
    if-ne p1, v2, :cond_5

    .line 441
    iget v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    if-eq v0, v4, :cond_5

    .line 446
    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSEnterCodeActivity;->moveTaskToBack(Z)Z

    move v0, v1

    .line 447
    goto :goto_0

    .line 450
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/kms/gui/KMSBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/kms/gui/KMSEnterCodeActivity;->a(Landroid/content/Intent;)V

    .line 96
    invoke-direct {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->g()V

    .line 97
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 831
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 832
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 848
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 836
    :pswitch_0
    const/4 v1, 0x7

    iput v1, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    .line 837
    iget v1, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    invoke-static {p0, v1, v0}, LcW;->a(Landroid/app/Activity;IZ)V

    goto :goto_0

    .line 842
    :pswitch_1
    const/4 v1, 0x3

    iput v1, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    .line 843
    iget v1, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    invoke-static {p0, v1, v0}, LcW;->a(Landroid/app/Activity;IZ)V

    goto :goto_0

    .line 832
    :pswitch_data_0
    .packed-switch 0x7f0b0147
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onPause()V
    .locals 2

    .prologue
    .line 739
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/kms/gui/KMSBaseActivity;->onPause()V

    .line 740
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 742
    iget-boolean v0, v0, Lgd;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    if-nez v0, :cond_0

    .line 750
    :goto_0
    monitor-exit p0

    return-void

    .line 747
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->f:Z

    if-nez v0, :cond_1

    .line 748
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->q()V

    .line 749
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/gui/KMSEnterCodeActivity;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 739
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    .line 853
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 854
    invoke-virtual {p0}, Lcom/kms/gui/KMSEnterCodeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 855
    const v1, 0x7f0a0001

    .line 856
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 857
    iget-boolean v0, v0, Lgd;->j:Z

    .line 859
    iget v3, p0, Lcom/kms/gui/KMSEnterCodeActivity;->b:I

    sparse-switch v3, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 876
    :goto_0
    invoke-virtual {v2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 877
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 863
    :sswitch_0
    const v0, 0x7f0a0003

    .line 864
    goto :goto_0

    .line 868
    :sswitch_1
    if-eqz v0, :cond_0

    .line 870
    const v0, 0x7f0a0004

    goto :goto_0

    .line 859
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method
