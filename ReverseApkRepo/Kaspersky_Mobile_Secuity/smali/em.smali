.class final Lem;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/kms/gui/dialog/AlertController$RecycleListView;

.field private synthetic b:Lel;


# direct methods
.method constructor <init>(Lel;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/kms/gui/dialog/AlertController$RecycleListView;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lem;->b:Lel;

    iput-object p6, p0, Lem;->a:Lcom/kms/gui/dialog/AlertController$RecycleListView;

    const v0, 0x7f03003f

    const v1, 0x7f0b011c

    invoke-direct {p0, p2, v0, v1, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 788
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 789
    iget-object v1, p0, Lem;->b:Lel;

    iget-object v1, v1, Lel;->t:[Z

    if-eqz v1, :cond_0

    .line 790
    iget-object v1, p0, Lem;->b:Lel;

    iget-object v1, v1, Lel;->t:[Z

    aget-boolean v1, v1, p1

    .line 791
    if-eqz v1, :cond_0

    .line 792
    iget-object v1, p0, Lem;->a:Lcom/kms/gui/dialog/AlertController$RecycleListView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/kms/gui/dialog/AlertController$RecycleListView;->setItemChecked(IZ)V

    .line 795
    :cond_0
    return-object v0
.end method
