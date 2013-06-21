.class public final Lcom/inisoft/mediaplayer/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/az;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/CommonListActivity;


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/CommonListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/aw;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    invoke-static {p1}, Lcom/inisoft/mediaplayer/CommonListActivity;->b(I)V

    invoke-static {}, Lcom/inisoft/mediaplayer/CommonListActivity;->g()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inisoft/mediaplayer/CommonListActivity;->b()I

    move-result v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(I)Lcom/inisoft/mediaplayer/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->h()V

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->i()V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/aw;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->o(Lcom/inisoft/mediaplayer/CommonListActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "listview_currentindex"

    invoke-static {}, Lcom/inisoft/mediaplayer/CommonListActivity;->b()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(IF)V
    .locals 0

    return-void
.end method

.method public final b(I)V
    .locals 0

    return-void
.end method
