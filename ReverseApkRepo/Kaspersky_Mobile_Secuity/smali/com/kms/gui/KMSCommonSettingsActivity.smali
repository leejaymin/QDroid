.class public abstract Lcom/kms/gui/KMSCommonSettingsActivity;
.super Lcom/kms/gui/KMSBaseListActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private a:[Ldk;

.field private b:I

.field private c:Landroid/view/LayoutInflater;

.field private d:Ldi;

.field private e:Ldl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseListActivity;-><init>()V

    .line 37
    new-instance v0, Ldi;

    invoke-direct {v0, p0}, Ldi;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;)V

    iput-object v0, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->d:Ldi;

    .line 393
    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/KMSCommonSettingsActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->c:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public static synthetic b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->a:[Ldk;

    return-object v0
.end method

.method public static synthetic c(Lcom/kms/gui/KMSCommonSettingsActivity;)Ldi;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->d:Ldi;

    return-object v0
.end method


# virtual methods
.method protected a(ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    return-object p2
.end method

.method public abstract a(I)V
.end method

.method public final a(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->a:[Ldk;

    aget-object v0, v0, p1

    .line 201
    iget v1, v0, Ldk;->a:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, v0, Ldk;->a:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 203
    :cond_0
    iput-boolean p2, v0, Ldk;->d:Z

    .line 204
    iget-object v0, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->e:Ldl;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->e:Ldl;

    invoke-virtual {v0}, Ldl;->notifyDataSetChanged()V

    .line 209
    :cond_1
    return-void
.end method

.method public final a(I[Ldk;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p2, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->a:[Ldk;

    .line 215
    iput p1, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->b:I

    .line 216
    return-void
.end method

.method public final a([Ldk;[[II)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 173
    move v7, v5

    :goto_0
    if-ge v7, p3, :cond_2

    .line 175
    aget-object v0, p2, v7

    aget v0, v0, v5

    if-eq v0, v6, :cond_1

    .line 177
    aget-object v0, p2, v7

    array-length v0, v0

    if-le v0, v9, :cond_0

    aget-object v0, p2, v7

    aget v0, v0, v9

    if-ne v0, v6, :cond_0

    .line 179
    new-instance v0, Ldk;

    aget-object v1, p2, v7

    aget v2, v1, v5

    aget-object v1, p2, v7

    aget v1, v1, v6

    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aget-object v1, p2, v7

    aget v1, v1, v8

    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v0, p1, v7

    .line 173
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 185
    :cond_0
    new-instance v0, Ldk;

    aget-object v1, p2, v7

    aget v2, v1, v5

    aget-object v1, p2, v7

    aget v1, v1, v6

    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aget-object v1, p2, v7

    aget v1, v1, v8

    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, p1, v7

    goto :goto_1

    .line 192
    :cond_1
    new-instance v0, Ldk;

    aget-object v1, p2, v7

    aget v2, v1, v5

    aget-object v1, p2, v7

    aget v1, v1, v6

    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, p1, v7

    goto :goto_1

    .line 197
    :cond_2
    return-void
.end method

.method protected final b(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 352
    sub-int v0, p1, v0

    .line 353
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->a:[Ldk;

    aget-object v1, v1, p1

    iput-object p2, v1, Ldk;->c:Ljava/lang/String;

    .line 355
    if-eqz v0, :cond_0

    .line 357
    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 358
    if-eqz v0, :cond_0

    .line 360
    iget-object v1, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->a:[Ldk;

    aget-object v1, v1, p1

    iget-object v1, v1, Ldk;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v1, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->a:[Ldk;

    aget-object v1, v1, p1

    iget-object v1, v1, Ldk;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->a:[Ldk;

    aget-object v1, v1, p1

    iget-object v1, v1, Ldk;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 364
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->a:[Ldk;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Ldk;->e:Z

    if-eq v0, p2, :cond_0

    .line 222
    iget-object v0, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->a:[Ldk;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Ldk;->e:Z

    .line 223
    iget-object v0, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->e:Ldl;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->e:Ldl;

    invoke-virtual {v0}, Ldl;->notifyDataSetChanged()V

    .line 228
    :cond_0
    return-void
.end method

.method public b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method protected final c(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->a:[Ldk;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Ldk;->h:Z

    .line 382
    iget-object v0, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->e:Ldl;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->e:Ldl;

    invoke-virtual {v0}, Ldl;->notifyDataSetChanged()V

    .line 386
    :cond_0
    return-void
.end method

.method public final d(I)Landroid/widget/CheckBox;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 296
    iget-object v1, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->a:[Ldk;

    aget-object v1, v1, p1

    iget v1, v1, Ldk;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 298
    sub-int v1, p1, v1

    .line 299
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 300
    if-eqz v1, :cond_0

    .line 302
    const v0, 0x7f0b007b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 309
    :cond_0
    return-object v0
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 391
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 647
    const/4 v0, 0x1

    return v0
.end method

.method protected final e(I)Z
    .locals 1
    .parameter

    .prologue
    .line 376
    iget-object v0, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->a:[Ldk;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Ldk;->d:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 233
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 234
    iget-object v0, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->a:[Ldk;

    if-nez v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    const v0, 0x7f030047

    const v4, 0x7f0b002e

    invoke-virtual {p0, v0, v4}, Lcom/kms/gui/KMSCommonSettingsActivity;->a(II)V

    .line 238
    const v0, 0x7f0b0046

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 239
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v5, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->a:[Ldk;

    array-length v6, v5

    move v4, v2

    :goto_2
    if-ge v4, v6, :cond_4

    aget-object v7, v5, v4

    .line 243
    iget-boolean v0, v7, Ldk;->e:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_3
    iput-boolean v0, v7, Ldk;->e:Z

    .line 242
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_2
    move v0, v2

    .line 239
    goto :goto_1

    :cond_3
    move v0, v2

    .line 243
    goto :goto_3

    .line 246
    :cond_4
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 247
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 249
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->c:Landroid/view/LayoutInflater;

    .line 250
    new-instance v0, Ldl;

    invoke-direct {v0, p0}, Ldl;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;)V

    iput-object v0, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->e:Ldl;

    .line 251
    iget-object v0, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->e:Ldl;

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonSettingsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 252
    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 253
    iget v3, p0, Lcom/kms/gui/KMSCommonSettingsActivity;->b:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 254
    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    .line 258
    const v3, 0x7f0b0042

    invoke-virtual {p0, v3}, Lcom/kms/gui/KMSCommonSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 259
    if-eqz v3, :cond_6

    .line 261
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->c_()I

    move-result v4

    if-nez v4, :cond_5

    :goto_4
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    :goto_5
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->c_()I

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    new-instance v1, Ldg;

    invoke-direct {v1, p0}, Ldg;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_5
    move v1, v2

    .line 261
    goto :goto_4

    .line 265
    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 618
    if-nez p2, :cond_0

    .line 620
    const v0, 0x7f0b0005

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 621
    if-eqz v0, :cond_0

    .line 623
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 626
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
    .line 632
    const v0, 0x7f0b0005

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 633
    if-eqz v0, :cond_0

    .line 635
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 638
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 644
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 285
    invoke-super {p0}, Lcom/kms/gui/KMSBaseListActivity;->onResume()V

    .line 286
    return-void
.end method
