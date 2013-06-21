.class final Lcom/inisoft/mediaplayer/b/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/b/n;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/b/n;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/v;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/v;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/b/n;->d(Lcom/inisoft/mediaplayer/b/n;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/v;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/b/n;->d(Lcom/inisoft/mediaplayer/b/n;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DICE_SETTINGS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "root_folder"

    const-string v2, "/sdcard"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/v;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/b/n;->d(Lcom/inisoft/mediaplayer/b/n;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "Font @ "

    sget-object v3, Lcom/inisoft/mediaplayer/cg;->b:Lcom/inisoft/mediaplayer/cg;

    iget-object v4, p0, Lcom/inisoft/mediaplayer/b/v;->a:Lcom/inisoft/mediaplayer/b/n;

    iget-object v4, v4, Lcom/inisoft/mediaplayer/b/n;->b:Lcom/inisoft/mediaplayer/ci;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/inisoft/mediaplayer/by;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/inisoft/mediaplayer/cg;Lcom/inisoft/mediaplayer/ci;)V

    :goto_0
    return-void

    :cond_0
    array-length v1, v0

    if-ne v1, p3, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/v;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v0, p3}, Lcom/inisoft/mediaplayer/b/n;->a(Lcom/inisoft/mediaplayer/b/n;I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/v;->a:Lcom/inisoft/mediaplayer/b/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/b/n;->c(Lcom/inisoft/mediaplayer/b/n;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/v;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/b/n;->j(Lcom/inisoft/mediaplayer/b/n;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/v;->a:Lcom/inisoft/mediaplayer/b/n;

    iget-object v1, v1, Lcom/inisoft/mediaplayer/b/n;->a:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/v;->a:Lcom/inisoft/mediaplayer/b/n;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/v;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/b/n;->a(Lcom/inisoft/mediaplayer/b/n;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inisoft/mediaplayer/b/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/v;->a:Lcom/inisoft/mediaplayer/b/n;

    aget-object v0, v0, p3

    invoke-static {v1, v0}, Lcom/inisoft/mediaplayer/b/n;->a(Lcom/inisoft/mediaplayer/b/n;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/v;->a:Lcom/inisoft/mediaplayer/b/n;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/v;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/b/n;->a(Lcom/inisoft/mediaplayer/b/n;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/b/n;->b(Lcom/inisoft/mediaplayer/b/n;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/v;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v0, p3}, Lcom/inisoft/mediaplayer/b/n;->a(Lcom/inisoft/mediaplayer/b/n;I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/v;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v0, v3}, Lcom/inisoft/mediaplayer/b/n;->c(Lcom/inisoft/mediaplayer/b/n;Z)V

    goto :goto_0
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
