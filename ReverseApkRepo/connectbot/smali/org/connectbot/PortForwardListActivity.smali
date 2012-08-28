.class public Lorg/connectbot/PortForwardListActivity;
.super Landroid/app/ListActivity;
.source "PortForwardListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/PortForwardListActivity$PortForwardAdapter;
    }
.end annotation


# instance fields
.field private connection:Landroid/content/ServiceConnection;

.field private host:Lorg/connectbot/bean/HostBean;

.field protected hostBridge:Lorg/connectbot/service/TerminalBridge;

.field protected hostdb:Lorg/connectbot/util/HostDatabase;

.field protected inflater:Landroid/view/LayoutInflater;

.field private portForwards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/bean/PortForwardBean;",
            ">;"
        }
    .end annotation
.end field

.field protected updateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 75
    iput-object v0, p0, Lorg/connectbot/PortForwardListActivity;->connection:Landroid/content/ServiceConnection;

    .line 76
    iput-object v0, p0, Lorg/connectbot/PortForwardListActivity;->hostBridge:Lorg/connectbot/service/TerminalBridge;

    .line 77
    iput-object v0, p0, Lorg/connectbot/PortForwardListActivity;->inflater:Landroid/view/LayoutInflater;

    .line 364
    new-instance v0, Lorg/connectbot/PortForwardListActivity$1;

    invoke-direct {v0, p0}, Lorg/connectbot/PortForwardListActivity$1;-><init>(Lorg/connectbot/PortForwardListActivity;)V

    iput-object v0, p0, Lorg/connectbot/PortForwardListActivity;->updateHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lorg/connectbot/PortForwardListActivity;)Lorg/connectbot/bean/HostBean;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lorg/connectbot/PortForwardListActivity;->host:Lorg/connectbot/bean/HostBean;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const v12, 0x7f080007

    const/high16 v11, 0x7f08

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 105
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lorg/connectbot/PortForwardListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.TITLE"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 109
    .local v0, hostId:J
    const v4, 0x7f030006

    invoke-virtual {p0, v4}, Lorg/connectbot/PortForwardListActivity;->setContentView(I)V

    .line 112
    new-instance v4, Lorg/connectbot/util/HostDatabase;

    invoke-direct {v4, p0}, Lorg/connectbot/util/HostDatabase;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/connectbot/PortForwardListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    .line 113
    iget-object v4, p0, Lorg/connectbot/PortForwardListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    invoke-virtual {v4, v0, v1}, Lorg/connectbot/util/HostDatabase;->findHostById(J)Lorg/connectbot/bean/HostBean;

    move-result-object v4

    iput-object v4, p0, Lorg/connectbot/PortForwardListActivity;->host:Lorg/connectbot/bean/HostBean;

    .line 116
    iget-object v4, p0, Lorg/connectbot/PortForwardListActivity;->host:Lorg/connectbot/bean/HostBean;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/connectbot/PortForwardListActivity;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v4}, Lorg/connectbot/bean/HostBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, nickname:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lorg/connectbot/PortForwardListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 119
    .local v3, resources:Landroid/content/res/Resources;
    if-eqz v2, :cond_1

    .line 120
    const-string v4, "%s: %s (%s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 121
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v8

    .line 122
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v9

    .line 123
    aput-object v2, v5, v10

    .line 120
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/connectbot/PortForwardListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    :goto_1
    new-instance v4, Lorg/connectbot/PortForwardListActivity$2;

    invoke-direct {v4, p0}, Lorg/connectbot/PortForwardListActivity$2;-><init>(Lorg/connectbot/PortForwardListActivity;)V

    iput-object v4, p0, Lorg/connectbot/PortForwardListActivity;->connection:Landroid/content/ServiceConnection;

    .line 144
    invoke-virtual {p0}, Lorg/connectbot/PortForwardListActivity;->updateList()V

    .line 146
    invoke-virtual {p0}, Lorg/connectbot/PortForwardListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/connectbot/PortForwardListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 148
    invoke-virtual {p0}, Lorg/connectbot/PortForwardListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    new-instance v5, Lorg/connectbot/PortForwardListActivity$3;

    invoke-direct {v5, p0}, Lorg/connectbot/PortForwardListActivity$3;-><init>(Lorg/connectbot/PortForwardListActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 166
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lorg/connectbot/PortForwardListActivity;->inflater:Landroid/view/LayoutInflater;

    .line 167
    return-void

    .line 116
    .end local v2           #nickname:Ljava/lang/String;
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 125
    .restart local v2       #nickname:Ljava/lang/String;
    .restart local v3       #resources:Landroid/content/res/Resources;
    :cond_1
    const-string v4, "%s: %s"

    new-array v5, v10, [Ljava/lang/Object;

    .line 126
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v8

    .line 127
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v9

    .line 125
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/connectbot/PortForwardListActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 245
    move-object v2, p3

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 246
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-virtual {p0}, Lorg/connectbot/PortForwardListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/connectbot/bean/PortForwardBean;

    .line 248
    .local v3, pfb:Lorg/connectbot/bean/PortForwardBean;
    invoke-virtual {v3}, Lorg/connectbot/bean/PortForwardBean;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 250
    const v4, 0x7f080028

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 251
    .local v1, edit:Landroid/view/MenuItem;
    new-instance v4, Lorg/connectbot/PortForwardListActivity$5;

    invoke-direct {v4, p0, v3}, Lorg/connectbot/PortForwardListActivity$5;-><init>(Lorg/connectbot/PortForwardListActivity;Lorg/connectbot/bean/PortForwardBean;)V

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 336
    const v4, 0x7f080029

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 337
    .local v0, delete:Landroid/view/MenuItem;
    new-instance v4, Lorg/connectbot/PortForwardListActivity$6;

    invoke-direct {v4, p0, v3}, Lorg/connectbot/PortForwardListActivity$6;-><init>(Lorg/connectbot/PortForwardListActivity;Lorg/connectbot/bean/PortForwardBean;)V

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 362
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 173
    const v1, 0x7f080097

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 174
    .local v0, add:Landroid/view/MenuItem;
    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 175
    new-instance v1, Lorg/connectbot/PortForwardListActivity$4;

    invoke-direct {v1, p0}, Lorg/connectbot/PortForwardListActivity$4;-><init>(Lorg/connectbot/PortForwardListActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 239
    const/4 v1, 0x1

    return v1
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/connectbot/service/TerminalManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/connectbot/PortForwardListActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 87
    iget-object v0, p0, Lorg/connectbot/PortForwardListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lorg/connectbot/util/HostDatabase;

    invoke-direct {v0, p0}, Lorg/connectbot/util/HostDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/connectbot/PortForwardListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    .line 89
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 95
    iget-object v0, p0, Lorg/connectbot/PortForwardListActivity;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lorg/connectbot/PortForwardListActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 97
    iget-object v0, p0, Lorg/connectbot/PortForwardListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/connectbot/PortForwardListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    invoke-virtual {v0}, Lorg/connectbot/util/HostDatabase;->close()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/connectbot/PortForwardListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    .line 101
    :cond_0
    return-void
.end method

.method protected updateList()V
    .locals 3

    .prologue
    .line 372
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity;->hostBridge:Lorg/connectbot/service/TerminalBridge;

    if-eqz v1, :cond_1

    .line 373
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity;->hostBridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v1}, Lorg/connectbot/service/TerminalBridge;->getPortForwards()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/PortForwardListActivity;->portForwards:Ljava/util/List;

    .line 379
    :goto_0
    new-instance v0, Lorg/connectbot/PortForwardListActivity$PortForwardAdapter;

    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity;->portForwards:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lorg/connectbot/PortForwardListActivity$PortForwardAdapter;-><init>(Lorg/connectbot/PortForwardListActivity;Landroid/content/Context;Ljava/util/List;)V

    .line 381
    .local v0, adapter:Lorg/connectbot/PortForwardListActivity$PortForwardAdapter;
    invoke-virtual {p0, v0}, Lorg/connectbot/PortForwardListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 382
    .end local v0           #adapter:Lorg/connectbot/PortForwardListActivity$PortForwardAdapter;
    :cond_0
    return-void

    .line 375
    :cond_1
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    iget-object v2, p0, Lorg/connectbot/PortForwardListActivity;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v1, v2}, Lorg/connectbot/util/HostDatabase;->getPortForwardsForHost(Lorg/connectbot/bean/HostBean;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/PortForwardListActivity;->portForwards:Ljava/util/List;

    goto :goto_0
.end method
