.class final Lccc71/pmw/lib/gu;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;

.field final synthetic b:Lccc71/pmw/lib/gt;

.field private final synthetic c:Ljava/io/File;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/gt;Ljava/io/File;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/gu;->b:Lccc71/pmw/lib/gt;

    iput-object p2, p0, Lccc71/pmw/lib/gu;->c:Ljava/io/File;

    .line 468
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/gu;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private varargs d()Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 477
    .line 480
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    iget-object v3, p0, Lccc71/pmw/lib/gu;->c:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 481
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 482
    const-string v3, "logcat"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 486
    iget-object v0, p0, Lccc71/pmw/lib/gu;->b:Lccc71/pmw/lib/gt;

    iget-object v0, v0, Lccc71/pmw/lib/gt;->a:Lccc71/pmw/lib/gs;

    invoke-static {v0}, Lccc71/pmw/lib/gs;->a(Lccc71/pmw/lib/gs;)Lccc71/pmw/lib/gr;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/gr;->a(Lccc71/pmw/lib/gr;)Lccc71/pmw/lib/pmw_logcat;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->c(Lccc71/pmw/lib/pmw_logcat;)V

    .line 488
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 496
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 521
    iget-object v0, p0, Lccc71/pmw/lib/gu;->b:Lccc71/pmw/lib/gt;

    iget-object v0, v0, Lccc71/pmw/lib/gt;->a:Lccc71/pmw/lib/gs;

    invoke-static {v0}, Lccc71/pmw/lib/gs;->a(Lccc71/pmw/lib/gs;)Lccc71/pmw/lib/gr;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/gr;->a(Lccc71/pmw/lib/gr;)Lccc71/pmw/lib/pmw_logcat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_logcat;->b(Lccc71/pmw/lib/pmw_logcat;Z)V

    .line 522
    iget-object v0, p0, Lccc71/pmw/lib/gu;->b:Lccc71/pmw/lib/gt;

    iget-object v0, v0, Lccc71/pmw/lib/gt;->a:Lccc71/pmw/lib/gs;

    invoke-static {v0}, Lccc71/pmw/lib/gs;->a(Lccc71/pmw/lib/gs;)Lccc71/pmw/lib/gr;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/gr;->a(Lccc71/pmw/lib/gr;)Lccc71/pmw/lib/pmw_logcat;

    move-result-object v0

    invoke-static {v0, v5}, Lccc71/pmw/lib/pmw_logcat;->c(Lccc71/pmw/lib/pmw_logcat;Z)V

    .line 524
    :goto_1
    return-object v2

    .line 490
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 492
    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    :cond_2
    iget-object v3, p0, Lccc71/pmw/lib/gu;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 502
    :goto_2
    const-string v3, "android_tuner"

    const-string v4, "Failed to load log file, restarting logcat"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    if-eqz v1, :cond_3

    .line 508
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 513
    :cond_3
    :goto_3
    iget-object v0, p0, Lccc71/pmw/lib/gu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 517
    new-array v0, v5, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/gu;->d([Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    .line 500
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lccc71/pmw/lib/gu;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/gu;->b:Lccc71/pmw/lib/gt;

    iget-object v0, v0, Lccc71/pmw/lib/gt;->a:Lccc71/pmw/lib/gs;

    invoke-static {v0}, Lccc71/pmw/lib/gs;->a(Lccc71/pmw/lib/gs;)Lccc71/pmw/lib/gr;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/gr;->a(Lccc71/pmw/lib/gr;)Lccc71/pmw/lib/pmw_logcat;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_logcat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/gu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {}, Lccc71/pmw/lib/pmw_logcat;->e()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/gu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-gez v1, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/gu;->b:Lccc71/pmw/lib/gt;

    iget-object v0, v0, Lccc71/pmw/lib/gt;->a:Lccc71/pmw/lib/gs;

    invoke-static {v0}, Lccc71/pmw/lib/gs;->a(Lccc71/pmw/lib/gs;)Lccc71/pmw/lib/gr;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/gr;->a(Lccc71/pmw/lib/gr;)Lccc71/pmw/lib/pmw_logcat;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->S:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lccc71/pmw/lib/gu;->b:Lccc71/pmw/lib/gt;

    iget-object v0, v0, Lccc71/pmw/lib/gt;->a:Lccc71/pmw/lib/gs;

    invoke-static {v0}, Lccc71/pmw/lib/gs;->a(Lccc71/pmw/lib/gs;)Lccc71/pmw/lib/gr;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/gr;->a(Lccc71/pmw/lib/gr;)Lccc71/pmw/lib/pmw_logcat;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->ag:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lccc71/pmw/lib/gu;->b:Lccc71/pmw/lib/gt;

    iget-object v0, v0, Lccc71/pmw/lib/gt;->a:Lccc71/pmw/lib/gs;

    invoke-static {v0}, Lccc71/pmw/lib/gs;->a(Lccc71/pmw/lib/gs;)Lccc71/pmw/lib/gr;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/gr;->a(Lccc71/pmw/lib/gr;)Lccc71/pmw/lib/pmw_logcat;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->aa:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "android_tuner"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to clear logcat screen: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/gu;->b:Lccc71/pmw/lib/gt;

    iget-object v0, v0, Lccc71/pmw/lib/gt;->a:Lccc71/pmw/lib/gs;

    invoke-static {v0}, Lccc71/pmw/lib/gs;->a(Lccc71/pmw/lib/gs;)Lccc71/pmw/lib/gr;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/gr;->a(Lccc71/pmw/lib/gr;)Lccc71/pmw/lib/pmw_logcat;

    move-result-object v2

    iget-object v0, p0, Lccc71/pmw/lib/gu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lccc71/pmw/lib/pmw_logcat;->a(Lccc71/pmw/lib/pmw_logcat;Ljava/lang/String;)Lccc71/utils/ccc71_text_view;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/gu;->b:Lccc71/pmw/lib/gt;

    iget-object v0, v0, Lccc71/pmw/lib/gt;->a:Lccc71/pmw/lib/gs;

    invoke-static {v0}, Lccc71/pmw/lib/gs;->a(Lccc71/pmw/lib/gs;)Lccc71/pmw/lib/gr;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/gr;->a(Lccc71/pmw/lib/gr;)Lccc71/pmw/lib/pmw_logcat;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->S:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lccc71/pmw/lib/gu;->b:Lccc71/pmw/lib/gt;

    iget-object v0, v0, Lccc71/pmw/lib/gt;->a:Lccc71/pmw/lib/gs;

    invoke-static {v0}, Lccc71/pmw/lib/gs;->a(Lccc71/pmw/lib/gs;)Lccc71/pmw/lib/gr;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/gr;->a(Lccc71/pmw/lib/gr;)Lccc71/pmw/lib/pmw_logcat;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->ag:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lccc71/pmw/lib/gu;->b:Lccc71/pmw/lib/gt;

    iget-object v0, v0, Lccc71/pmw/lib/gt;->a:Lccc71/pmw/lib/gs;

    invoke-static {v0}, Lccc71/pmw/lib/gs;->a(Lccc71/pmw/lib/gs;)Lccc71/pmw/lib/gr;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/gr;->a(Lccc71/pmw/lib/gr;)Lccc71/pmw/lib/pmw_logcat;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->aa:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method

.method protected final varargs synthetic b([Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/gu;->b:Lccc71/pmw/lib/gt;

    iget-object v0, v0, Lccc71/pmw/lib/gt;->a:Lccc71/pmw/lib/gs;

    invoke-static {v0}, Lccc71/pmw/lib/gs;->a(Lccc71/pmw/lib/gs;)Lccc71/pmw/lib/gr;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/gr;->a(Lccc71/pmw/lib/gr;)Lccc71/pmw/lib/pmw_logcat;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/gu;->b:Lccc71/pmw/lib/gt;

    iget-object v1, v1, Lccc71/pmw/lib/gt;->a:Lccc71/pmw/lib/gs;

    invoke-static {v1}, Lccc71/pmw/lib/gs;->a(Lccc71/pmw/lib/gs;)Lccc71/pmw/lib/gr;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/gr;->a(Lccc71/pmw/lib/gr;)Lccc71/pmw/lib/pmw_logcat;

    move-result-object v1

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_logcat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->cZ:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lccc71/pmw/lib/gu;->b:Lccc71/pmw/lib/gt;

    iget-object v0, v0, Lccc71/pmw/lib/gt;->a:Lccc71/pmw/lib/gs;

    invoke-static {v0}, Lccc71/pmw/lib/gs;->a(Lccc71/pmw/lib/gs;)Lccc71/pmw/lib/gr;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/gr;->a(Lccc71/pmw/lib/gr;)Lccc71/pmw/lib/pmw_logcat;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->d(Lccc71/pmw/lib/pmw_logcat;)V

    invoke-virtual {p0}, Lccc71/pmw/lib/gu;->c()Z

    return-void
.end method
