.class public Limoblife/startupmanager/BootList;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field am:Landroid/app/ActivityManager;

.field bootItem:Ljava/util/List;

.field listAdapter:Limoblife/startupmanager/d;

.field pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p0}, Limoblife/startupmanager/BootList;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Limoblife/startupmanager/R$layout;->bootlist:I

    invoke-virtual {p0, v0}, Limoblife/startupmanager/BootList;->setContentView(I)V

    sget v0, Limoblife/startupmanager/R$id;->listView:I

    invoke-virtual {p0, v0}, Limoblife/startupmanager/BootList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Limoblife/startupmanager/BootList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Limoblife/startupmanager/BootList;->pm:Landroid/content/pm/PackageManager;

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Limoblife/startupmanager/BootList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Limoblife/startupmanager/BootList;->am:Landroid/app/ActivityManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Limoblife/startupmanager/BootList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "bootList"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Limoblife/startupmanager/BootList;->bootItem:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_0

    new-instance v1, Limoblife/startupmanager/d;

    invoke-direct {v1, p0}, Limoblife/startupmanager/d;-><init>(Limoblife/startupmanager/BootList;)V

    iput-object v1, p0, Limoblife/startupmanager/BootList;->listAdapter:Limoblife/startupmanager/d;

    iget-object v1, p0, Limoblife/startupmanager/BootList;->listAdapter:Limoblife/startupmanager/d;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget v0, Limoblife/startupmanager/R$id;->exit:I

    invoke-virtual {p0, v0}, Limoblife/startupmanager/BootList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Limoblife/startupmanager/b;

    invoke-direct {v1, p0}, Limoblife/startupmanager/b;-><init>(Limoblife/startupmanager/BootList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    new-instance v4, Limoblife/startupmanager/c;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v4, p0, v1}, Limoblife/startupmanager/c;-><init>(Limoblife/startupmanager/BootList;Ljava/lang/String;)V

    iget-object v1, p0, Limoblife/startupmanager/BootList;->bootItem:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "package"

    iget-object v0, p0, Limoblife/startupmanager/BootList;->bootItem:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/c;

    iget-object v0, v0, Limoblife/startupmanager/c;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Limoblife/startupmanager/BootList;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    const-string v2, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pkg"

    iget-object v0, p0, Limoblife/startupmanager/BootList;->bootItem:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/c;

    iget-object v0, v0, Limoblife/startupmanager/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Limoblife/startupmanager/BootList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 8

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Limoblife/startupmanager/BootList;->am:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Limoblife/startupmanager/BootList;->bootItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    :goto_0
    if-gez v5, :cond_1

    iget-object v0, p0, Limoblife/startupmanager/BootList;->bootItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Limoblife/startupmanager/R$id;->info:I

    invoke-virtual {p0, v0}, Limoblife/startupmanager/BootList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Limoblife/startupmanager/R$string;->bootlist_infos:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Limoblife/startupmanager/BootList;->listAdapter:Limoblife/startupmanager/d;

    invoke-virtual {v0}, Limoblife/startupmanager/d;->notifyDataSetInvalidated()V

    return-void

    :cond_1
    move v1, v2

    move v3, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    :cond_2
    if-nez v3, :cond_3

    const-string v1, "w"

    iget-object v0, p0, Limoblife/startupmanager/BootList;->bootItem:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/c;

    iget-object v0, v0, Limoblife/startupmanager/c;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Limoblife/startupmanager/BootList;->bootItem:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_0

    :cond_4
    move v4, v2

    :goto_2
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v0, v0

    if-lt v4, v0, :cond_5

    :goto_3
    if-nez v3, :cond_2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Limoblife/startupmanager/BootList;->bootItem:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/c;

    iget-object v7, v0, Limoblife/startupmanager/c;->a:Ljava/lang/String;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2
.end method
