.class final Lcom/tequnique/camerax/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/ar;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/as;->a:Lcom/tequnique/camerax/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/as;)Lcom/tequnique/camerax/ar;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/as;->a:Lcom/tequnique/camerax/ar;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tequnique/camerax/as;->a:Lcom/tequnique/camerax/ar;

    iget-object v1, v1, Lcom/tequnique/camerax/ar;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tequnique/camerax/as;->a:Lcom/tequnique/camerax/ar;

    iget-object v1, v1, Lcom/tequnique/camerax/ar;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-virtual {v1}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tequnique/camerax/as;->a:Lcom/tequnique/camerax/ar;

    iget-object v1, v1, Lcom/tequnique/camerax/ar;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-virtual {v1}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f05

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tequnique/camerax/as;->a:Lcom/tequnique/camerax/ar;

    iget-object v1, v1, Lcom/tequnique/camerax/ar;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-virtual {v1}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tequnique/camerax/at;

    invoke-direct {v2, p0}, Lcom/tequnique/camerax/at;-><init>(Lcom/tequnique/camerax/as;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
