.class public abstract Lcom/kms/gui/KMSCommonContactsActivity;
.super Lcom/kms/gui/KMSBaseListActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Landroid/view/LayoutInflater;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ldf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseListActivity;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kms/gui/KMSCommonContactsActivity;->a:Ljava/util/Vector;

    .line 37
    new-instance v0, Ldf;

    invoke-direct {v0, p0}, Ldf;-><init>(Lcom/kms/gui/KMSCommonContactsActivity;)V

    iput-object v0, p0, Lcom/kms/gui/KMSCommonContactsActivity;->g:Ldf;

    .line 196
    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/KMSCommonContactsActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kms/gui/KMSCommonContactsActivity;->b:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public static synthetic b(Lcom/kms/gui/KMSCommonContactsActivity;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kms/gui/KMSCommonContactsActivity;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public static synthetic c(Lcom/kms/gui/KMSCommonContactsActivity;)Ldf;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kms/gui/KMSCommonContactsActivity;->g:Ldf;

    return-object v0
.end method

.method private k()V
    .locals 6

    .prologue
    const v5, 0x7f0b0046

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 178
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 179
    invoke-virtual {p0, v5}, Lcom/kms/gui/KMSCommonContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 180
    if-eqz v3, :cond_0

    .line 182
    iget-object v0, p0, Lcom/kms/gui/KMSCommonContactsActivity;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->onContentChanged()V

    .line 185
    if-eqz v4, :cond_1

    .line 187
    invoke-virtual {p0, v5}, Lcom/kms/gui/KMSCommonContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/kms/gui/KMSCommonContactsActivity;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 182
    goto :goto_0

    :cond_3
    move v2, v1

    .line 187
    goto :goto_1
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 156
    return-void
.end method

.method public final a(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    iput p1, p0, Lcom/kms/gui/KMSCommonContactsActivity;->c:I

    .line 148
    iput p2, p0, Lcom/kms/gui/KMSCommonContactsActivity;->d:I

    .line 149
    iput p3, p0, Lcom/kms/gui/KMSCommonContactsActivity;->e:I

    .line 150
    iput p4, p0, Lcom/kms/gui/KMSCommonContactsActivity;->f:I

    .line 151
    return-void
.end method

.method protected final a(J)V
    .locals 2
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/kms/gui/KMSCommonContactsActivity;->a:Ljava/util/Vector;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 173
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->k()V

    .line 174
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 311
    return-void
.end method

.method public abstract b()V
.end method

.method public abstract b(I)Z
.end method

.method protected abstract c()Ljava/util/Vector;
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f03000e

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 193
    const v0, 0x7f03000f

    return v0
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method protected final i()V
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->c()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/KMSCommonContactsActivity;->a:Ljava/util/Vector;

    .line 167
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->k()V

    .line 168
    return-void
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->d()I

    move-result v0

    const v1, 0x7f0b002e

    invoke-virtual {p0, v0, v1}, Lcom/kms/gui/KMSCommonContactsActivity;->a(II)V

    .line 70
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 72
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/kms/gui/KMSCommonContactsActivity;->b:Landroid/view/LayoutInflater;

    .line 73
    new-instance v0, Ldd;

    invoke-direct {v0, p0}, Ldd;-><init>(Lcom/kms/gui/KMSCommonContactsActivity;)V

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonContactsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    iget v1, p0, Lcom/kms/gui/KMSCommonContactsActivity;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 79
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->j()Z

    move-result v1

    .line 82
    if-eqz v1, :cond_1

    .line 84
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 85
    iget v2, p0, Lcom/kms/gui/KMSCommonContactsActivity;->e:I

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 92
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    iget v1, p0, Lcom/kms/gui/KMSCommonContactsActivity;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 94
    iget-object v1, p0, Lcom/kms/gui/KMSCommonContactsActivity;->g:Ldf;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->f()V

    .line 100
    return-void

    .line 89
    :cond_1
    const v2, -0x4d4d4e

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 90
    iget v2, p0, Lcom/kms/gui/KMSCommonContactsActivity;->f:I

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 335
    if-nez p2, :cond_0

    .line 337
    const v0, 0x7f0b0006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 338
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 340
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 343
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 317
    const v0, 0x7f0b0006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 318
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 320
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 323
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const v2, 0x7f0b0043

    .line 107
    invoke-super {p0}, Lcom/kms/gui/KMSBaseListActivity;->onResume()V

    .line 108
    invoke-virtual {p0, v2}, Lcom/kms/gui/KMSCommonContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->h()Z

    move-result v1

    if-nez v1, :cond_2

    .line 111
    if-eqz v0, :cond_0

    .line 113
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :cond_0
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 117
    const-class v1, Lgd;

    monitor-enter v1

    .line 118
    :try_start_0
    invoke-virtual {v0}, Lgd;->a()V

    .line 119
    iget-boolean v0, v0, Lgd;->m:Z

    .line 120
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    if-eqz v0, :cond_1

    .line 122
    const v0, 0x7f0b0044

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 123
    const v1, 0x7f080207

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 128
    :cond_2
    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p0, v2}, Lcom/kms/gui/KMSCommonContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
