.class public Limoblife/toolbox/full/ui/ACache;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Limoblife/toolbox/full/ui/o;

.field private c:Landroid/content/pm/PackageManager;

.field private d:J

.field private e:J

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ListView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:I

.field private m:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Limoblife/toolbox/full/ui/ACache;->l:I

    new-instance v0, Limoblife/toolbox/full/ui/j;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/j;-><init>(Limoblife/toolbox/full/ui/ACache;)V

    iput-object v0, p0, Limoblife/toolbox/full/ui/ACache;->m:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/ACache;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ACache;->c:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/ACache;J)V
    .locals 0

    iput-wide p1, p0, Limoblife/toolbox/full/ui/ACache;->d:J

    return-void
.end method

.method static synthetic b(Limoblife/toolbox/full/ui/ACache;)Limoblife/toolbox/full/ui/o;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ACache;->b:Limoblife/toolbox/full/ui/o;

    return-object v0
.end method

.method private b()V
    .locals 2

    new-instance v0, Limoblife/toolbox/full/ui/l;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/l;-><init>(Limoblife/toolbox/full/ui/ACache;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic b(Limoblife/toolbox/full/ui/ACache;J)V
    .locals 0

    iput-wide p1, p0, Limoblife/toolbox/full/ui/ACache;->e:J

    return-void
.end method

.method static synthetic c(Limoblife/toolbox/full/ui/ACache;)J
    .locals 2

    iget-wide v0, p0, Limoblife/toolbox/full/ui/ACache;->d:J

    return-wide v0
.end method

.method static synthetic d(Limoblife/toolbox/full/ui/ACache;)J
    .locals 2

    iget-wide v0, p0, Limoblife/toolbox/full/ui/ACache;->e:J

    return-wide v0
.end method

.method static synthetic e(Limoblife/toolbox/full/ui/ACache;)V
    .locals 3

    iget-object v0, p0, Limoblife/toolbox/full/ui/ACache;->i:Landroid/widget/TextView;

    const v1, 0x7f070111

    invoke-virtual {p0, v1}, Limoblife/toolbox/full/ui/ACache;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ACache;->h:Landroid/widget/ListView;

    iget-object v1, p0, Limoblife/toolbox/full/ui/ACache;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ACache;->g:Landroid/widget/TextView;

    iget-wide v1, p0, Limoblife/toolbox/full/ui/ACache;->d:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ACache;->f:Landroid/widget/TextView;

    invoke-static {}, Lutil/a/a;->a()Lutil/a/a;

    iget-wide v1, p0, Limoblife/toolbox/full/ui/ACache;->e:J

    invoke-static {v1, v2}, Lutil/a/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic f(Limoblife/toolbox/full/ui/ACache;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ACache;->m:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Limoblife/toolbox/full/ui/ACache;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ACache;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic h(Limoblife/toolbox/full/ui/ACache;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Limoblife/toolbox/full/ui/ACache;->d:J

    iput-wide v0, p0, Limoblife/toolbox/full/ui/ACache;->e:J

    iget-object v0, p0, Limoblife/toolbox/full/ui/ACache;->b:Limoblife/toolbox/full/ui/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/ACache;->b:Limoblife/toolbox/full/ui/o;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/o;->a()V

    :cond_0
    iget-object v0, p0, Limoblife/toolbox/full/ui/ACache;->h:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic i(Limoblife/toolbox/full/ui/ACache;)V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Limoblife/toolbox/full/ui/ACache;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-class v3, Landroid/a/a/a;

    aput-object v3, v1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "freeStorageAndNotify"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    new-instance v4, Limoblife/toolbox/full/ui/n;

    invoke-direct {v4, p0}, Limoblife/toolbox/full/ui/n;-><init>(Limoblife/toolbox/full/ui/ACache;)V

    aput-object v4, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cleanCache(): NoSuchMethodException = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cleanCache(): IllegalArgumentException = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cleanCache(): IllegalAccessException = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cleanCache(): InvocationTargetException = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Limoblife/toolbox/full/ui/ACache;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getPackageSizeInfo"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/a/a/c;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v0, v4, v5

    const/4 v0, 0x1

    new-instance v5, Limoblife/toolbox/full/ui/q;

    invoke-direct {v5, p0}, Limoblife/toolbox/full/ui/q;-><init>(Limoblife/toolbox/full/ui/ACache;)V

    aput-object v5, v4, v0

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateCache():\tException = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public finish()V
    .locals 4

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/ACache;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imoblife.memorybooster.AMOUNT"

    iget-wide v2, p0, Limoblife/toolbox/full/ui/ACache;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "imoblife.memorybooster.SIZE"

    iget-wide v2, p0, Limoblife/toolbox/full/ui/ACache;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget v1, p0, Limoblife/toolbox/full/ui/ACache;->l:I

    invoke-virtual {p0, v1, v0}, Limoblife/toolbox/full/ui/ACache;->setResult(ILandroid/content/Intent;)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Limoblife/toolbox/full/ui/ACache;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Limoblife/toolbox/full/ui/m;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/m;-><init>(Limoblife/toolbox/full/ui/ACache;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/m;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, -0x1

    iput v0, p0, Limoblife/toolbox/full/ui/ACache;->l:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/ACache;->k:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Limoblife/toolbox/full/ui/ACache;->b()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ACache;->requestWindowFeature(I)Z

    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ACache;->setContentView(I)V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/ACache;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/ACache;->c:Landroid/content/pm/PackageManager;

    new-instance v0, Limoblife/toolbox/full/ui/o;

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/ACache;->getApplicationContext()Landroid/content/Context;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/o;-><init>(Limoblife/toolbox/full/ui/ACache;)V

    iput-object v0, p0, Limoblife/toolbox/full/ui/ACache;->b:Limoblife/toolbox/full/ui/o;

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/ACache;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/ACache;->a:Landroid/view/LayoutInflater;

    const v0, 0x7f080059

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ACache;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ACache;->g:Landroid/widget/TextView;

    const v0, 0x7f08005a

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ACache;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ACache;->f:Landroid/widget/TextView;

    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ACache;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ACache;->h:Landroid/widget/ListView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ACache;->h:Landroid/widget/ListView;

    iget-object v1, p0, Limoblife/toolbox/full/ui/ACache;->b:Limoblife/toolbox/full/ui/o;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Limoblife/toolbox/full/ui/ACache;->i:Landroid/widget/TextView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ACache;->i:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ACache;->i:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ACache;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ACache;->i:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ACache;->h:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Limoblife/toolbox/full/ui/ACache;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v0, 0x7f08005d

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ACache;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ACache;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ACache;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08005c

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ACache;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ACache;->k:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ACache;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ACache;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07010c

    invoke-virtual {p0, v1}, Limoblife/toolbox/full/ui/ACache;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ACache;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Limoblife/toolbox/full/ui/k;

    invoke-direct {v1, p0}, Limoblife/toolbox/full/ui/k;-><init>(Limoblife/toolbox/full/ui/ACache;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Limoblife/toolbox/full/ui/ACache;->b()V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/ACache;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    const-string v1, "imoblife.memorybooster.AMOUNT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string v1, "imoblife.memorybooster.SIZE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    return-void
.end method
