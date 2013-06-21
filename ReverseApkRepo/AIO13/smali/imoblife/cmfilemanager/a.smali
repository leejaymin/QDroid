.class public final Limoblife/cmfilemanager/a;
.super Limoblife/cmfilemanager/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    sget v2, Limoblife/cmfilemanager/ao;->O:I

    sget v3, Limoblife/cmfilemanager/ao;->N:I

    sget v4, Limoblife/cmfilemanager/ao;->P:I

    sget v5, Limoblife/cmfilemanager/ao;->Q:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Limoblife/cmfilemanager/e;-><init>(Landroid/content/Context;IIII)V

    iget-object v0, p0, Limoblife/cmfilemanager/a;->a:Landroid/content/Context;

    invoke-static {v0}, Limoblife/a/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Limoblife/cmfilemanager/a;->a:Landroid/content/Context;

    invoke-static {v1}, Limoblife/a/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Limoblife/cmfilemanager/a;->a:Landroid/content/Context;

    sget v3, Limoblife/cmfilemanager/ao;->ad:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Limoblife/cmfilemanager/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/a;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.openintents.action.SHOW_ABOUT_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "org.openintents.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Limoblife/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method
