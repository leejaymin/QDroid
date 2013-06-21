.class final Lccc71/pmw/lib/ke;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final a:Lccc71/pmw/b/p;

.field final synthetic b:Lccc71/pmw/lib/pmw_process;

.field private final synthetic c:Lccc71/pmw/b/c;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_process;Lccc71/pmw/b/c;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    iput-object p2, p0, Lccc71/pmw/lib/ke;->c:Lccc71/pmw/b/c;

    .line 1278
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    .line 1280
    invoke-static {p1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/ke;->a:Lccc71/pmw/b/p;

    return-void
.end method

.method private varargs d()Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    .line 1285
    iget-object v0, p0, Lccc71/pmw/lib/ke;->a:Lccc71/pmw/b/p;

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lccc71/pmw/lib/ke;->c:Lccc71/pmw/b/c;

    iget-object v1, p0, Lccc71/pmw/lib/ke;->a:Lccc71/pmw/b/p;

    iget-object v1, v1, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    iget-object v2, p0, Lccc71/pmw/lib/ke;->a:Lccc71/pmw/b/p;

    iget-object v2, v2, Lccc71/pmw/b/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccc71/pmw/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1291
    :try_start_0
    invoke-static {}, Lccc71/pmw/lib/pmw_process;->i()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ke;->a:Lccc71/pmw/b/p;

    iget-object v1, v1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    .line 1292
    const/16 v2, 0x102f

    .line 1291
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1316
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 1300
    :try_start_1
    iget-object v0, p0, Lccc71/pmw/lib/ke;->a:Lccc71/pmw/b/p;

    iget-object v0, v0, Lccc71/pmw/b/p;->l:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/ke;->a:Lccc71/pmw/b/p;

    iget-object v0, v0, Lccc71/pmw/b/p;->l:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1302
    invoke-static {}, Lccc71/pmw/lib/pmw_process;->i()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ke;->a:Lccc71/pmw/b/p;

    iget-object v1, v1, Lccc71/pmw/b/p;->l:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 1303
    const/16 v2, 0x102f

    .line 1302
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 1314
    :cond_0
    invoke-virtual {p0}, Lccc71/pmw/lib/ke;->c()Z

    .line 1316
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1308
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lccc71/pmw/lib/ke;->d()Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1
    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_process;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_14

    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    sget v2, Lccc71/pmw/lib/d;->fD:I

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_6

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v3, v2

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_4

    :goto_1
    iget-object v0, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    sget v2, Lccc71/pmw/lib/d;->fE:I

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_9

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v3, v2

    move v2, v1

    :goto_2
    if-lt v2, v3, :cond_7

    :goto_3
    iget-object v0, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    sget v2, Lccc71/pmw/lib/d;->fF:I

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_c

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    array-length v3, v2

    move v2, v1

    :goto_4
    if-lt v2, v3, :cond_a

    :goto_5
    iget-object v0, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    sget v2, Lccc71/pmw/lib/d;->fG:I

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_f

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v3, v2

    move v2, v1

    :goto_6
    if-lt v2, v3, :cond_d

    :goto_7
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_13

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v0

    move v0, v1

    :goto_8
    if-lt v0, v3, :cond_10

    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    array-length v3, v0

    move v0, v1

    :goto_9
    if-lt v0, v3, :cond_11

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/d;->ge:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "No permissions found!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    iget-object v0, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_process;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_process;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ccc71.pmw.activities"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/d;->aH:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    const-string v0, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Scrolling view by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    sget v2, Lccc71/pmw/lib/d;->ix:I

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    new-instance v2, Lccc71/pmw/lib/kf;

    invoke-direct {v2, p0, v0, v1}, Lccc71/pmw/lib/kf;-><init>(Lccc71/pmw/lib/ke;Landroid/widget/ScrollView;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_b
    return-void

    :cond_4
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v4, v4, v2

    if-eqz v4, :cond_5

    iget-object v4, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    iget-object v5, p0, Lccc71/pmw/lib/ke;->c:Lccc71/pmw/b/c;

    iget-object v6, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    invoke-static {v6}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v6

    iget-object v6, v6, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v7, v7, v2

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v4, v0, v5, v6, v7}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;Landroid/widget/TableLayout;Lccc71/pmw/b/c;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading package information for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lccc71/pmw/lib/ke;->a:Lccc71/pmw/b/p;

    iget-object v3, v3, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    :cond_7
    :try_start_1
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    aget-object v4, v4, v2

    if-eqz v4, :cond_8

    iget-object v4, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    iget-object v5, p0, Lccc71/pmw/lib/ke;->c:Lccc71/pmw/b/c;

    iget-object v6, p0, Lccc71/pmw/lib/ke;->a:Lccc71/pmw/b/p;

    iget-object v6, v6, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    aget-object v7, v7, v2

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v4, v0, v5, v6, v7}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;Landroid/widget/TableLayout;Lccc71/pmw/b/c;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_9
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto/16 :goto_3

    :cond_a
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    aget-object v4, v4, v2

    if-eqz v4, :cond_b

    iget-object v4, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    iget-object v5, p0, Lccc71/pmw/lib/ke;->c:Lccc71/pmw/b/c;

    iget-object v6, p0, Lccc71/pmw/lib/ke;->a:Lccc71/pmw/b/p;

    iget-object v6, v6, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    aget-object v7, v7, v2

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v4, v0, v5, v6, v7}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;Landroid/widget/TableLayout;Lccc71/pmw/b/c;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_c
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto/16 :goto_5

    :cond_d
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    aget-object v4, v4, v2

    if-eqz v4, :cond_e

    iget-object v4, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    iget-object v5, p0, Lccc71/pmw/lib/ke;->c:Lccc71/pmw/b/c;

    iget-object v6, p0, Lccc71/pmw/lib/ke;->a:Lccc71/pmw/b/p;

    iget-object v6, v6, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    aget-object v7, v7, v2

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v4, v0, v5, v6, v7}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;Landroid/widget/TableLayout;Lccc71/pmw/b/c;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_f
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto/16 :goto_7

    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " (uses)\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    aget-object v4, v4, v0

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " (declared)\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :cond_12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/d;->ge:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_13
    iget-object v0, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/d;->ge:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_process;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->es:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_14
    iget-object v0, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/d;->fD:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/d;->fE:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/d;->fF:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lccc71/pmw/lib/ke;->b:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/d;->fG:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_a
.end method
