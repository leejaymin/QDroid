.class final Leo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/dialog/AlertController$RecycleListView;

.field private synthetic b:Lcom/kms/gui/dialog/AlertController;

.field private synthetic c:Lel;


# direct methods
.method constructor <init>(Lel;Lcom/kms/gui/dialog/AlertController$RecycleListView;Lcom/kms/gui/dialog/AlertController;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 873
    iput-object p1, p0, Leo;->c:Lel;

    iput-object p2, p0, Leo;->a:Lcom/kms/gui/dialog/AlertController$RecycleListView;

    iput-object p3, p0, Leo;->b:Lcom/kms/gui/dialog/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 876
    iget-object v0, p0, Leo;->c:Lel;

    iget-object v0, v0, Lel;->t:[Z

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Leo;->c:Lel;

    iget-object v0, v0, Lel;->t:[Z

    iget-object v1, p0, Leo;->a:Lcom/kms/gui/dialog/AlertController$RecycleListView;

    invoke-virtual {v1, p3}, Lcom/kms/gui/dialog/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 879
    :cond_0
    iget-object v0, p0, Leo;->c:Lel;

    iget-object v0, v0, Lel;->x:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Leo;->b:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v1}, Lcom/kms/gui/dialog/AlertController;->g(Lcom/kms/gui/dialog/AlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Leo;->a:Lcom/kms/gui/dialog/AlertController$RecycleListView;

    invoke-virtual {v2, p3}, Lcom/kms/gui/dialog/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 881
    return-void
.end method
