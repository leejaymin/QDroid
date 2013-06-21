.class public Lcom/ui/LapseIt/list/ListView;
.super Landroid/app/ExpandableListActivity;
.source "ListView.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# instance fields
.field dataObserver:Landroid/database/DataSetObserver;

.field private headerText:Landroid/widget/TextView;

.field private listAction:Lcom/ui/LapseIt/list/ListQuickAction;

.field private listAdapter:Lcom/ui/LapseIt/list/ListTreeAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 235
    new-instance v0, Lcom/ui/LapseIt/list/ListView$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/list/ListView$1;-><init>(Lcom/ui/LapseIt/list/ListView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/list/ListView;->dataObserver:Landroid/database/DataSetObserver;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/list/ListView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ui/LapseIt/list/ListView;->headerText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getProjectsList(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "query"

    .prologue
    const/4 v4, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 181
    .local v0, cResolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 182
    sget-object v1, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 183
    sget-object v2, Lcom/ui/LapseIt/list/ListTreeAdapter;->projection:[Ljava/lang/String;

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "title LIKE \'%"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 186
    const-string v5, "_id desc"

    .line 182
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 195
    .local v6, cur:Landroid/database/Cursor;
    :goto_0
    invoke-virtual {p0, v6}, Lcom/ui/LapseIt/list/ListView;->startManagingCursor(Landroid/database/Cursor;)V

    .line 197
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListView;->headerText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :goto_1
    return-object v6

    .line 188
    .end local v6           #cur:Landroid/database/Cursor;
    :cond_0
    sget-object v1, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 189
    sget-object v2, Lcom/ui/LapseIt/list/ListTreeAdapter;->projection:[Ljava/lang/String;

    .line 192
    const-string v5, "_id desc"

    move-object v3, v4

    .line 188
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cur:Landroid/database/Cursor;
    goto :goto_0

    .line 199
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 201
    .local v7, headerTitle:Ljava/lang/String;
    const-string v1, "XXX"

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 202
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListView;->headerText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 204
    .end local v7           #headerTitle:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 205
    .restart local v7       #headerTitle:Ljava/lang/String;
    const-string v1, "XXX"

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 206
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListView;->headerText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, query:Ljava/lang/String;
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListView;->headerText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Searching for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :goto_0
    new-instance v1, Lcom/ui/LapseIt/list/ListTreeAdapter;

    invoke-direct {p0, v0}, Lcom/ui/LapseIt/list/ListView;->getProjectsList(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const v3, 0x7f03000f

    const v4, 0x7f03000e

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/ui/LapseIt/list/ListTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;II)V

    iput-object v1, p0, Lcom/ui/LapseIt/list/ListView;->listAdapter:Lcom/ui/LapseIt/list/ListTreeAdapter;

    .line 223
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListView;->listAdapter:Lcom/ui/LapseIt/list/ListTreeAdapter;

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/list/ListView;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 225
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/list/ListView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 227
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 228
    return-void

    .line 219
    .end local v0           #query:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    .restart local v0       #query:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 8
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 167
    iget-object v0, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    invoke-virtual {v0, v7}, Lcom/ui/LapseIt/list/ListQuickAction;->dismissWithAnimation(Z)V

    .line 170
    :cond_0
    new-instance v0, Lcom/ui/LapseIt/list/ListQuickAction;

    move-object v1, p2

    move-object v2, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/ui/LapseIt/list/ListQuickAction;-><init>(Landroid/view/View;Lcom/ui/LapseIt/list/ListView;IIZ)V

    iput-object v0, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    .line 171
    int-to-long v0, p4

    invoke-static {p0, p3, v0, v1}, Lcom/ui/LapseIt/list/ListTreeAdapter;->getChildItemValues(Landroid/content/Context;IJ)Landroid/os/Bundle;

    move-result-object v6

    .line 172
    .local v6, extras:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    invoke-virtual {v0, p2, v6, v3}, Lcom/ui/LapseIt/list/ListQuickAction;->showAsQuickAction(Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 173
    return v7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 60
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 62
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/list/ListView;->setContentView(I)V

    .line 64
    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/list/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ui/LapseIt/list/ListView;->headerText:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ui/LapseIt/list/ListView;->handleIntent(Landroid/content/Intent;)V

    .line 68
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    new-instance v1, Lcom/ui/LapseIt/list/ListView$2;

    invoke-direct {v1, p0}, Lcom/ui/LapseIt/list/ListView$2;-><init>(Lcom/ui/LapseIt/list/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setFocusable(Z)V

    .line 84
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 285
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 8
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 155
    iget-object v0, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    invoke-virtual {v0, v7}, Lcom/ui/LapseIt/list/ListQuickAction;->dismissWithAnimation(Z)V

    .line 158
    :cond_0
    new-instance v0, Lcom/ui/LapseIt/list/ListQuickAction;

    move-object v1, p2

    move-object v2, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/ui/LapseIt/list/ListQuickAction;-><init>(Landroid/view/View;Lcom/ui/LapseIt/list/ListView;IIZ)V

    iput-object v0, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    .line 159
    invoke-static {p0, p4, p5}, Lcom/ui/LapseIt/list/ListTreeAdapter;->getGroupItemValues(Landroid/content/Context;J)Landroid/os/Bundle;

    move-result-object v6

    .line 160
    .local v6, extras:Landroid/os/Bundle;
    sget-object v0, Lcom/ui/LapseIt/list/ListTreeAdapter;->GROUP_POSITION:Ljava/lang/String;

    invoke-virtual {v6, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    iget-object v0, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    invoke-virtual {v0, p2, v6, v7}, Lcom/ui/LapseIt/list/ListQuickAction;->showAsQuickAction(Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 162
    return v7
.end method

.method public onGroupCollapse(I)V
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/list/ListQuickAction;->dismissWithAnimation(Z)V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    .line 141
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onGroupCollapse(I)V

    .line 142
    return-void
.end method

.method public onGroupExpand(I)V
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/list/ListQuickAction;->dismissWithAnimation(Z)V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    .line 150
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onGroupExpand(I)V

    .line 151
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 305
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    invoke-virtual {v1, v0}, Lcom/ui/LapseIt/list/ListQuickAction;->dismissWithAnimation(Z)V

    .line 308
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    .line 312
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ExpandableListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/ui/LapseIt/list/ListView;->handleIntent(Landroid/content/Intent;)V

    .line 233
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 291
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 292
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 300
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    .end local v0           #i:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onPause()V

    .line 111
    iget-object v0, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/list/ListQuickAction;->dismissWithAnimation(Z)V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    .line 115
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter "menu"

    .prologue
    const v10, 0x7f0800bc

    const v9, 0x7f0800bb

    .line 261
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 263
    .local v0, collapsedGroups:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 269
    const v3, 0x7f0b00c6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 271
    .local v2, menuItem:Landroid/view/MenuItem;
    int-to-double v3, v0

    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v7, 0x4000

    div-double/2addr v5, v7

    cmpg-double v3, v3, v5

    if-gez v3, :cond_2

    .line 272
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 273
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 279
    :goto_1
    const/4 v3, 0x1

    return v3

    .line 264
    .end local v2           #menuItem:Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 265
    add-int/lit8 v0, v0, -0x1

    .line 263
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    .restart local v2       #menuItem:Landroid/view/MenuItem;
    :cond_2
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 276
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onResume()V

    .line 90
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 92
    sput-boolean v2, Lui/utils/ImageUtils;->flipX:Z

    .line 93
    sput-boolean v2, Lui/utils/ImageUtils;->flipY:Z

    .line 95
    sput v2, Lcom/ui/LapseIt/project/TrimWidget;->startTrimmedFrame:I

    .line 96
    sput v2, Lcom/ui/LapseIt/project/TrimWidget;->endTrimmedFrame:I

    .line 98
    invoke-static {v2}, Lcom/ui/LapseIt/project/TrimWidget;->setTrimEnabled(Z)V

    .line 100
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 104
    invoke-static {v2}, Lcom/ui/LapseIt/project/ProjectPreview;->setCurrentFrame(I)V

    .line 105
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListView;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 125
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/list/ListQuickAction;->dismissWithAnimation(Z)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ui/LapseIt/list/ListView;->listAction:Lcom/ui/LapseIt/list/ListQuickAction;

    .line 133
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onStart()V

    .line 52
    invoke-static {}, Lcom/ui/LapseIt/Main;->getFlurryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onStop()V

    .line 121
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 122
    return-void
.end method
