.class final Lccc71/utils/i;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/utils/h;


# direct methods
.method constructor <init>(Lccc71/utils/h;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/utils/i;->a:Lccc71/utils/h;

    .line 298
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter

    .prologue
    .line 303
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 305
    iget-object v1, p0, Lccc71/utils/i;->a:Lccc71/utils/h;

    invoke-static {v1}, Lccc71/utils/h;->a(Lccc71/utils/h;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccc71/utils/i;->a:Lccc71/utils/h;

    invoke-static {v1}, Lccc71/utils/h;->b(Lccc71/utils/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lccc71/utils/i;->a:Lccc71/utils/h;

    invoke-static {v1}, Lccc71/utils/h;->c(Lccc71/utils/h;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lccc71/utils/i;->a:Lccc71/utils/h;

    invoke-static {v2}, Lccc71/utils/h;->a(Lccc71/utils/h;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_0
    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 311
    const/4 v1, 0x1

    if-ne v6, v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Failed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 313
    iget-object v0, p0, Lccc71/utils/i;->a:Lccc71/utils/h;

    invoke-static {v0}, Lccc71/utils/h;->d(Lccc71/utils/h;)V

    .line 314
    iget-object v0, p0, Lccc71/utils/i;->a:Lccc71/utils/h;

    iget-object v1, p0, Lccc71/utils/i;->a:Lccc71/utils/h;

    invoke-static {v1}, Lccc71/utils/h;->a(Lccc71/utils/h;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/utils/h;->a(Lccc71/utils/h;Ljava/io/File;)V

    .line 383
    :cond_1
    :goto_0
    return-void

    .line 318
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 319
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 320
    iget-object v1, p0, Lccc71/utils/i;->a:Lccc71/utils/h;

    invoke-static {v1}, Lccc71/utils/h;->a(Lccc71/utils/h;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 321
    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-lt v5, v6, :cond_3

    .line 368
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 369
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-lt v1, v2, :cond_c

    .line 374
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 375
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-lt v1, v2, :cond_d

    .line 380
    iget-object v0, p0, Lccc71/utils/i;->a:Lccc71/utils/h;

    invoke-static {v0}, Lccc71/utils/h;->e(Lccc71/utils/h;)Landroid/widget/GridView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lccc71/utils/i;->a:Lccc71/utils/h;

    invoke-static {v0}, Lccc71/utils/h;->e(Lccc71/utils/h;)Landroid/widget/GridView;

    move-result-object v0

    new-instance v1, Lccc71/utils/l;

    iget-object v2, p0, Lccc71/utils/i;->a:Lccc71/utils/h;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lccc71/utils/l;-><init>(Lccc71/utils/h;B)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 323
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 324
    if-eqz v1, :cond_6

    .line 326
    const-string v2, " +"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 327
    array-length v1, v10

    const/4 v2, 0x2

    if-le v1, v2, :cond_6

    .line 329
    const/4 v1, 0x0

    aget-object v1, v10, v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 330
    new-instance v2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v1, 0x6c

    if-ne v11, v1, :cond_7

    array-length v1, v10

    add-int/lit8 v1, v1, -0x3

    aget-object v1, v10, v1

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 335
    array-length v1, v10

    add-int/lit8 v3, v1, -0x2

    .line 336
    array-length v1, v10

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v10, v1

    move v4, v3

    .line 337
    :goto_5
    if-gtz v4, :cond_8

    :cond_4
    move-object v1, v2

    .line 350
    :cond_5
    const/16 v2, 0x64

    if-ne v11, v2, :cond_9

    .line 352
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_6
    :goto_6
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_1

    .line 330
    :cond_7
    array-length v1, v10

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v10, v1

    goto :goto_4

    .line 339
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v12, v10, v4

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 340
    new-instance v1, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_5

    .line 346
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    move-object v1, v3

    goto :goto_5

    .line 354
    :cond_9
    const/16 v2, 0x6c

    if-ne v11, v2, :cond_b

    .line 356
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 357
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 359
    :cond_a
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 363
    :cond_b
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 371
    :cond_c
    iget-object v0, p0, Lccc71/utils/i;->a:Lccc71/utils/h;

    invoke-static {v0}, Lccc71/utils/h;->c(Lccc71/utils/h;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    .line 377
    :cond_d
    iget-object v0, p0, Lccc71/utils/i;->a:Lccc71/utils/h;

    invoke-static {v0}, Lccc71/utils/h;->c(Lccc71/utils/h;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3
.end method
