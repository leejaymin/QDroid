.class final Lcom/inisoft/mediaplayer/gd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/ei;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/gb;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/gb;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/gd;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gd;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->f(Lcom/inisoft/mediaplayer/gb;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gd;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->g(Lcom/inisoft/mediaplayer/gb;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gd;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->b(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gd;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->b(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->n()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gd;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->h(Lcom/inisoft/mediaplayer/gb;)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gd;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->i(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gd;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->i(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gt;->d()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gd;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->j(Lcom/inisoft/mediaplayer/gb;)V

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gd;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->k(Lcom/inisoft/mediaplayer/gb;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "onCompletion"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gd;->a:Lcom/inisoft/mediaplayer/gb;

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;I)V

    return-void
.end method
