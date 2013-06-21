.class final Lcom/tequnique/camerax/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/CameraProActivity;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/CameraProActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/i;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/i;)Lcom/tequnique/camerax/CameraProActivity;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/i;->a:Lcom/tequnique/camerax/CameraProActivity;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/tequnique/camerax/i;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/i;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tequnique/camerax/i;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tequnique/camerax/i;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tequnique/camerax/i;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-virtual {v3}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tequnique/camerax/i;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v1

    iget v1, v1, Lcom/tequnique/camerax/bo;->G:I

    new-instance v3, Lcom/tequnique/camerax/j;

    invoke-direct {v3, p0}, Lcom/tequnique/camerax/j;-><init>(Lcom/tequnique/camerax/i;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/tequnique/camerax/i;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-virtual {v2}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tequnique/camerax/k;

    invoke-direct {v3, p0}, Lcom/tequnique/camerax/k;-><init>(Lcom/tequnique/camerax/i;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/i;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aW:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v0}, Lcom/tequnique/camerax/bo;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0
.end method
