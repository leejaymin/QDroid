.class public final Lcom/inisoft/mediaplayer/bg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/bf;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/be;

.field private b:Lcom/actionbarsherlock/app/ActionBar;


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/be;Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/bg;->a:Lcom/inisoft/mediaplayer/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/bg;->b:Lcom/actionbarsherlock/app/ActionBar;

    return-void
.end method

.method public constructor <init>(Lcom/inisoft/mediaplayer/be;Lcom/actionbarsherlock/app/SherlockListActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/bg;->a:Lcom/inisoft/mediaplayer/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/actionbarsherlock/app/SherlockListActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/bg;->b:Lcom/actionbarsherlock/app/ActionBar;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bg;->b:Lcom/actionbarsherlock/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bg;->b:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bg;->b:Lcom/actionbarsherlock/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bg;->b:Lcom/actionbarsherlock/app/ActionBar;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayOptions(II)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/widget/SpinnerAdapter;Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bg;->b:Lcom/actionbarsherlock/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bg;->b:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bg;->b:Lcom/actionbarsherlock/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bg;->b:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bg;->b:Lcom/actionbarsherlock/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bg;->b:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bg;->b:Lcom/actionbarsherlock/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bg;->b:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bg;->b:Lcom/actionbarsherlock/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bg;->b:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    :cond_0
    return-void
.end method
