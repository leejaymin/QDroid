.class final Lcom/inisoft/mediaplayer/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/CommonListActivity;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/CommonListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ap;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(IJ)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ap;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inisoft/mediaplayer/CommonListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BUCKET_POSITION"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/inisoft/mediaplayer/CommonListActivity;->b()I

    move-result v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(I)Lcom/inisoft/mediaplayer/e;

    move-result-object v0

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/e;->a(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->d()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/inisoft/mediaplayer/ap;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->d(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/inisoft/mediaplayer/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/a;->b()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/e;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
