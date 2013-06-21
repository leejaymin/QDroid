.class public Limoblife/startupmanager/SystemListActivity;
.super Landroid/app/Activity;


# static fields
.field public static handler:Landroid/os/Handler;


# instance fields
.field comparator:Ljava/util/Comparator;

.field public flag:Z

.field public intent:Landroid/content/Intent;

.field public item:Limoblife/startupmanager/k;

.field listViewItem:Limoblife/startupmanager/ListViewItem;

.field private syslist:Landroid/widget/ListView;

.field public system:Ljava/util/List;

.field public util:Limoblife/startupmanager/ManagerUtil;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limoblife/startupmanager/SystemListActivity;->system:Ljava/util/List;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Limoblife/startupmanager/SystemListActivity;->intent:Landroid/content/Intent;

    new-instance v0, Limoblife/startupmanager/ManagerUtil;

    invoke-direct {v0}, Limoblife/startupmanager/ManagerUtil;-><init>()V

    iput-object v0, p0, Limoblife/startupmanager/SystemListActivity;->util:Limoblife/startupmanager/ManagerUtil;

    new-instance v0, Limoblife/startupmanager/k;

    invoke-direct {v0}, Limoblife/startupmanager/k;-><init>()V

    iput-object v0, p0, Limoblife/startupmanager/SystemListActivity;->item:Limoblife/startupmanager/k;

    const/4 v0, 0x0

    iput-boolean v0, p0, Limoblife/startupmanager/SystemListActivity;->flag:Z

    new-instance v0, Limoblife/startupmanager/ag;

    invoke-direct {v0, p0}, Limoblife/startupmanager/ag;-><init>(Limoblife/startupmanager/SystemListActivity;)V

    iput-object v0, p0, Limoblife/startupmanager/SystemListActivity;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$0(Limoblife/startupmanager/SystemListActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/SystemListActivity;->syslist:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public keyDown(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    new-instance v0, Limoblife/startupmanager/ExitDialog;

    invoke-direct {v0}, Limoblife/startupmanager/ExitDialog;-><init>()V

    invoke-virtual {v0, p1}, Limoblife/startupmanager/ExitDialog;->showExitWindows(Landroid/app/Activity;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Limoblife/startupmanager/R$layout;->systemlist:I

    invoke-virtual {p0, v0}, Limoblife/startupmanager/SystemListActivity;->setContentView(I)V

    sget v0, Limoblife/startupmanager/R$id;->system_list:I

    invoke-virtual {p0, v0}, Limoblife/startupmanager/SystemListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Limoblife/startupmanager/SystemListActivity;->syslist:Landroid/widget/ListView;

    iget-object v0, p0, Limoblife/startupmanager/SystemListActivity;->system:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Limoblife/startupmanager/SystemListActivity;->util:Limoblife/startupmanager/ManagerUtil;

    invoke-virtual {v0}, Limoblife/startupmanager/ManagerUtil;->getBroadcast()Limoblife/startupmanager/k;

    move-result-object v0

    iput-object v0, p0, Limoblife/startupmanager/SystemListActivity;->item:Limoblife/startupmanager/k;

    iget-object v0, p0, Limoblife/startupmanager/SystemListActivity;->util:Limoblife/startupmanager/ManagerUtil;

    iget-object v1, p0, Limoblife/startupmanager/SystemListActivity;->item:Limoblife/startupmanager/k;

    iget-object v2, p0, Limoblife/startupmanager/SystemListActivity;->system:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Limoblife/startupmanager/ManagerUtil;->getSystemList(Limoblife/startupmanager/k;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Limoblife/startupmanager/SystemListActivity;->system:Ljava/util/List;

    new-instance v0, Limoblife/startupmanager/ListViewItem;

    iget-object v1, p0, Limoblife/startupmanager/SystemListActivity;->system:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Limoblife/startupmanager/ListViewItem;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v0, p0, Limoblife/startupmanager/SystemListActivity;->listViewItem:Limoblife/startupmanager/ListViewItem;

    iget-object v0, p0, Limoblife/startupmanager/SystemListActivity;->syslist:Landroid/widget/ListView;

    iget-object v1, p0, Limoblife/startupmanager/SystemListActivity;->listViewItem:Limoblife/startupmanager/ListViewItem;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Limoblife/startupmanager/ah;

    invoke-direct {v0, p0}, Limoblife/startupmanager/ah;-><init>(Limoblife/startupmanager/SystemListActivity;)V

    sput-object v0, Limoblife/startupmanager/SystemListActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p0, p1, p2}, Limoblife/startupmanager/SystemListActivity;->keyDown(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
