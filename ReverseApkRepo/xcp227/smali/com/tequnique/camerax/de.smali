.class final Lcom/tequnique/camerax/de;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/cj;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/cj;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/de;->a:Lcom/tequnique/camerax/cj;

    iput-object p2, p0, Lcom/tequnique/camerax/de;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/de;)Lcom/tequnique/camerax/cj;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/de;->a:Lcom/tequnique/camerax/cj;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tequnique/camerax/de;->a:Lcom/tequnique/camerax/cj;

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tequnique/camerax/de;->a:Lcom/tequnique/camerax/cj;

    iget-object v2, v2, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v2}, Lcom/tequnique/camerax/WebuploaderActivity;->f(Lcom/tequnique/camerax/WebuploaderActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " website will be opened. Please authenticate there with your username and password. Then press the \"Ok\" button on top of the screen."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Lcom/tequnique/camerax/df;

    iget-object v4, p0, Lcom/tequnique/camerax/de;->b:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/tequnique/camerax/df;-><init>(Lcom/tequnique/camerax/de;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancel"

    new-instance v3, Lcom/tequnique/camerax/dg;

    invoke-direct {v3, p0}, Lcom/tequnique/camerax/dg;-><init>(Lcom/tequnique/camerax/de;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "CameraPro"

    const-string v1, "Error showing webupload progress dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
