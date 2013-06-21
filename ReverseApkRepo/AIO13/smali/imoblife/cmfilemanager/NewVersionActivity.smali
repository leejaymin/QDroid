.class public Limoblife/cmfilemanager/NewVersionActivity;
.super Limoblife/cmfilemanager/EulaActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Limoblife/cmfilemanager/EulaActivity;-><init>()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Limoblife/a/c;->a(Landroid/content/Context;)I

    move-result v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "org.openintents.cmfilemanager.version_number_check"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Limoblife/cmfilemanager/NewVersionActivity;->b()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Limoblife/cmfilemanager/EulaActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Limoblife/a/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget v1, Limoblife/cmfilemanager/ao;->ad:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Limoblife/cmfilemanager/NewVersionActivity;->f:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Limoblife/cmfilemanager/NewVersionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Limoblife/cmfilemanager/ao;->af:I

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Limoblife/cmfilemanager/NewVersionActivity;->f:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Limoblife/cmfilemanager/NewVersionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Limoblife/cmfilemanager/ao;->ag:I

    invoke-virtual {p0, v2}, Limoblife/cmfilemanager/NewVersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Limoblife/cmfilemanager/NewVersionActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/cmfilemanager/NewVersionActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/cmfilemanager/NewVersionActivity;->i:Landroid/widget/TextView;

    sget v1, Limoblife/cmfilemanager/an;->b:I

    invoke-virtual {p0, v1, v4}, Limoblife/cmfilemanager/NewVersionActivity;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/cmfilemanager/NewVersionActivity;->a:Landroid/widget/Button;

    sget v1, Limoblife/cmfilemanager/ao;->ae:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Limoblife/cmfilemanager/NewVersionActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    sget v0, Limoblife/cmfilemanager/al;->x:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/NewVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
