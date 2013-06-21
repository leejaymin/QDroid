.class final Limoblife/toolbox/full/ui/j;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/ACache;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/ACache;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/j;->a:Limoblife/toolbox/full/ui/ACache;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PackageStats"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/PackageStats;

    if-eqz v7, :cond_0

    iget-wide v5, v7, Landroid/content/pm/PackageStats;->cacheSize:J

    :try_start_0
    iget-object v0, p0, Limoblife/toolbox/full/ui/j;->a:Limoblife/toolbox/full/ui/ACache;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ACache;->a(Limoblife/toolbox/full/ui/ACache;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, v7, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Limoblife/toolbox/full/ui/j;->a:Limoblife/toolbox/full/ui/ACache;

    invoke-static {v1}, Limoblife/toolbox/full/ui/ACache;->a(Limoblife/toolbox/full/ui/ACache;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    iget-object v3, p0, Limoblife/toolbox/full/ui/j;->a:Limoblife/toolbox/full/ui/ACache;

    invoke-static {v3}, Limoblife/toolbox/full/ui/ACache;->a(Limoblife/toolbox/full/ui/ACache;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move-object v2, v1

    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-lez v0, :cond_1

    new-instance v0, Limoblife/toolbox/full/ui/p;

    iget-object v1, p0, Limoblife/toolbox/full/ui/j;->a:Limoblife/toolbox/full/ui/ACache;

    iget-object v3, v7, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Limoblife/toolbox/full/ui/p;-><init>(Limoblife/toolbox/full/ui/ACache;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Limoblife/toolbox/full/ui/j;->a:Limoblife/toolbox/full/ui/ACache;

    invoke-static {v1}, Limoblife/toolbox/full/ui/ACache;->b(Limoblife/toolbox/full/ui/ACache;)Limoblife/toolbox/full/ui/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Limoblife/toolbox/full/ui/o;->a(Limoblife/toolbox/full/ui/p;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/j;->a:Limoblife/toolbox/full/ui/ACache;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ACache;->b(Limoblife/toolbox/full/ui/ACache;)Limoblife/toolbox/full/ui/o;

    move-result-object v0

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/o;->notifyDataSetChanged()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/j;->a:Limoblife/toolbox/full/ui/ACache;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ACache;->c(Limoblife/toolbox/full/ui/ACache;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Limoblife/toolbox/full/ui/ACache;->a(Limoblife/toolbox/full/ui/ACache;J)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/j;->a:Limoblife/toolbox/full/ui/ACache;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ACache;->d(Limoblife/toolbox/full/ui/ACache;)J

    move-result-wide v1

    add-long/2addr v1, v5

    invoke-static {v0, v1, v2}, Limoblife/toolbox/full/ui/ACache;->b(Limoblife/toolbox/full/ui/ACache;J)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/j;->a:Limoblife/toolbox/full/ui/ACache;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ACache;->e(Limoblife/toolbox/full/ui/ACache;)V

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "updateCache(): ps.packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "cacheHandler:\tException = "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v2

    move-object v2, v1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
