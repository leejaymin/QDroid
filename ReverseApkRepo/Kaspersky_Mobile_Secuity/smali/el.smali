.class public final Lel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:Ljava/lang/CharSequence;

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;

.field public f:Landroid/content/DialogInterface$OnClickListener;

.field public g:Ljava/lang/CharSequence;

.field public h:Landroid/content/DialogInterface$OnClickListener;

.field public i:Z

.field public j:[Ljava/lang/CharSequence;

.field public k:[Ljava/lang/CharSequence;

.field public l:Landroid/content/DialogInterface$OnClickListener;

.field public m:Let;

.field public n:Landroid/view/View;

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Z

.field public t:[Z

.field public u:Z

.field public v:Z

.field public w:I

.field public x:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    iput v1, p0, Lel;->y:I

    .line 689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lel;->s:Z

    .line 693
    iput v1, p0, Lel;->w:I

    .line 701
    iput-boolean v2, p0, Lel;->z:Z

    .line 717
    iput-object p1, p0, Lel;->a:Landroid/content/Context;

    .line 718
    iput-boolean v2, p0, Lel;->i:Z

    .line 719
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lel;->b:Landroid/view/LayoutInflater;

    .line 720
    return-void
.end method

.method private b(Lcom/kms/gui/dialog/AlertController;)V
    .locals 8
    .parameter

    .prologue
    const v4, 0x7f0b011c

    const/4 v7, 0x1

    .line 778
    iget-object v0, p0, Lel;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/kms/gui/dialog/AlertController$RecycleListView;

    .line 781
    invoke-virtual {v6, v7}, Lcom/kms/gui/dialog/AlertController$RecycleListView;->setItemsCanFocus(Z)V

    .line 782
    iget-boolean v0, p0, Lel;->u:Z

    if-eqz v0, :cond_2

    .line 783
    new-instance v0, Lem;

    iget-object v2, p0, Lel;->a:Landroid/content/Context;

    const v3, 0x7f03003f

    iget-object v5, p0, Lel;->j:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lem;-><init>(Lel;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/kms/gui/dialog/AlertController$RecycleListView;)V

    .line 845
    :goto_0
    invoke-static {p1, v0}, Lcom/kms/gui/dialog/AlertController;->a(Lcom/kms/gui/dialog/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 860
    iget v0, p0, Lel;->w:I

    invoke-static {p1, v0}, Lcom/kms/gui/dialog/AlertController;->a(Lcom/kms/gui/dialog/AlertController;I)I

    .line 862
    iget-object v0, p0, Lel;->l:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_5

    .line 863
    new-instance v0, Len;

    invoke-direct {v0, p0, p1}, Len;-><init>(Lel;Lcom/kms/gui/dialog/AlertController;)V

    invoke-virtual {v6, v0}, Lcom/kms/gui/dialog/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 886
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lel;->v:Z

    if-eqz v0, :cond_6

    .line 891
    invoke-virtual {v6, v7}, Lcom/kms/gui/dialog/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 895
    :cond_1
    :goto_2
    invoke-static {p1, v6}, Lcom/kms/gui/dialog/AlertController;->a(Lcom/kms/gui/dialog/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 897
    return-void

    .line 799
    :cond_2
    iget-object v0, p0, Lel;->k:[Ljava/lang/CharSequence;

    if-nez v0, :cond_4

    .line 827
    iget-boolean v0, p0, Lel;->v:Z

    if-eqz v0, :cond_3

    const v0, 0x7f030040

    .line 829
    :goto_3
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lel;->a:Landroid/content/Context;

    iget-object v3, p0, Lel;->j:[Ljava/lang/CharSequence;

    invoke-direct {v1, v2, v0, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    move-object v0, v1

    .line 833
    goto :goto_0

    .line 827
    :cond_3
    const v0, 0x7f03003e

    goto :goto_3

    .line 837
    :cond_4
    new-instance v0, Lep;

    invoke-static {p1}, Lcom/kms/gui/dialog/AlertController;->g(Lcom/kms/gui/dialog/AlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lep;-><init>(Lel;Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 872
    :cond_5
    iget-object v0, p0, Lel;->x:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v0, :cond_0

    .line 873
    new-instance v0, Leo;

    invoke-direct {v0, p0, v6, p1}, Leo;-><init>(Lel;Lcom/kms/gui/dialog/AlertController$RecycleListView;Lcom/kms/gui/dialog/AlertController;)V

    invoke-virtual {v6, v0}, Lcom/kms/gui/dialog/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 892
    :cond_6
    iget-boolean v0, p0, Lel;->u:Z

    if-eqz v0, :cond_1

    .line 893
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lcom/kms/gui/dialog/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/kms/gui/dialog/AlertController;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 723
    iget-object v0, p0, Lel;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lel;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/kms/gui/dialog/AlertController;->a(Ljava/lang/CharSequence;)V

    .line 729
    :cond_0
    iget v0, p0, Lel;->y:I

    if-ltz v0, :cond_1

    .line 733
    iget v0, p0, Lel;->y:I

    invoke-virtual {p1, v0}, Lcom/kms/gui/dialog/AlertController;->a(I)V

    .line 736
    :cond_1
    iget-object v0, p0, Lel;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 737
    iget-object v0, p0, Lel;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/kms/gui/dialog/AlertController;->b(Ljava/lang/CharSequence;)V

    .line 739
    :cond_2
    iget-object v0, p0, Lel;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 740
    const/4 v0, -0x1

    iget-object v1, p0, Lel;->e:Ljava/lang/CharSequence;

    iget-object v2, p0, Lel;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kms/gui/dialog/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 743
    :cond_3
    iget-object v0, p0, Lel;->g:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 744
    const/4 v0, -0x2

    iget-object v1, p0, Lel;->g:Ljava/lang/CharSequence;

    iget-object v2, p0, Lel;->h:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kms/gui/dialog/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 747
    :cond_4
    iget-object v0, p0, Lel;->j:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 757
    invoke-direct {p0, p1}, Lel;->b(Lcom/kms/gui/dialog/AlertController;)V

    .line 759
    :cond_5
    iget-object v0, p0, Lel;->n:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 760
    iget-boolean v0, p0, Lel;->s:Z

    if-eqz v0, :cond_7

    .line 761
    iget-object v1, p0, Lel;->n:Landroid/view/View;

    iget v2, p0, Lel;->o:I

    iget v3, p0, Lel;->p:I

    iget v4, p0, Lel;->q:I

    iget v5, p0, Lel;->r:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/kms/gui/dialog/AlertController;->a(Landroid/view/View;IIII)V

    .line 775
    :cond_6
    :goto_0
    return-void

    .line 764
    :cond_7
    iget-object v0, p0, Lel;->n:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/kms/gui/dialog/AlertController;->a(Landroid/view/View;)V

    goto :goto_0
.end method
