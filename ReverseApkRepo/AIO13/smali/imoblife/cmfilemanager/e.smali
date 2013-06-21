.class public Limoblife/cmfilemanager/e;
.super Landroid/app/AlertDialog;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Limoblife/cmfilemanager/e;->a:Landroid/content/Context;

    iget-object v0, p0, Limoblife/cmfilemanager/e;->a:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Limoblife/cmfilemanager/e;->a:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Limoblife/cmfilemanager/e;->a:Landroid/content/Context;

    invoke-virtual {v2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Limoblife/cmfilemanager/e;->a:Landroid/content/Context;

    invoke-virtual {v3, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Limoblife/cmfilemanager/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Limoblife/cmfilemanager/e;->a:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4, p5}, Limoblife/cmfilemanager/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Limoblife/cmfilemanager/e;

    iget-object v0, v0, Limoblife/cmfilemanager/e;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Limoblife/cmfilemanager/ai;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const v1, 0x1020019

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-object p2, p0, Limoblife/cmfilemanager/e;->b:Ljava/lang/String;

    iput-object p3, p0, Limoblife/cmfilemanager/e;->c:Ljava/lang/String;

    iput-object p4, p0, Limoblife/cmfilemanager/e;->d:Ljava/lang/String;

    iget-object v0, p0, Limoblife/cmfilemanager/e;->a:Landroid/content/Context;

    iget-object v1, p0, Limoblife/cmfilemanager/e;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Limoblife/cmfilemanager/ai;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Limoblife/cmfilemanager/e;->f:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Limoblife/cmfilemanager/e;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Limoblife/cmfilemanager/e;->a:Landroid/content/Context;

    sget v2, Limoblife/cmfilemanager/ao;->S:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Limoblife/cmfilemanager/e;->b:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Limoblife/cmfilemanager/e;->e:Ljava/lang/String;

    iget-object v0, p0, Limoblife/cmfilemanager/e;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/e;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/cmfilemanager/e;->a:Landroid/content/Context;

    sget v1, Limoblife/cmfilemanager/ao;->U:I

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Limoblife/cmfilemanager/e;->b:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/e;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/cmfilemanager/e;->a:Landroid/content/Context;

    sget v1, Limoblife/cmfilemanager/ao;->R:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Limoblife/cmfilemanager/e;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Limoblife/cmfilemanager/e;->a:Landroid/content/Context;

    sget v1, Limoblife/cmfilemanager/ao;->V:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Limoblife/cmfilemanager/e;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_0
    iget-object v1, p0, Limoblife/cmfilemanager/e;->a:Landroid/content/Context;

    sget v2, Limoblife/cmfilemanager/ao;->T:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Limoblife/cmfilemanager/e;->b:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Limoblife/cmfilemanager/e;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Limoblife/cmfilemanager/e;->a:Landroid/content/Context;

    sget v2, Limoblife/cmfilemanager/ao;->am:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "StartSaveActivity"

    const-string v2, "Error starting second activity."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Limoblife/cmfilemanager/e;->c:Ljava/lang/String;

    invoke-static {v0}, Limoblife/cmfilemanager/ai;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/e;->a(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Limoblife/cmfilemanager/e;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/e;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
