.class final Lcom/inisoft/mediaplayer/hy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/VideoView;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/VideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/hy;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hy;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->r(Lcom/inisoft/mediaplayer/VideoView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nextPlay"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hy;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->h(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hy;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->h(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/fr;->c:Lcom/inisoft/mediaplayer/fr;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/hy;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->n(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ei;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hy;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->n(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ei;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/hy;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->g(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/ei;->a()V

    :cond_1
    return-void
.end method
