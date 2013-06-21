.class final Lcom/inisoft/mediaplayer/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/CommonListActivity;

.field private final synthetic b:Landroid/widget/CheckBox;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/CommonListActivity;Landroid/widget/CheckBox;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/s;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/s;->b:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/inisoft/mediaplayer/s;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/inisoft/mediaplayer/s;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/s;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/inisoft/mediaplayer/s;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    const-string v4, "DICE_SETTINGS"

    invoke-virtual {v3, v4, v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "checkforexit"

    if-eqz v2, :cond_1

    :goto_0
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/s;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->y(Lcom/inisoft/mediaplayer/CommonListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/s;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "@last_folder"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/s;->d:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/s;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->moveTaskToBack(Z)Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/s;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->finish()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
