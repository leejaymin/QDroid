.class public abstract Lcom/kms/gui/KMSCommonUserActionActivity;
.super Lcom/kms/gui/KMSBaseListActivity;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:I

.field private c:Landroid/view/LayoutInflater;

.field private d:Ldo;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseListActivity;-><init>()V

    .line 20
    new-instance v0, Ldo;

    invoke-direct {v0, p0}, Ldo;-><init>(Lcom/kms/gui/KMSCommonUserActionActivity;)V

    iput-object v0, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->d:Ldo;

    .line 109
    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/KMSCommonUserActionActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/kms/gui/KMSCommonUserActionActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->e:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic c(Lcom/kms/gui/KMSCommonUserActionActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->c:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public static synthetic d(Lcom/kms/gui/KMSCommonUserActionActivity;)Ldo;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->d:Ldo;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public abstract a(I)V
.end method

.method public final a(I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p2, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->a:[Ljava/lang/String;

    .line 47
    iput p1, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->b:I

    .line 48
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    iget-object v0, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->a:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 29
    :cond_0
    const v0, 0x7f03003a

    invoke-virtual {p0, v0, v2}, Lcom/kms/gui/KMSCommonUserActionActivity;->a(II)V

    .line 31
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonUserActionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->c:Landroid/view/LayoutInflater;

    .line 33
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonUserActionActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 34
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonUserActionActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonUserActionActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 37
    iget-object v0, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->c:Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonUserActionActivity;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->e:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->e:Landroid/view/View;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    new-instance v0, Ldn;

    invoke-direct {v0, p0}, Ldn;-><init>(Lcom/kms/gui/KMSCommonUserActionActivity;)V

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonUserActionActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonUserActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    iget v1, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
