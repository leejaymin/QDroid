.class final Lcom/mosaicture/view/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/a/a/m;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/Eula;


# direct methods
.method private constructor <init>(Lcom/mosaicture/view/Eula;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/c;->a:Lcom/mosaicture/view/Eula;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mosaicture/view/Eula;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaicture/view/c;-><init>(Lcom/mosaicture/view/Eula;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/mosaicture/view/c;->a:Lcom/mosaicture/view/Eula;

    const-string v1, "eula2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mosaicture/view/Eula;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "access_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "access_key"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-string v3, "obfu_access_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mosaicture/view/c;->a:Lcom/mosaicture/view/Eula;

    iget-object v0, v0, Lcom/mosaicture/view/Eula;->d:Lcom/a/a/a/a/a;

    iget-object v3, p0, Lcom/mosaicture/view/c;->a:Lcom/mosaicture/view/Eula;

    iget-object v3, v3, Lcom/mosaicture/view/Eula;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "obfu_access_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    iget-object v0, p0, Lcom/mosaicture/view/c;->a:Lcom/mosaicture/view/Eula;

    invoke-virtual {v0}, Lcom/mosaicture/view/Eula;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/mosaicture/view/c;->a:Lcom/mosaicture/view/Eula;

    invoke-virtual {v0}, Lcom/mosaicture/view/Eula;->a()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/mosaicture/view/c;->a:Lcom/mosaicture/view/Eula;

    invoke-virtual {v0}, Lcom/mosaicture/view/Eula;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/view/c;->a:Lcom/mosaicture/view/Eula;

    invoke-virtual {v0}, Lcom/mosaicture/view/Eula;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mosaicture/view/c;->a:Lcom/mosaicture/view/Eula;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mosaicture/view/Eula;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mosaicture/view/c;->a:Lcom/mosaicture/view/Eula;

    invoke-virtual {v0}, Lcom/mosaicture/view/Eula;->finish()V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/mosaicture/view/c;->a:Lcom/mosaicture/view/Eula;

    invoke-virtual {v0}, Lcom/mosaicture/view/Eula;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/view/c;->a:Lcom/mosaicture/view/Eula;

    invoke-virtual {v0}, Lcom/mosaicture/view/Eula;->a()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mosaicture/view/c;->a:Lcom/mosaicture/view/Eula;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/mosaicture/view/c;->a:Lcom/mosaicture/view/Eula;

    const v2, 0x7f070029

    invoke-virtual {v1, v2}, Lcom/mosaicture/view/Eula;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "OK"

    new-instance v2, Lcom/mosaicture/view/d;

    invoke-direct {v2, p0}, Lcom/mosaicture/view/d;-><init>(Lcom/mosaicture/view/c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
