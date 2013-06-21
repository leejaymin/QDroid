.class final Limoblife/startupmanager/ap;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Limoblife/startupmanager/ZCustomizeActivity;


# direct methods
.method constructor <init>(Limoblife/startupmanager/ZCustomizeActivity;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/ap;->a:Limoblife/startupmanager/ZCustomizeActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Limoblife/startupmanager/ap;->a:Limoblife/startupmanager/ZCustomizeActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Limoblife/startupmanager/ZCustomizeActivity;->userAppList:Ljava/util/List;
    invoke-static {v0, v1}, Limoblife/startupmanager/ZCustomizeActivity;->access$7(Limoblife/startupmanager/ZCustomizeActivity;Ljava/util/List;)V

    iget-object v0, p0, Limoblife/startupmanager/ap;->a:Limoblife/startupmanager/ZCustomizeActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Limoblife/startupmanager/ZCustomizeActivity;->systemAppList:Ljava/util/List;
    invoke-static {v0, v1}, Limoblife/startupmanager/ZCustomizeActivity;->access$8(Limoblife/startupmanager/ZCustomizeActivity;Ljava/util/List;)V

    iget-object v0, p0, Limoblife/startupmanager/ap;->a:Limoblife/startupmanager/ZCustomizeActivity;

    iget-object v0, v0, Limoblife/startupmanager/ZCustomizeActivity;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Limoblife/startupmanager/ap;->a:Limoblife/startupmanager/ZCustomizeActivity;

    #getter for: Limoblife/startupmanager/ZCustomizeActivity;->userAppList:Ljava/util/List;
    invoke-static {v0}, Limoblife/startupmanager/ZCustomizeActivity;->access$5(Limoblife/startupmanager/ZCustomizeActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Limoblife/startupmanager/ap;->a:Limoblife/startupmanager/ZCustomizeActivity;

    iget-object v1, v1, Limoblife/startupmanager/ZCustomizeActivity;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Limoblife/startupmanager/ap;->a:Limoblife/startupmanager/ZCustomizeActivity;

    #getter for: Limoblife/startupmanager/ZCustomizeActivity;->systemAppList:Ljava/util/List;
    invoke-static {v0}, Limoblife/startupmanager/ZCustomizeActivity;->access$6(Limoblife/startupmanager/ZCustomizeActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Limoblife/startupmanager/ap;->a:Limoblife/startupmanager/ZCustomizeActivity;

    iget-object v1, v1, Limoblife/startupmanager/ZCustomizeActivity;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v6, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Limoblife/startupmanager/ap;->a:Limoblife/startupmanager/ZCustomizeActivity;

    #getter for: Limoblife/startupmanager/ZCustomizeActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Limoblife/startupmanager/ZCustomizeActivity;->access$0(Limoblife/startupmanager/ZCustomizeActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Limoblife/startupmanager/ap;->a:Limoblife/startupmanager/ZCustomizeActivity;

    iget-object v2, v2, Limoblife/startupmanager/ZCustomizeActivity;->bootItem:Ljava/util/List;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_0
    iget-object v2, p0, Limoblife/startupmanager/ap;->a:Limoblife/startupmanager/ZCustomizeActivity;

    iget-object v2, v2, Limoblife/startupmanager/ZCustomizeActivity;->pm:Landroid/content/pm/PackageManager;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Limoblife/startupmanager/ap;->a:Limoblife/startupmanager/ZCustomizeActivity;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Limoblife/startupmanager/ZCustomizeActivity;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Limoblife/startupmanager/ap;->a:Limoblife/startupmanager/ZCustomizeActivity;

    #getter for: Limoblife/startupmanager/ZCustomizeActivity;->systemAppList:Ljava/util/List;
    invoke-static {v2}, Limoblife/startupmanager/ZCustomizeActivity;->access$6(Limoblife/startupmanager/ZCustomizeActivity;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Limoblife/startupmanager/au;

    iget-object v4, p0, Limoblife/startupmanager/ap;->a:Limoblife/startupmanager/ZCustomizeActivity;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v5}, Limoblife/startupmanager/au;-><init>(Limoblife/startupmanager/ZCustomizeActivity;Landroid/content/pm/ApplicationInfo;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Limoblife/startupmanager/ap;->a:Limoblife/startupmanager/ZCustomizeActivity;

    #getter for: Limoblife/startupmanager/ZCustomizeActivity;->userAppList:Ljava/util/List;
    invoke-static {v2}, Limoblife/startupmanager/ZCustomizeActivity;->access$5(Limoblife/startupmanager/ZCustomizeActivity;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Limoblife/startupmanager/au;

    iget-object v4, p0, Limoblife/startupmanager/ap;->a:Limoblife/startupmanager/ZCustomizeActivity;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v5}, Limoblife/startupmanager/au;-><init>(Limoblife/startupmanager/ZCustomizeActivity;Landroid/content/pm/ApplicationInfo;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_3
    :try_start_1
    iget-object v2, p0, Limoblife/startupmanager/ap;->a:Limoblife/startupmanager/ZCustomizeActivity;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Limoblife/startupmanager/ZCustomizeActivity;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Limoblife/startupmanager/ap;->a:Limoblife/startupmanager/ZCustomizeActivity;

    #getter for: Limoblife/startupmanager/ZCustomizeActivity;->systemAppList:Ljava/util/List;
    invoke-static {v2}, Limoblife/startupmanager/ZCustomizeActivity;->access$6(Limoblife/startupmanager/ZCustomizeActivity;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Limoblife/startupmanager/au;

    iget-object v4, p0, Limoblife/startupmanager/ap;->a:Limoblife/startupmanager/ZCustomizeActivity;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v0, v5}, Limoblife/startupmanager/au;-><init>(Limoblife/startupmanager/ZCustomizeActivity;Landroid/content/pm/ApplicationInfo;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Limoblife/startupmanager/ap;->a:Limoblife/startupmanager/ZCustomizeActivity;

    #getter for: Limoblife/startupmanager/ZCustomizeActivity;->userAppList:Ljava/util/List;
    invoke-static {v2}, Limoblife/startupmanager/ZCustomizeActivity;->access$5(Limoblife/startupmanager/ZCustomizeActivity;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Limoblife/startupmanager/au;

    iget-object v4, p0, Limoblife/startupmanager/ap;->a:Limoblife/startupmanager/ZCustomizeActivity;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v0, v5}, Limoblife/startupmanager/au;-><init>(Limoblife/startupmanager/ZCustomizeActivity;Landroid/content/pm/ApplicationInfo;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0
.end method
