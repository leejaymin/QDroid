.class public final Lea;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/kms/gui/SelectFolderActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/gui/SelectFolderActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lea;-><init>(Lcom/kms/gui/SelectFolderActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/gui/SelectFolderActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 124
    const v0, 0x7f0b0122

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    iget-object v1, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v1}, Lcom/kms/gui/SelectFolderActivity;->a(Lcom/kms/gui/SelectFolderActivity;)LdZ;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v0, 0x7f0b0123

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 129
    check-cast v0, Landroid/widget/Button;

    iget-object v2, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-virtual {v2}, Lcom/kms/gui/SelectFolderActivity;->e()I

    move-result v2

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 130
    iget-object v0, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v0}, Lcom/kms/gui/SelectFolderActivity;->a(Lcom/kms/gui/SelectFolderActivity;)LdZ;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-boolean v0, v0, Lcom/kms/gui/SelectFolderActivity;->c:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v0}, Lcom/kms/gui/SelectFolderActivity;->b(Lcom/kms/gui/SelectFolderActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 147
    :goto_0
    return v0

    .line 141
    :cond_0
    iget-object v0, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v0}, Lcom/kms/gui/SelectFolderActivity;->c(Lcom/kms/gui/SelectFolderActivity;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v0}, Lcom/kms/gui/SelectFolderActivity;->c(Lcom/kms/gui/SelectFolderActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    .line 143
    :goto_1
    iget-object v2, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-object v2, v2, Lcom/kms/gui/SelectFolderActivity;->b:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 145
    iget-object v1, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-object v1, v1, Lcom/kms/gui/SelectFolderActivity;->b:[Ljava/lang/String;

    array-length v1, v1

    .line 147
    :cond_1
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 159
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f080045

    const v8, 0x7f02005b

    const v3, 0x7f02004c

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 166
    if-nez p1, :cond_3

    .line 168
    iget-object v0, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v0}, Lcom/kms/gui/SelectFolderActivity;->d(Lcom/kms/gui/SelectFolderActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030043

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 169
    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 170
    const v2, 0x7f0b0121

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 171
    invoke-direct {p0, v0, p1}, Lea;->a(Landroid/view/View;I)V

    .line 172
    iget-object v3, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 173
    iget-object v3, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-boolean v3, v3, Lcom/kms/gui/SelectFolderActivity;->c:Z

    if-eqz v3, :cond_1

    .line 175
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 176
    iget-object v3, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-virtual {v3}, Lcom/kms/gui/SelectFolderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 177
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 178
    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 179
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-virtual {v1}, Lcom/kms/gui/SelectFolderActivity;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    const v1, 0x7f0b0122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 182
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :cond_0
    :goto_0
    iget-object v1, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v1, v0}, Lcom/kms/gui/SelectFolderActivity;->a(Lcom/kms/gui/SelectFolderActivity;Landroid/view/View;)V

    .line 268
    :goto_1
    return-object v0

    .line 187
    :cond_1
    iget-object v3, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-virtual {v3}, Lcom/kms/gui/SelectFolderActivity;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-object v3, v3, Lcom/kms/gui/SelectFolderActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    iget-object v3, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-virtual {v3}, Lcom/kms/gui/SelectFolderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 190
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 191
    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 192
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 204
    :goto_2
    iget-object v2, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-object v2, v2, Lcom/kms/gui/SelectFolderActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v3, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-virtual {v3}, Lcom/kms/gui/SelectFolderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02005a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 197
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 198
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 199
    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 200
    iget-object v3, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v3}, Lcom/kms/gui/SelectFolderActivity;->a(Lcom/kms/gui/SelectFolderActivity;)LdZ;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v2, 0x7f0b0120

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 202
    iget-object v3, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v3}, Lcom/kms/gui/SelectFolderActivity;->a(Lcom/kms/gui/SelectFolderActivity;)LdZ;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 210
    :cond_3
    if-eqz p2, :cond_4

    if-eqz p2, :cond_5

    const v0, 0x7f0b0121

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 213
    :cond_4
    iget-object v0, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v0}, Lcom/kms/gui/SelectFolderActivity;->d(Lcom/kms/gui/SelectFolderActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030044

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object p2, v0

    .line 219
    :cond_5
    invoke-direct {p0, p2, p1}, Lea;->a(Landroid/view/View;I)V

    .line 220
    iget-object v0, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 221
    const v0, 0x7f0b0005

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 222
    iget-object v1, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v1}, Lcom/kms/gui/SelectFolderActivity;->a(Lcom/kms/gui/SelectFolderActivity;)LdZ;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 224
    const v1, 0x7f0b0002

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 225
    iget-object v2, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-boolean v2, v2, Lcom/kms/gui/SelectFolderActivity;->c:Z

    if-eqz v2, :cond_8

    .line 227
    packed-switch p1, :pswitch_data_0

    .line 246
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 267
    :cond_6
    :goto_3
    iget-object v0, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v0, p2}, Lcom/kms/gui/SelectFolderActivity;->b(Lcom/kms/gui/SelectFolderActivity;Landroid/view/View;)V

    move-object v0, p2

    .line 268
    goto/16 :goto_1

    .line 230
    :pswitch_0
    const v2, 0x7f020074

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 234
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    invoke-static {}, Lfp;->m()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 237
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 241
    :cond_7
    const v1, 0x7f080044

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 254
    :cond_8
    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-object v3, v3, Lcom/kms/gui/SelectFolderActivity;->b:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_9

    .line 256
    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    iget-object v1, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/kms/gui/SelectFolderActivity;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 264
    :goto_4
    if-eqz v1, :cond_6

    .line 265
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 261
    :cond_9
    const v2, 0x7f020057

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 262
    iget-object v1, p0, Lea;->a:Lcom/kms/gui/SelectFolderActivity;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/kms/gui/SelectFolderActivity;->b(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
