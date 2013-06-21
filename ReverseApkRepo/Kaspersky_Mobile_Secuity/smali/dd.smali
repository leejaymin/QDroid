.class public final Ldd;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/kms/gui/KMSCommonContactsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/gui/KMSCommonContactsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldd;-><init>(Lcom/kms/gui/KMSCommonContactsActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/gui/KMSCommonContactsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Ldd;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Ldd;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSCommonContactsActivity;->b(Lcom/kms/gui/KMSCommonContactsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 283
    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 300
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 305
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, -0x1

    const v4, -0x4d4d4e

    const/high16 v6, 0x3f00

    const/4 v5, 0x0

    .line 203
    if-nez p2, :cond_0

    .line 205
    iget-object v0, p0, Ldd;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSCommonContactsActivity;->a(Lcom/kms/gui/KMSCommonContactsActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Ldd;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-virtual {v1}, Lcom/kms/gui/KMSCommonContactsActivity;->e()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object p2, v0

    .line 212
    :cond_0
    iget-object v0, p0, Ldd;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-virtual {v0}, Lcom/kms/gui/KMSCommonContactsActivity;->j()Z

    move-result v3

    .line 213
    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 214
    const v0, 0x7f0b0005

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 215
    const v1, 0x7f0b0006

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 216
    const v2, 0x7f0b0002

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 217
    if-eqz v3, :cond_1

    .line 219
    iget-object v3, p0, Ldd;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-static {v3}, Lcom/kms/gui/KMSCommonContactsActivity;->b(Lcom/kms/gui/KMSCommonContactsActivity;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LeI;

    iget v3, v3, LeI;->c:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 222
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 231
    iget-object v3, p0, Ldd;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-static {v3}, Lcom/kms/gui/KMSCommonContactsActivity;->b(Lcom/kms/gui/KMSCommonContactsActivity;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LeI;

    iget v3, v3, LeI;->b:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 233
    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 234
    iget-object v3, p0, Ldd;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-virtual {v3}, Lcom/kms/gui/KMSCommonContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 235
    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {v0, v5, v5, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 236
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    :goto_1
    iget-object v1, p0, Ldd;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSCommonContactsActivity;->b(Lcom/kms/gui/KMSCommonContactsActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LeI;

    iget-object v1, v1, LeI;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v0, p0, Ldd;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSCommonContactsActivity;->c(Lcom/kms/gui/KMSCommonContactsActivity;)Ldf;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    new-instance v0, Lde;

    invoke-direct {v0, p0}, Lde;-><init>(Ldd;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 273
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Ldd;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 275
    iget-object v0, p0, Ldd;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-virtual {v0, p2, p1}, Lcom/kms/gui/KMSCommonContactsActivity;->a(Landroid/view/View;I)V

    .line 276
    return-object p2

    .line 226
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object v3, p0, Ldd;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-static {v3}, Lcom/kms/gui/KMSCommonContactsActivity;->b(Lcom/kms/gui/KMSCommonContactsActivity;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LeI;

    iget v3, v3, LeI;->d:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 240
    :cond_2
    const/16 v3, 0x30

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 241
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 243
    iget-object v3, p0, Ldd;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-static {v3}, Lcom/kms/gui/KMSCommonContactsActivity;->b(Lcom/kms/gui/KMSCommonContactsActivity;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LeI;

    iget-object v3, v3, LeI;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v3, p0, Ldd;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-virtual {v3}, Lcom/kms/gui/KMSCommonContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 245
    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {v1, v5, v5, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public final isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 295
    const/4 v0, 0x1

    return v0
.end method
