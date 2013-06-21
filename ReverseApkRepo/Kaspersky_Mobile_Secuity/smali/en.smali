.class final Len;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/dialog/AlertController;

.field private synthetic b:Lel;


# direct methods
.method constructor <init>(Lel;Lcom/kms/gui/dialog/AlertController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 863
    iput-object p1, p0, Len;->b:Lel;

    iput-object p2, p0, Len;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 866
    iget-object v0, p0, Len;->b:Lel;

    iget-object v0, v0, Lel;->l:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Len;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v1}, Lcom/kms/gui/dialog/AlertController;->g(Lcom/kms/gui/dialog/AlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 867
    iget-object v0, p0, Len;->b:Lel;

    iget-boolean v0, v0, Lel;->v:Z

    if-nez v0, :cond_0

    .line 868
    iget-object v0, p0, Len;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v0}, Lcom/kms/gui/dialog/AlertController;->g(Lcom/kms/gui/dialog/AlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 870
    :cond_0
    return-void
.end method
