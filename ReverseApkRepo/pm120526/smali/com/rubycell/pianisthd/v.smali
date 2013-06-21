.class final Lcom/rubycell/pianisthd/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/DoubleRowActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/v;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/rubycell/pianisthd/v;)Lcom/rubycell/pianisthd/DoubleRowActivity;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/v;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/rubycell/pianisthd/v;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-boolean v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->C:Z

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "Beat 1"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "Beat 2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Beat 3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Beat 4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Beat 5"

    aput-object v2, v0, v1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/rubycell/pianisthd/v;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-object v2, v2, Lcom/rubycell/pianisthd/DoubleRowActivity;->y:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Choose beat"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v2, -0x1

    new-instance v3, Lcom/rubycell/pianisthd/w;

    invoke-direct {v3, p0}, Lcom/rubycell/pianisthd/w;-><init>(Lcom/rubycell/pianisthd/v;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/v;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iput-boolean v2, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->C:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/v;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->A:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/v;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->A:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/v;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->p:Landroid/widget/ImageView;

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_1
    invoke-static {}, Lorg/cocos2d/j/a;->a()Lorg/cocos2d/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/j/a;->c()V

    goto :goto_0
.end method
