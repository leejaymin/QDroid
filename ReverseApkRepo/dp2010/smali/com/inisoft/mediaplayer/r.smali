.class final Lcom/inisoft/mediaplayer/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/CommonListActivity;

.field private final synthetic b:Landroid/widget/CheckBox;

.field private final synthetic c:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/CommonListActivity;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/r;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/r;->b:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/inisoft/mediaplayer/r;->c:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/r;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/r;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/inisoft/mediaplayer/CommonListActivity;->a:Z

    iget-object v1, p0, Lcom/inisoft/mediaplayer/r;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/r;->c:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/inisoft/mediaplayer/CommonListActivity;->b:Z

    iget-object v1, p0, Lcom/inisoft/mediaplayer/r;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    const-string v2, "DICE_SETTINGS"

    invoke-virtual {v1, v2, v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "Sort_Type"

    iget-object v3, p0, Lcom/inisoft/mediaplayer/r;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v3}, Lcom/inisoft/mediaplayer/CommonListActivity;->x(Lcom/inisoft/mediaplayer/CommonListActivity;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Sort_Order"

    iget-object v3, p0, Lcom/inisoft/mediaplayer/r;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    iget-boolean v3, v3, Lcom/inisoft/mediaplayer/CommonListActivity;->a:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Sort_ShowFolder"

    iget-object v3, p0, Lcom/inisoft/mediaplayer/r;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    iget-boolean v3, v3, Lcom/inisoft/mediaplayer/CommonListActivity;->b:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v1, v0

    :goto_0
    invoke-static {}, Lcom/inisoft/mediaplayer/CommonListActivity;->c()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    invoke-static {}, Lcom/inisoft/mediaplayer/CommonListActivity;->g()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/e;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->k()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
