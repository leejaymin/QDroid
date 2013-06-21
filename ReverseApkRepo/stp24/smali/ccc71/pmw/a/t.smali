.class final Lccc71/pmw/a/t;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static synthetic a:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1269
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 1269
    sget-object v0, Lccc71/pmw/a/t;->a:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lccc71/pmw/a/b;->values()[Lccc71/pmw/a/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lccc71/pmw/a/b;->a:Lccc71/pmw/a/b;

    invoke-virtual {v1}, Lccc71/pmw/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_1
    :try_start_1
    sget-object v1, Lccc71/pmw/a/b;->b:Lccc71/pmw/a/b;

    invoke-virtual {v1}, Lccc71/pmw/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_2
    :try_start_2
    sget-object v1, Lccc71/pmw/a/b;->j:Lccc71/pmw/a/b;

    invoke-virtual {v1}, Lccc71/pmw/a/b;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_3
    :try_start_3
    sget-object v1, Lccc71/pmw/a/b;->f:Lccc71/pmw/a/b;

    invoke-virtual {v1}, Lccc71/pmw/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_4
    :try_start_4
    sget-object v1, Lccc71/pmw/a/b;->k:Lccc71/pmw/a/b;

    invoke-virtual {v1}, Lccc71/pmw/a/b;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_5
    :try_start_5
    sget-object v1, Lccc71/pmw/a/b;->i:Lccc71/pmw/a/b;

    invoke-virtual {v1}, Lccc71/pmw/a/b;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    :try_start_6
    sget-object v1, Lccc71/pmw/a/b;->h:Lccc71/pmw/a/b;

    invoke-virtual {v1}, Lccc71/pmw/a/b;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_7
    :try_start_7
    sget-object v1, Lccc71/pmw/a/b;->c:Lccc71/pmw/a/b;

    invoke-virtual {v1}, Lccc71/pmw/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_8
    :try_start_8
    sget-object v1, Lccc71/pmw/a/b;->d:Lccc71/pmw/a/b;

    invoke-virtual {v1}, Lccc71/pmw/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_9
    :try_start_9
    sget-object v1, Lccc71/pmw/a/b;->g:Lccc71/pmw/a/b;

    invoke-virtual {v1}, Lccc71/pmw/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_a
    :try_start_a
    sget-object v1, Lccc71/pmw/a/b;->e:Lccc71/pmw/a/b;

    invoke-virtual {v1}, Lccc71/pmw/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_b
    sput-object v0, Lccc71/pmw/a/t;->a:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1273
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc71/pmw/a/a;

    .line 1279
    :try_start_0
    invoke-static {}, Lccc71/pmw/a/d;->h()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1280
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/a/d;->a(Landroid/content/pm/PackageManager;)V

    .line 1282
    :cond_0
    invoke-static {}, Lccc71/pmw/a/d;->h()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1287
    :goto_0
    if-eqz v1, :cond_1

    .line 1289
    iget-object v3, v0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v4, Lccc71/pmw/a/b;->k:Lccc71/pmw/a/b;

    if-ne v3, v4, :cond_3

    invoke-static {v1}, Lccc71/pmw/a/d;->c(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1290
    iput-boolean v6, v0, Lccc71/pmw/a/a;->a:Z

    .line 1299
    :cond_1
    :goto_1
    iget-object v3, v0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    if-eqz v3, :cond_6

    .line 1301
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1302
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1303
    iget-boolean v3, v0, Lccc71/pmw/a/a;->a:Z

    if-eqz v3, :cond_2

    .line 1304
    iput-object v2, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    .line 1305
    :cond_2
    iget-object v0, v0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1383
    :goto_2
    return-void

    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_0

    .line 1291
    :cond_3
    iget-object v3, v0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v4, Lccc71/pmw/a/b;->h:Lccc71/pmw/a/b;

    if-ne v3, v4, :cond_4

    invoke-static {v1}, Lccc71/pmw/a/d;->b(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1292
    iput-boolean v6, v0, Lccc71/pmw/a/a;->a:Z

    goto :goto_1

    .line 1293
    :cond_4
    iget-object v3, v0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v4, Lccc71/pmw/a/b;->i:Lccc71/pmw/a/b;

    if-ne v3, v4, :cond_5

    invoke-static {v1}, Lccc71/pmw/a/d;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1294
    iput-boolean v6, v0, Lccc71/pmw/a/a;->a:Z

    goto :goto_1

    .line 1296
    :cond_5
    iput-boolean v5, v0, Lccc71/pmw/a/a;->a:Z

    goto :goto_1

    .line 1309
    :cond_6
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lccc71/pmw/a/a;->h:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1310
    invoke-static {}, Lccc71/pmw/a/t;->a()[I

    move-result-object v3

    iget-object v4, v0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    invoke-virtual {v4}, Lccc71/pmw/a/b;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 1336
    :pswitch_1
    if-eqz v1, :cond_9

    invoke-static {v1}, Lccc71/pmw/a/d;->b(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1338
    iput-boolean v6, v0, Lccc71/pmw/a/a;->a:Z

    .line 1339
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ej:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1340
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1313
    :pswitch_2
    if-eqz v1, :cond_7

    invoke-static {v1}, Lccc71/pmw/a/d;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1315
    iput-boolean v6, v0, Lccc71/pmw/a/a;->a:Z

    .line 1316
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ej:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1317
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1321
    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1323
    iput-boolean v6, v0, Lccc71/pmw/a/a;->b:Z

    .line 1324
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ek:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1325
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1329
    :cond_8
    iput-boolean v5, v0, Lccc71/pmw/a/a;->a:Z

    .line 1330
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ei:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1331
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1344
    :cond_9
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1346
    iput-boolean v6, v0, Lccc71/pmw/a/a;->b:Z

    .line 1347
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ek:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1348
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1352
    :cond_a
    iput-boolean v5, v0, Lccc71/pmw/a/a;->a:Z

    .line 1353
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ei:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1354
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1359
    :pswitch_3
    if-eqz v1, :cond_b

    invoke-static {v1}, Lccc71/pmw/a/d;->c(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1361
    iput-boolean v6, v0, Lccc71/pmw/a/a;->a:Z

    .line 1362
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ej:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1363
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1367
    :cond_b
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1369
    iput-boolean v6, v0, Lccc71/pmw/a/a;->b:Z

    .line 1370
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ek:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1371
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1375
    :cond_c
    iput-boolean v5, v0, Lccc71/pmw/a/a;->a:Z

    .line 1376
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ei:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1377
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1310
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
