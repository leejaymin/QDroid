.class public Lorg/connectbot/HostListActivity;
.super Landroid/app/ListActivity;
.source "HostListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/HostListActivity$HostAdapter;
    }
.end annotation


# instance fields
.field protected bound:Lorg/connectbot/service/TerminalManager;

.field private connection:Landroid/content/ServiceConnection;

.field protected hostdb:Lorg/connectbot/util/HostDatabase;

.field private hosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/bean/HostBean;",
            ">;"
        }
    .end annotation
.end field

.field protected inflater:Landroid/view/LayoutInflater;

.field protected makingShortcut:Z

.field private prefs:Landroid/content/SharedPreferences;

.field private quickconnect:Landroid/widget/TextView;

.field private sortcolor:Landroid/view/MenuItem;

.field protected sortedByColor:Z

.field private sortlast:Landroid/view/MenuItem;

.field private transportSpinner:Landroid/widget/Spinner;

.field protected updateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 70
    iput-object v0, p0, Lorg/connectbot/HostListActivity;->bound:Lorg/connectbot/service/TerminalManager;

    .line 74
    iput-object v0, p0, Lorg/connectbot/HostListActivity;->inflater:Landroid/view/LayoutInflater;

    .line 76
    iput-boolean v1, p0, Lorg/connectbot/HostListActivity;->sortedByColor:Z

    .line 85
    iput-object v0, p0, Lorg/connectbot/HostListActivity;->prefs:Landroid/content/SharedPreferences;

    .line 87
    iput-boolean v1, p0, Lorg/connectbot/HostListActivity;->makingShortcut:Z

    .line 89
    new-instance v0, Lorg/connectbot/HostListActivity$1;

    invoke-direct {v0, p0}, Lorg/connectbot/HostListActivity$1;-><init>(Lorg/connectbot/HostListActivity;)V

    iput-object v0, p0, Lorg/connectbot/HostListActivity;->updateHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lorg/connectbot/HostListActivity$2;

    invoke-direct {v0, p0}, Lorg/connectbot/HostListActivity$2;-><init>(Lorg/connectbot/HostListActivity;)V

    iput-object v0, p0, Lorg/connectbot/HostListActivity;->connection:Landroid/content/ServiceConnection;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lorg/connectbot/HostListActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 383
    invoke-direct {p0}, Lorg/connectbot/HostListActivity;->startConsoleActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lorg/connectbot/HostListActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lorg/connectbot/HostListActivity;->transportSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2(Lorg/connectbot/HostListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lorg/connectbot/HostListActivity;->quickconnect:Landroid/widget/TextView;

    return-object v0
.end method

.method private startConsoleActivity()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 384
    iget-object v3, p0, Lorg/connectbot/HostListActivity;->transportSpinner:Landroid/widget/Spinner;

    .line 385
    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    .line 384
    check-cast v3, Ljava/lang/String;

    .line 385
    iget-object v6, p0, Lorg/connectbot/HostListActivity;->quickconnect:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 384
    invoke-static {v3, v6}, Lorg/connectbot/transport/TransportFactory;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 387
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_0

    .line 388
    iget-object v6, p0, Lorg/connectbot/HostListActivity;->quickconnect:Landroid/widget/TextView;

    const v7, 0x7f080099

    new-array v5, v5, [Ljava/lang/Object;

    .line 390
    iget-object v3, p0, Lorg/connectbot/HostListActivity;->transportSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 389
    invoke-static {v3, p0}, Lorg/connectbot/transport/TransportFactory;->getFormatHint(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    .line 388
    invoke-virtual {p0, v7, v5}, Lorg/connectbot/HostListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    move v3, v4

    .line 407
    :goto_0
    return v3

    .line 395
    :cond_0
    iget-object v3, p0, Lorg/connectbot/HostListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    invoke-static {v3, v2}, Lorg/connectbot/transport/TransportFactory;->findHost(Lorg/connectbot/util/HostDatabase;Landroid/net/Uri;)Lorg/connectbot/bean/HostBean;

    move-result-object v0

    .line 396
    .local v0, host:Lorg/connectbot/bean/HostBean;
    if-nez v0, :cond_1

    .line 397
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/connectbot/transport/TransportFactory;->getTransport(Ljava/lang/String;)Lorg/connectbot/transport/AbsTransport;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/connectbot/transport/AbsTransport;->createHost(Landroid/net/Uri;)Lorg/connectbot/bean/HostBean;

    move-result-object v0

    .line 398
    const-string v3, "gray"

    invoke-virtual {v0, v3}, Lorg/connectbot/bean/HostBean;->setColor(Ljava/lang/String;)V

    .line 399
    const-wide/16 v3, -0x1

    invoke-virtual {v0, v3, v4}, Lorg/connectbot/bean/HostBean;->setPubkeyId(J)V

    .line 400
    iget-object v3, p0, Lorg/connectbot/HostListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    invoke-virtual {v3, v0}, Lorg/connectbot/util/HostDatabase;->saveHost(Lorg/connectbot/bean/HostBean;)Lorg/connectbot/bean/HostBean;

    .line 403
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lorg/connectbot/ConsoleActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 405
    invoke-virtual {p0, v1}, Lorg/connectbot/HostListActivity;->startActivity(Landroid/content/Intent;)V

    move v3, v5

    .line 407
    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 139
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 140
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 142
    iget-object v1, p0, Lorg/connectbot/HostListActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "eula"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {p0}, Lorg/connectbot/HostListActivity;->finish()V

    goto :goto_0

    .line 149
    :cond_2
    if-ne p1, v2, :cond_0

    .line 150
    invoke-virtual {p0}, Lorg/connectbot/HostListActivity;->updateList()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/16 v5, 0x8

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 156
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    const v6, 0x7f030005

    invoke-virtual {p0, v6}, Lorg/connectbot/HostListActivity;->setContentView(I)V

    .line 159
    const-string v6, "%s: %s"

    new-array v7, v10, [Ljava/lang/Object;

    .line 160
    invoke-virtual {p0}, Lorg/connectbot/HostListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f08

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v4

    .line 161
    invoke-virtual {p0}, Lorg/connectbot/HostListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v3

    .line 159
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/connectbot/HostListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lorg/connectbot/HostListActivity;->prefs:Landroid/content/SharedPreferences;

    .line 166
    iget-object v6, p0, Lorg/connectbot/HostListActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v7, "eula"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 167
    .local v0, agreed:Z
    if-nez v0, :cond_0

    .line 168
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lorg/connectbot/WizardActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6, v10}, Lorg/connectbot/HostListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 171
    :cond_0
    const-string v6, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p0}, Lorg/connectbot/HostListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 172
    const-string v6, "android.intent.action.PICK"

    invoke-virtual {p0}, Lorg/connectbot/HostListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move v3, v4

    .line 171
    :cond_1
    iput-boolean v3, p0, Lorg/connectbot/HostListActivity;->makingShortcut:Z

    .line 175
    new-instance v3, Lorg/connectbot/util/HostDatabase;

    invoke-direct {v3, p0}, Lorg/connectbot/util/HostDatabase;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/connectbot/HostListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    .line 176
    invoke-virtual {p0}, Lorg/connectbot/HostListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 178
    .local v1, list:Landroid/widget/ListView;
    iget-object v3, p0, Lorg/connectbot/HostListActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "sortByColor"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/connectbot/HostListActivity;->sortedByColor:Z

    .line 182
    new-instance v3, Lorg/connectbot/HostListActivity$3;

    invoke-direct {v3, p0}, Lorg/connectbot/HostListActivity$3;-><init>(Lorg/connectbot/HostListActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 212
    invoke-virtual {p0, v1}, Lorg/connectbot/HostListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 214
    const v3, 0x7f0b001e

    invoke-virtual {p0, v3}, Lorg/connectbot/HostListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lorg/connectbot/HostListActivity;->quickconnect:Landroid/widget/TextView;

    .line 215
    iget-object v6, p0, Lorg/connectbot/HostListActivity;->quickconnect:Landroid/widget/TextView;

    iget-boolean v3, p0, Lorg/connectbot/HostListActivity;->makingShortcut:Z

    if-eqz v3, :cond_2

    move v3, v5

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v3, p0, Lorg/connectbot/HostListActivity;->quickconnect:Landroid/widget/TextView;

    new-instance v6, Lorg/connectbot/HostListActivity$4;

    invoke-direct {v6, p0}, Lorg/connectbot/HostListActivity$4;-><init>(Lorg/connectbot/HostListActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 227
    const v3, 0x7f0b001d

    invoke-virtual {p0, v3}, Lorg/connectbot/HostListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lorg/connectbot/HostListActivity;->transportSpinner:Landroid/widget/Spinner;

    .line 228
    iget-object v3, p0, Lorg/connectbot/HostListActivity;->transportSpinner:Landroid/widget/Spinner;

    iget-boolean v6, p0, Lorg/connectbot/HostListActivity;->makingShortcut:Z

    if-eqz v6, :cond_3

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 229
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 230
    const v3, 0x1090008

    invoke-static {}, Lorg/connectbot/transport/TransportFactory;->getTransportNames()[Ljava/lang/String;

    move-result-object v4

    .line 229
    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 231
    .local v2, transportSelection:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 232
    iget-object v3, p0, Lorg/connectbot/HostListActivity;->transportSpinner:Landroid/widget/Spinner;

    new-instance v4, Lorg/connectbot/HostListActivity$5;

    invoke-direct {v4, p0}, Lorg/connectbot/HostListActivity$5;-><init>(Lorg/connectbot/HostListActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 244
    iget-object v3, p0, Lorg/connectbot/HostListActivity;->transportSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 246
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lorg/connectbot/HostListActivity;->inflater:Landroid/view/LayoutInflater;

    .line 247
    return-void

    .end local v2           #transportSelection:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_2
    move v3, v4

    .line 215
    goto :goto_0

    :cond_3
    move v5, v4

    .line 228
    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v8, 0x0

    .line 317
    move-object v5, p3

    check-cast v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 318
    .local v5, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-virtual {p0}, Lorg/connectbot/HostListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget v9, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/connectbot/bean/HostBean;

    .line 320
    .local v4, host:Lorg/connectbot/bean/HostBean;
    invoke-virtual {v4}, Lorg/connectbot/bean/HostBean;->getNickname()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 323
    const v7, 0x7f0800a1

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 324
    .local v1, connect:Landroid/view/MenuItem;
    iget-object v7, p0, Lorg/connectbot/HostListActivity;->bound:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v7, v4}, Lorg/connectbot/service/TerminalManager;->getConnectedBridge(Lorg/connectbot/bean/HostBean;)Lorg/connectbot/service/TerminalBridge;

    move-result-object v0

    .line 325
    .local v0, bridge:Lorg/connectbot/service/TerminalBridge;
    if-eqz v0, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 326
    new-instance v7, Lorg/connectbot/HostListActivity$8;

    invoke-direct {v7, p0, v0}, Lorg/connectbot/HostListActivity$8;-><init>(Lorg/connectbot/HostListActivity;Lorg/connectbot/service/TerminalBridge;)V

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 334
    const v7, 0x7f0800a2

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 335
    .local v3, edit:Landroid/view/MenuItem;
    new-instance v7, Lorg/connectbot/HostListActivity$9;

    invoke-direct {v7, p0, v4}, Lorg/connectbot/HostListActivity$9;-><init>(Lorg/connectbot/HostListActivity;Lorg/connectbot/bean/HostBean;)V

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 344
    const v7, 0x7f0800a3

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 345
    .local v6, portForwards:Landroid/view/MenuItem;
    new-instance v7, Lorg/connectbot/HostListActivity$10;

    invoke-direct {v7, p0, v4}, Lorg/connectbot/HostListActivity$10;-><init>(Lorg/connectbot/HostListActivity;Lorg/connectbot/bean/HostBean;)V

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 353
    invoke-virtual {v4}, Lorg/connectbot/bean/HostBean;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/connectbot/transport/TransportFactory;->canForwardPorts(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 354
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 356
    :cond_0
    const v7, 0x7f0800a4

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 357
    .local v2, delete:Landroid/view/MenuItem;
    new-instance v7, Lorg/connectbot/HostListActivity$11;

    invoke-direct {v7, p0, v4, v0}, Lorg/connectbot/HostListActivity$11;-><init>(Lorg/connectbot/HostListActivity;Lorg/connectbot/bean/HostBean;Lorg/connectbot/service/TerminalBridge;)V

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 377
    return-void

    .end local v2           #delete:Landroid/view/MenuItem;
    .end local v3           #edit:Landroid/view/MenuItem;
    .end local v6           #portForwards:Landroid/view/MenuItem;
    :cond_1
    move v7, v8

    .line 325
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const v7, 0x1080052

    const/4 v6, 0x1

    .line 264
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 267
    iget-boolean v4, p0, Lorg/connectbot/HostListActivity;->makingShortcut:Z

    if-eqz v4, :cond_0

    .line 306
    :goto_0
    return v6

    .line 270
    :cond_0
    const v4, 0x7f08009e

    invoke-interface {p1, v4}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lorg/connectbot/HostListActivity;->sortcolor:Landroid/view/MenuItem;

    .line 271
    iget-object v4, p0, Lorg/connectbot/HostListActivity;->sortcolor:Landroid/view/MenuItem;

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 272
    iget-object v4, p0, Lorg/connectbot/HostListActivity;->sortcolor:Landroid/view/MenuItem;

    new-instance v5, Lorg/connectbot/HostListActivity$6;

    invoke-direct {v5, p0}, Lorg/connectbot/HostListActivity$6;-><init>(Lorg/connectbot/HostListActivity;)V

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 280
    const v4, 0x7f08009f

    invoke-interface {p1, v4}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lorg/connectbot/HostListActivity;->sortlast:Landroid/view/MenuItem;

    .line 281
    iget-object v4, p0, Lorg/connectbot/HostListActivity;->sortlast:Landroid/view/MenuItem;

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 282
    iget-object v4, p0, Lorg/connectbot/HostListActivity;->sortlast:Landroid/view/MenuItem;

    new-instance v5, Lorg/connectbot/HostListActivity$7;

    invoke-direct {v5, p0}, Lorg/connectbot/HostListActivity$7;-><init>(Lorg/connectbot/HostListActivity;)V

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 290
    const v4, 0x7f08009d

    invoke-interface {p1, v4}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 291
    .local v2, keys:Landroid/view/MenuItem;
    const v4, 0x108002f

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 292
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lorg/connectbot/PubkeyListActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 294
    const-string v4, "Colors"

    invoke-interface {p1, v4}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 295
    .local v0, colors:Landroid/view/MenuItem;
    const v4, 0x1080053

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 296
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lorg/connectbot/ColorsActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 298
    const v4, 0x7f0800a0

    invoke-interface {p1, v4}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 299
    .local v3, settings:Landroid/view/MenuItem;
    const v4, 0x1080049

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 300
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lorg/connectbot/SettingsActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 302
    const v4, 0x7f080009

    invoke-interface {p1, v4}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 303
    .local v1, help:Landroid/view/MenuItem;
    const v4, 0x1080040

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 304
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lorg/connectbot/HelpActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 251
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 254
    iget-boolean v0, p0, Lorg/connectbot/HostListActivity;->makingShortcut:Z

    if-eqz v0, :cond_0

    .line 259
    :goto_0
    return v1

    .line 256
    :cond_0
    iget-object v2, p0, Lorg/connectbot/HostListActivity;->sortcolor:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lorg/connectbot/HostListActivity;->sortedByColor:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 257
    iget-object v0, p0, Lorg/connectbot/HostListActivity;->sortlast:Landroid/view/MenuItem;

    iget-boolean v2, p0, Lorg/connectbot/HostListActivity;->sortedByColor:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 256
    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 135
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/connectbot/service/TerminalManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/connectbot/HostListActivity;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/connectbot/HostListActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 117
    iget-object v0, p0, Lorg/connectbot/HostListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lorg/connectbot/util/HostDatabase;

    invoke-direct {v0, p0}, Lorg/connectbot/util/HostDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/connectbot/HostListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    .line 119
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 124
    iget-object v0, p0, Lorg/connectbot/HostListActivity;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lorg/connectbot/HostListActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 126
    iget-object v0, p0, Lorg/connectbot/HostListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/connectbot/HostListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    invoke-virtual {v0}, Lorg/connectbot/util/HostDatabase;->close()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/connectbot/HostListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    .line 130
    :cond_0
    return-void
.end method

.method protected updateList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 411
    iget-object v3, p0, Lorg/connectbot/HostListActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "sortByColor"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iget-boolean v4, p0, Lorg/connectbot/HostListActivity;->sortedByColor:Z

    if-eq v3, v4, :cond_0

    .line 412
    iget-object v3, p0, Lorg/connectbot/HostListActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 413
    .local v2, edit:Landroid/content/SharedPreferences$Editor;
    const-string v3, "sortByColor"

    iget-boolean v4, p0, Lorg/connectbot/HostListActivity;->sortedByColor:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 414
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 417
    .end local v2           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v3, p0, Lorg/connectbot/HostListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    if-nez v3, :cond_1

    .line 418
    new-instance v3, Lorg/connectbot/util/HostDatabase;

    invoke-direct {v3, p0}, Lorg/connectbot/util/HostDatabase;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/connectbot/HostListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    .line 420
    :cond_1
    iget-object v3, p0, Lorg/connectbot/HostListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    iget-boolean v4, p0, Lorg/connectbot/HostListActivity;->sortedByColor:Z

    invoke-virtual {v3, v4}, Lorg/connectbot/util/HostDatabase;->getHosts(Z)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/connectbot/HostListActivity;->hosts:Ljava/util/List;

    .line 423
    iget-object v3, p0, Lorg/connectbot/HostListActivity;->bound:Lorg/connectbot/service/TerminalManager;

    if-eqz v3, :cond_3

    .line 424
    iget-object v3, p0, Lorg/connectbot/HostListActivity;->bound:Lorg/connectbot/service/TerminalManager;

    iget-object v3, v3, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 430
    :cond_3
    new-instance v0, Lorg/connectbot/HostListActivity$HostAdapter;

    iget-object v3, p0, Lorg/connectbot/HostListActivity;->hosts:Ljava/util/List;

    iget-object v4, p0, Lorg/connectbot/HostListActivity;->bound:Lorg/connectbot/service/TerminalManager;

    invoke-direct {v0, p0, p0, v3, v4}, Lorg/connectbot/HostListActivity$HostAdapter;-><init>(Lorg/connectbot/HostListActivity;Landroid/content/Context;Ljava/util/List;Lorg/connectbot/service/TerminalManager;)V

    .line 432
    .local v0, adapter:Lorg/connectbot/HostListActivity$HostAdapter;
    invoke-virtual {p0, v0}, Lorg/connectbot/HostListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 433
    return-void

    .line 424
    .end local v0           #adapter:Lorg/connectbot/HostListActivity$HostAdapter;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/connectbot/service/TerminalBridge;

    .line 425
    .local v1, bridge:Lorg/connectbot/service/TerminalBridge;
    iget-object v4, p0, Lorg/connectbot/HostListActivity;->hosts:Ljava/util/List;

    iget-object v5, v1, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 426
    iget-object v4, p0, Lorg/connectbot/HostListActivity;->hosts:Ljava/util/List;

    iget-object v5, v1, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-interface {v4, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method
