.class public Lcom/mobclix/android/sdk/MobclixBrowserActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/FrameLayout;

.field b:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;

.field c:Z

.field d:Landroid/net/Uri;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:F

.field private h:I

.field private i:Landroid/view/View;

.field private j:Lcom/mobclix/android/sdk/ap;

.field private k:Ljava/util/LinkedList;

.field private l:Landroid/content/Intent;

.field private final m:I

.field private final n:I

.field private final o:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "mobclix-browser"

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->f:Ljava/lang/String;

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->g:F

    new-instance v0, Lcom/mobclix/android/sdk/ap;

    invoke-direct {v0, p0}, Lcom/mobclix/android/sdk/ap;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->j:Lcom/mobclix/android/sdk/ap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->k:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->l:Landroid/content/Intent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->m:I

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->n:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->o:I

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I
    .locals 2

    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->g:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Lcom/mobclix/android/sdk/ap;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->j:Lcom/mobclix/android/sdk/ap;

    return-object v0
.end method

.method private static a(Landroid/net/Uri;Landroid/app/Activity;)Ljava/io/File;
    .locals 8

    const/4 v6, 0x0

    const/4 v0, 0x3

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "orientation"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1
.end method

.method private a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v3

    goto :goto_0
.end method

.method static synthetic b(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->k:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic c(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ai;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ai;->h(Lcom/mobclix/android/sdk/ai;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ai;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ai;->g(Lcom/mobclix/android/sdk/ai;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ai;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/ai;->a()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ai;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ai;->c(Lcom/mobclix/android/sdk/ai;)Landroid/widget/VideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ai;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ai;->c(Lcom/mobclix/android/sdk/ai;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v2, -0x1

    :try_start_0
    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->v:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->v:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    :cond_1
    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->v:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/cq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_6

    if-ne p2, v2, :cond_5

    :try_start_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->d:Landroid/net/Uri;

    invoke-static {v1, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Landroid/net/Uri;Landroid/app/Activity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v2

    iget v2, v2, Lcom/mobclix/android/sdk/cf;->h:I

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v3

    iget v3, v3, Lcom/mobclix/android/sdk/cf;->g:I

    if-eqz v2, :cond_2

    if-nez v3, :cond_4

    :cond_2
    :goto_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/mobclix/android/sdk/a;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mobclix/android/sdk/cf;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobclix/android/sdk/e;->v:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    return-void

    :cond_4
    :try_start_3
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v2

    iget v2, v2, Lcom/mobclix/android/sdk/cf;->g:I

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v3

    iget v3, v3, Lcom/mobclix/android/sdk/cf;->h:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_5
    if-nez p2, :cond_3

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v1

    const-string v2, "User canceled."

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/cf;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/cf;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    const-string v1, "Error processing photo."

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cf;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    goto :goto_2

    :cond_6
    const/4 v1, 0x5

    if-ne p1, v1, :cond_b

    if-ne p2, v2, :cond_a

    :try_start_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move-object v1, v2

    :cond_7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v3

    iget v3, v3, Lcom/mobclix/android/sdk/cf;->h:I

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v4

    iget v4, v4, Lcom/mobclix/android/sdk/cf;->g:I

    if-eqz v3, :cond_8

    if-nez v4, :cond_9

    :cond_8
    :goto_3
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0xa

    invoke-virtual {v1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/mobclix/android/sdk/a;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mobclix/android/sdk/cf;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v1

    :try_start_6
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/cf;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    const-string v1, "Error processing photo."

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cf;->b(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :cond_9
    :try_start_7
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v3

    iget v3, v3, Lcom/mobclix/android/sdk/cf;->g:I

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v4

    iget v4, v4, Lcom/mobclix/android/sdk/cf;->h:I

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_3

    :cond_a
    if-nez p2, :cond_3

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v1

    const-string v2, "User canceled."

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/cf;->b(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x6

    if-ne p1, v1, :cond_e

    if-ne p2, v2, :cond_d

    :try_start_8
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move-object v1, v2

    :cond_c
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/cf;->d(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v1

    :try_start_9
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/cf;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    const-string v1, "Error processing photo."

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cf;->b(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    :cond_d
    if-nez p2, :cond_3

    :try_start_a
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v1

    const-string v2, "User canceled."

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/cf;->b(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_1

    :cond_e
    const/4 v1, 0x7

    if-ne p1, v1, :cond_10

    if-ne p2, v2, :cond_f

    :try_start_b
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/cf;->e()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v1

    :try_start_c
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    const-string v1, "Error getting contact."

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cf;->c(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_1

    :cond_f
    if-nez p2, :cond_3

    :try_start_d
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v1

    const-string v2, "User canceled."

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/cf;->c(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_1

    :cond_10
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    if-ne p2, v2, :cond_11

    :try_start_e
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/cf;->d()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v1

    :try_start_f
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    const-string v1, "Error getting contact."

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cf;->c(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_1

    :cond_11
    if-nez p2, :cond_3

    :try_start_10
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v1

    const-string v2, "User canceled."

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/cf;->c(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x9

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->g:F

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->setRequestedOrientation(I)V

    new-instance v0, Lcom/mobclix/android/sdk/ai;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->f:Ljava/lang/String;

    invoke-direct {v0, p0, p0, v1}, Lcom/mobclix/android/sdk/ai;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/TableLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_1
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "browser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->requestWindowFeature(I)Z

    new-instance v0, Lcom/mobclix/android/sdk/y;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->f:Ljava/lang/String;

    invoke-direct {v0, p0, p0, v1}, Lcom/mobclix/android/sdk/y;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expander"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Lcom/mobclix/android/sdk/ac;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->f:Ljava/lang/String;

    invoke-direct {v0, p0, p0, v1}, Lcom/mobclix/android/sdk/ac;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->b:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->b:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fullscreen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x9

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Lcom/mobclix/android/sdk/af;

    invoke-direct {v0, p0, p0}, Lcom/mobclix/android/sdk/af;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->b:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->b:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x4

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I

    const-string v0, "camera.jpg"

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "title"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "description"

    const-string v2, "Image capture by camera"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->d:Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->l:Landroid/content/Intent;

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->l:Landroid/content/Intent;

    const-string v1, "output"

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->l:Landroid/content/Intent;

    const-string v1, "android.intent.extra.videoQuality"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gallery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x5

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->l:Landroid/content/Intent;

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->l:Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->l:Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendToServer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x6

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->l:Landroid/content/Intent;

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->l:Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->l:Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "contact"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x7

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I

    goto/16 :goto_1

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "addContact"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x8

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobclix/android/sdk/aq;->a()Lcom/mobclix/android/sdk/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/aq;->c()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->l:Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->v:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->v:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->v:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    const-string v1, "Error getting contact."

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cf;->c(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    goto/16 :goto_1

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "html5Video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    if-ne v0, v3, :cond_d

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v4, :cond_b

    if-eqz v1, :cond_b

    const/4 v0, 0x3

    if-ne v1, v0, :cond_c

    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->setRequestedOrientation(I)V

    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Lcom/mobclix/android/sdk/ah;

    invoke-direct {v0, p0, p0}, Lcom/mobclix/android/sdk/ah;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_d
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v4, :cond_e

    if-eq v1, v3, :cond_e

    if-nez v1, :cond_f

    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_f
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->setRequestedOrientation(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I

    sparse-switch v0, :sswitch_data_0

    move v0, v4

    :goto_0
    return v0

    :sswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "Bookmark"

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Forward"

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "Close"

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->b:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x4

    :try_start_0
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/y;

    invoke-static {v0}, Lcom/mobclix/android/sdk/y;->b(Lcom/mobclix/android/sdk/y;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/y;

    invoke-static {v0}, Lcom/mobclix/android/sdk/y;->b(Lcom/mobclix/android/sdk/y;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ac;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ac;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->d()V

    :cond_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ac;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/ac;->a(I)V

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_3
    if-ne p1, v1, :cond_6

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/af;

    iget-object v0, v0, Lcom/mobclix/android/sdk/af;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/af;

    iget-object v0, v0, Lcom/mobclix/android/sdk/af;->k:Lcom/mobclix/android/sdk/cq;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->canGoBackOrForward(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/af;

    iget-object v0, v0, Lcom/mobclix/android/sdk/af;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->goBack()V

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/af;

    iget-object v0, v0, Lcom/mobclix/android/sdk/af;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->d()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/af;

    iget-object v0, v0, Lcom/mobclix/android/sdk/af;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->clearHistory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/af;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/af;->a(I)V

    goto :goto_1

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x9 -> :sswitch_3
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I

    sparse-switch v0, :sswitch_data_0

    move v0, v3

    :goto_0
    return v0

    :sswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ae;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ae;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ae;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ae;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ae;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ae;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast p0, Lcom/mobclix/android/sdk/ae;

    iget-object v0, p0, Lcom/mobclix/android/sdk/ae;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->goForward()V

    :cond_0
    move v0, v2

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast p0, Lcom/mobclix/android/sdk/ae;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/ae;->a(I)V

    move v0, v2

    goto :goto_0

    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/y;

    invoke-static {v0}, Lcom/mobclix/android/sdk/y;->b(Lcom/mobclix/android/sdk/y;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/y;

    invoke-static {v0}, Lcom/mobclix/android/sdk/y;->b(Lcom/mobclix/android/sdk/y;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/y;

    invoke-static {v0}, Lcom/mobclix/android/sdk/y;->b(Lcom/mobclix/android/sdk/y;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast p0, Lcom/mobclix/android/sdk/y;

    invoke-static {p0}, Lcom/mobclix/android/sdk/y;->b(Lcom/mobclix/android/sdk/y;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v3

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    :try_start_0
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ai;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ai;->g(Lcom/mobclix/android/sdk/ai;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    goto :goto_0

    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ac;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "imageUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "imageUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->d:Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :try_start_0
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ae;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ae;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->c()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ae;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mobclix/android/sdk/ae;->o:Z

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ae;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ae;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->k()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    goto :goto_0

    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->v:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->v:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->l:Landroid/content/Intent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->l:Landroid/content/Intent;

    iget v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->l:Landroid/content/Intent;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->l:Landroid/content/Intent;

    const-string v1, "Select Picture"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->l:Landroid/content/Intent;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->l:Landroid/content/Intent;

    const-string v1, "Select Picture"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/mobclix/android/sdk/aq;->a()Lcom/mobclix/android/sdk/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/aq;->b()Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_5
    :try_start_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->l:Landroid/content/Intent;

    iget v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->v:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->v:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->v:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    const-string v1, "Error getting contact."

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cf;->c(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const-string v0, "imageUri"

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->d:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    :try_start_0
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ai;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ai;->f(Lcom/mobclix/android/sdk/ai;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ai;

    const-string v1, ""

    const-string v2, "Loading..."

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/ai;->a(Lcom/mobclix/android/sdk/ai;Landroid/app/ProgressDialog;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ai;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ai;->g(Lcom/mobclix/android/sdk/ai;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/mobclix/android/sdk/w;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/w;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ai;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ai;->b(Lcom/mobclix/android/sdk/ai;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ai;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ai;->c(Lcom/mobclix/android/sdk/ai;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    :try_start_0
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ah;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ah;->a(Lcom/mobclix/android/sdk/ah;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ah;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ah;->b(Lcom/mobclix/android/sdk/ah;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ah;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ah;->c(Lcom/mobclix/android/sdk/ah;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/cq;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onCustomViewHidden"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ah;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ah;->c(Lcom/mobclix/android/sdk/ah;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/cq;->g:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ah;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ah;->c(Lcom/mobclix/android/sdk/ah;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobclix/android/sdk/cq;->g:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    goto :goto_0

    :sswitch_1
    :try_start_4
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ae;

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/ae;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ae;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ae;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->j()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ae;

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/ae;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ae;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/ae;->a(I)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ae;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ae;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->j()V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ae;

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/ae;->o:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ae;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ae;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->j()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ae;

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/ae;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->i:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/ae;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ae;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->j()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x9 -> :sswitch_2
        0xa -> :sswitch_0
    .end sparse-switch
.end method
