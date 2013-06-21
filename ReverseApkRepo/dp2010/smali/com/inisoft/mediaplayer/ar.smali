.class public final Lcom/inisoft/mediaplayer/ar;
.super Landroid/support/v4/app/ListFragment;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ar;->a:Landroid/widget/TextView;

    return-void
.end method

.method static a(I)Lcom/inisoft/mediaplayer/ar;
    .locals 3

    new-instance v0, Lcom/inisoft/mediaplayer/ar;

    invoke-direct {v0}, Lcom/inisoft/mediaplayer/ar;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "num"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/ar;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/inisoft/mediaplayer/CommonListActivity;->g()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v0, p0, Lcom/inisoft/mediaplayer/ar;->b:I

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(I)Lcom/inisoft/mediaplayer/e;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/inisoft/mediaplayer/e;->a(Lcom/inisoft/mediaplayer/ar;)V

    invoke-static {}, Lcom/inisoft/mediaplayer/CommonListActivity;->e()I

    move-result v1

    if-gez v1, :cond_1

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->d()V

    :cond_1
    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->h()V

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->i()V

    :cond_2
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/ar;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/ar;->registerForContextMenu(Landroid/view/View;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/inisoft/mediaplayer/CommonListActivity;->d()Lcom/inisoft/mediaplayer/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/inisoft/mediaplayer/CommonListActivity;->d()Lcom/inisoft/mediaplayer/e;

    move-result-object v0

    goto :goto_0
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    invoke-static {}, Lcom/inisoft/mediaplayer/CommonListActivity;->b()I

    move-result v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(I)Lcom/inisoft/mediaplayer/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/e;->a(Landroid/view/MenuItem;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/ar;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/ar;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "num"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/inisoft/mediaplayer/ar;->b:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/ListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :try_start_0
    invoke-static {}, Lcom/inisoft/mediaplayer/CommonListActivity;->b()I

    move-result v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(I)Lcom/inisoft/mediaplayer/e;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/inisoft/mediaplayer/e;->a(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f030034

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {}, Lcom/inisoft/mediaplayer/CommonListActivity;->g()Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/inisoft/mediaplayer/ar;->b:I

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(I)Lcom/inisoft/mediaplayer/e;

    move-result-object v0

    :cond_0
    iget-object v0, v0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const-string v2, "DICE_SETTINGS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "theme"

    const-string v3, "Light"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Light"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-object v1

    :cond_1
    const/high16 v0, -0x100

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0xbbbbbc

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    goto :goto_0
.end method

.method public final onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/support/v4/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    :try_start_0
    invoke-static {}, Lcom/inisoft/mediaplayer/CommonListActivity;->b()I

    move-result v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(I)Lcom/inisoft/mediaplayer/e;

    move-result-object v0

    invoke-static {}, Lcom/inisoft/mediaplayer/CommonListActivity;->c()I

    invoke-virtual {v0, p3}, Lcom/inisoft/mediaplayer/e;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
