.class public Lcom/kms/antivirus/gui/AvAdditionalActivity;
.super Lcom/kms/gui/KMSCommonSettingsActivity;
.source "SourceFile"

# interfaces
.implements Lej;


# instance fields
.field private a:Leb;

.field private b:[Ldk;

.field private c:Lcom/kms/kmsshared/KMSApplication;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/kms/antivirus/gui/AvAdditionalActivity;->d:Z

    .line 44
    iput-boolean v0, p0, Lcom/kms/antivirus/gui/AvAdditionalActivity;->e:Z

    return-void
.end method

.method public static synthetic a(Lcom/kms/antivirus/gui/AvAdditionalActivity;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/kms/antivirus/gui/AvAdditionalActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->c(Z)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/kms/antivirus/gui/AvAdditionalActivity;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic a(Lcom/kms/antivirus/gui/AvAdditionalActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->f()Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcom/kms/antivirus/gui/AvAdditionalActivity;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b(ILjava/lang/String;)V

    return-void
.end method

.method private declared-synchronized b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/kms/antivirus/gui/AvAdditionalActivity;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 178
    invoke-virtual {p0, v0, v2}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b(IZ)V

    .line 179
    invoke-direct {p0, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b(Z)V

    .line 180
    invoke-direct {p0, p1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->a(Z)V

    .line 182
    if-eqz p1, :cond_0

    .line 184
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_0
    new-instance v1, Leb;

    invoke-direct {v1, p0, p0, v2, v0}, Leb;-><init>(Landroid/app/Activity;Lej;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/kms/antivirus/gui/AvAdditionalActivity;->a:Leb;

    .line 192
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvAdditionalActivity;->a:Leb;

    invoke-virtual {v0}, Leb;->a()V

    .line 193
    return-void

    .line 188
    :cond_0
    const v0, 0x7f08005f

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized d()Z
    .locals 1

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/kms/antivirus/gui/AvAdditionalActivity;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()Z
    .locals 1

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/kms/antivirus/gui/AvAdditionalActivity;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 156
    const/16 v0, 0xe

    invoke-static {v0}, Lgj;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0, v3, v1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b(IZ)V

    .line 159
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b(IZ)V

    .line 161
    :cond_0
    const/16 v0, 0xf

    invoke-static {v0}, Lgj;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b(IZ)V

    .line 165
    :cond_1
    invoke-static {v2}, Lgj;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 167
    const/4 v0, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b(IZ)V

    .line 169
    invoke-virtual {p0, v2, v1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b(IZ)V

    .line 170
    invoke-virtual {p0, v2, v3}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->c(IZ)V

    .line 171
    const v0, 0x7f080281

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b(ILjava/lang/String;)V

    .line 172
    invoke-virtual {p0, v2, v1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->a(IZ)V

    .line 174
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 65
    .line 66
    packed-switch p1, :pswitch_data_0

    move-object v0, p2

    .line 83
    :goto_0
    return-object v0

    .line 70
    :pswitch_0
    invoke-static {}, Lfp;->f()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x2

    .line 71
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    goto :goto_0

    .line 76
    :pswitch_1
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lga;

    .line 77
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 78
    if-eqz v0, :cond_0

    const v0, 0x7f080280

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f080281

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b(Z)V

    .line 389
    invoke-virtual {p0, v1, v1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b(IZ)V

    .line 390
    return-void
.end method

.method public final a(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 295
    packed-switch p1, :pswitch_data_0

    .line 348
    :goto_0
    :pswitch_0
    return-void

    .line 299
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->showDialog(I)V

    goto :goto_0

    .line 304
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 310
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 317
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->e(I)Z

    move-result v3

    .line 318
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lga;

    .line 319
    const/16 v4, 0x9

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lga;->a(ILjava/lang/Object;)V

    .line 320
    invoke-virtual {v0}, Lga;->a()V

    .line 321
    if-nez v3, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->c(IZ)V

    .line 322
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b(ILjava/lang/String;)V

    .line 323
    invoke-virtual {p0, p1, v3}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->a(IZ)V

    goto :goto_0

    :cond_0
    move v0, v2

    .line 321
    goto :goto_1

    .line 328
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 329
    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 334
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->e(I)Z

    move-result v1

    .line 335
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lga;

    .line 336
    const/16 v3, 0xb

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lga;->a(ILjava/lang/Object;)V

    .line 337
    invoke-virtual {v0}, Lga;->a()V

    .line 339
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lge;

    .line 340
    iget v0, v0, Lge;->b:I

    .line 341
    if-nez v1, :cond_1

    .line 342
    or-int/lit16 v0, v0, 0x800

    .line 344
    :cond_1
    invoke-static {v2, v0}, Lcom/kms/kmsshared/KMSApplication;->a(II)V

    goto/16 :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public final a(ZZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0xa

    const/16 v5, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 267
    if-nez p1, :cond_1

    move v0, v2

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->c(IZ)V

    .line 268
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v3}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lga;

    .line 269
    if-eqz p1, :cond_2

    .line 271
    invoke-virtual {v0, v6}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 272
    if-eqz p2, :cond_0

    .line 274
    invoke-virtual {p0, v4, v1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->a(IZ)V

    .line 275
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lga;->a(ILjava/lang/Object;)V

    .line 276
    invoke-virtual {v0}, Lga;->a()V

    .line 287
    :cond_0
    :goto_1
    invoke-virtual {p0, v4, p1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b(IZ)V

    .line 288
    if-nez p1, :cond_3

    :goto_2
    invoke-virtual {p0, v4, v2}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->c(IZ)V

    .line 289
    const-string v0, ""

    invoke-virtual {p0, v4, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b(ILjava/lang/String;)V

    .line 290
    return-void

    :cond_1
    move v0, v3

    .line 267
    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {p0, v4}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->e(I)Z

    move-result v1

    .line 282
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lga;->a(ILjava/lang/Object;)V

    .line 283
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lga;->a(ILjava/lang/Object;)V

    .line 284
    invoke-virtual {v0}, Lga;->a()V

    .line 285
    invoke-virtual {p0, v4, v3}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->a(IZ)V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 288
    goto :goto_2
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 373
    new-instance v0, LcE;

    invoke-direct {v0, p0}, LcE;-><init>(Lcom/kms/antivirus/gui/AvAdditionalActivity;)V

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 384
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->k()V

    .line 368
    :goto_0
    const/16 v0, 0x64

    return v0

    .line 366
    :cond_0
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->l()V

    goto :goto_0
.end method

.method protected final c_()I
    .locals 1

    .prologue
    .line 353
    const v0, 0x7f06000e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    iput-object v0, p0, Lcom/kms/antivirus/gui/AvAdditionalActivity;->c:Lcom/kms/kmsshared/KMSApplication;

    .line 90
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lga;

    .line 91
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 92
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 93
    invoke-static {}, Lfp;->f()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v8, 0x1

    .line 94
    :goto_0
    const/16 v0, 0x8

    new-array v13, v0, [Ldk;

    const/4 v6, 0x0

    new-instance v0, Ldk;

    const/4 v2, 0x1

    const v1, 0x7f080047

    invoke-virtual {p0, v1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v13, v6

    const/4 v9, 0x1

    new-instance v0, Ldk;

    const/4 v2, 0x5

    const v1, 0x7f080048

    invoke-virtual {p0, v1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    const-string v4, ""

    invoke-virtual {p0, v1, v4}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v1, 0x7f08027d

    invoke-virtual {p0, v1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V

    aput-object v0, v13, v9

    const/4 v14, 0x2

    new-instance v0, Ldk;

    const/4 v2, 0x6

    const v1, 0x7f08027f

    invoke-virtual {p0, v1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x2

    const v4, 0x7f080280

    invoke-virtual {p0, v4}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const v1, 0x7f08027e

    invoke-virtual {p0, v1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v11, :cond_1

    const/4 v8, 0x1

    :goto_1
    const v9, 0x7f02008f

    const v10, 0x7f020090

    move-object v1, p0

    move v5, v11

    invoke-direct/range {v0 .. v10}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)V

    aput-object v0, v13, v14

    const/4 v6, 0x3

    new-instance v0, Ldk;

    const/4 v2, 0x2

    const v1, 0x7f0802e0

    invoke-virtual {p0, v1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f0802e1

    invoke-virtual {p0, v1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, v12

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v13, v6

    const/4 v6, 0x4

    new-instance v0, Ldk;

    const/4 v2, 0x1

    const v1, 0x7f080282

    invoke-virtual {p0, v1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v13, v6

    const/4 v7, 0x5

    new-instance v0, Ldk;

    const/4 v2, 0x3

    const v1, 0x7f080283

    invoke-virtual {p0, v1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v0, v13, v7

    const/4 v7, 0x6

    new-instance v0, Ldk;

    const/4 v2, 0x3

    const v1, 0x7f08004d

    invoke-virtual {p0, v1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v0, v13, v7

    const/4 v7, 0x7

    new-instance v0, Ldk;

    const/4 v2, 0x3

    const v1, 0x7f080052

    invoke-virtual {p0, v1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v0, v13, v7

    iput-object v13, p0, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b:[Ldk;

    .line 146
    const v0, 0x7f080046

    iget-object v1, p0, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b:[Ldk;

    invoke-virtual {p0, v0, v1}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->a(I[Ldk;)V

    .line 147
    invoke-static {}, Lfp;->f()I

    move-result v1

    .line 148
    invoke-super/range {p0 .. p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const/4 v2, 0x5

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v2, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b(IZ)V

    .line 150
    const/4 v2, 0x2

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v2, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b(IZ)V

    .line 151
    invoke-direct {p0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->g()V

    .line 152
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->c(I)V

    .line 153
    return-void

    .line 93
    :cond_0
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 94
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 149
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 150
    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    .line 198
    packed-switch p1, :pswitch_data_0

    .line 262
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 201
    :pswitch_0
    invoke-static {}, Lfp;->f()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x2

    .line 202
    new-instance v1, Les;

    invoke-direct {v1, p0}, Les;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080239

    invoke-virtual {v1, v2}, Les;->a(I)Les;

    move-result-object v1

    const v2, 0x7f08023a

    new-instance v3, LcD;

    invoke-direct {v3, p0}, LcD;-><init>(Lcom/kms/antivirus/gui/AvAdditionalActivity;)V

    invoke-virtual {v1, v2, v3}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v1

    const v2, 0x7f07001d

    const v3, 0x7f07001e

    new-instance v4, LcC;

    invoke-direct {v4, p0}, LcC;-><init>(Lcom/kms/antivirus/gui/AvAdditionalActivity;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Les;->a(IIILet;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
