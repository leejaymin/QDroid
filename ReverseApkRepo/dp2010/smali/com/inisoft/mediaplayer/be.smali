.class public final Lcom/inisoft/mediaplayer/be;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/inisoft/mediaplayer/bf;


# direct methods
.method public constructor <init>(ZLandroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    new-instance v0, Lcom/inisoft/mediaplayer/bh;

    invoke-direct {v0, p0, p2}, Lcom/inisoft/mediaplayer/bh;-><init>(Lcom/inisoft/mediaplayer/be;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/be;->a:Lcom/inisoft/mediaplayer/bf;

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p2, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/inisoft/mediaplayer/bg;

    move-object v0, p2

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v1, p0, v0}, Lcom/inisoft/mediaplayer/bg;-><init>(Lcom/inisoft/mediaplayer/be;Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/be;->a:Lcom/inisoft/mediaplayer/bf;

    :cond_2
    instance-of v0, p2, Lcom/actionbarsherlock/app/SherlockListActivity;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/inisoft/mediaplayer/bg;

    check-cast p2, Lcom/actionbarsherlock/app/SherlockListActivity;

    invoke-direct {v0, p0, p2}, Lcom/inisoft/mediaplayer/bg;-><init>(Lcom/inisoft/mediaplayer/be;Lcom/actionbarsherlock/app/SherlockListActivity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/be;->a:Lcom/inisoft/mediaplayer/bf;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/be;->a:Lcom/inisoft/mediaplayer/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/be;->a:Lcom/inisoft/mediaplayer/bf;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/bf;->a()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/be;->a:Lcom/inisoft/mediaplayer/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/be;->a:Lcom/inisoft/mediaplayer/bf;

    invoke-interface {v0, p1}, Lcom/inisoft/mediaplayer/bf;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/be;->a:Lcom/inisoft/mediaplayer/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/be;->a:Lcom/inisoft/mediaplayer/bf;

    invoke-interface {v0, p1, p2}, Lcom/inisoft/mediaplayer/bf;->a(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/widget/SpinnerAdapter;Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/be;->a:Lcom/inisoft/mediaplayer/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/be;->a:Lcom/inisoft/mediaplayer/bf;

    invoke-interface {v0, p1, p2}, Lcom/inisoft/mediaplayer/bf;->a(Landroid/widget/SpinnerAdapter;Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/be;->a:Lcom/inisoft/mediaplayer/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/be;->a:Lcom/inisoft/mediaplayer/bf;

    invoke-interface {v0, p1}, Lcom/inisoft/mediaplayer/bf;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/be;->a:Lcom/inisoft/mediaplayer/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/be;->a:Lcom/inisoft/mediaplayer/bf;

    invoke-interface {v0, p1}, Lcom/inisoft/mediaplayer/bf;->a(Z)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/be;->a:Lcom/inisoft/mediaplayer/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/be;->a:Lcom/inisoft/mediaplayer/bf;

    invoke-interface {v0, p1}, Lcom/inisoft/mediaplayer/bf;->b(I)V

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/be;->a:Lcom/inisoft/mediaplayer/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/be;->a:Lcom/inisoft/mediaplayer/bf;

    invoke-interface {v0, p1}, Lcom/inisoft/mediaplayer/bf;->c(I)V

    :cond_0
    return-void
.end method
