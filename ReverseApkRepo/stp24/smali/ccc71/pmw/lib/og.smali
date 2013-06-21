.class final Lccc71/pmw/lib/og;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_sysctl;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_sysctl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/og;->a:Lccc71/pmw/lib/pmw_sysctl;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 216
    iget-object v0, p0, Lccc71/pmw/lib/og;->a:Lccc71/pmw/lib/pmw_sysctl;

    sget v1, Lccc71/pmw/lib/d;->iH:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_sysctl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 217
    invoke-virtual {v0, p1}, Landroid/widget/TableLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 219
    const-string v1, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "headerOnClick on row "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-nez v1, :cond_6

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 226
    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v5

    move v6, v2

    .line 229
    :goto_0
    if-lt v4, v7, :cond_1

    .line 283
    :cond_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccc71/pmw/lib/pb;

    .line 233
    new-instance v8, Landroid/widget/TableRow;

    iget-object v3, p0, Lccc71/pmw/lib/og;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-direct {v8, v3}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 235
    new-instance v3, Landroid/widget/ImageView;

    iget-object v9, p0, Lccc71/pmw/lib/og;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-direct {v3, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 236
    iget-object v9, v2, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    iget-object v10, v2, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 237
    sget v9, Lccc71/pmw/lib/c;->n:I

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    :cond_2
    iget-object v9, p0, Lccc71/pmw/lib/og;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v9}, Lccc71/pmw/lib/pmw_sysctl;->a(Lccc71/pmw/lib/pmw_sysctl;)Landroid/view/View$OnClickListener;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 240
    iget-object v9, p0, Lccc71/pmw/lib/og;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v9}, Lccc71/pmw/lib/pmw_sysctl;->b(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/TableRow$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance v3, Landroid/widget/TextView;

    iget-object v9, p0, Lccc71/pmw/lib/og;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-direct {v3, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 243
    iget-object v9, v2, Lccc71/pmw/lib/pb;->b:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v9, p0, Lccc71/pmw/lib/og;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v9}, Lccc71/pmw/lib/pmw_sysctl;->c(Lccc71/pmw/lib/pmw_sysctl;)F

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 245
    iget-object v9, p0, Lccc71/pmw/lib/og;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v9}, Lccc71/pmw/lib/pmw_sysctl;->d(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/TableRow$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object v9, v2, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    iget-object v10, v2, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 248
    invoke-static {}, Lccc71/pmw/lib/pmw_sysctl;->e()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v3, p1

    .line 249
    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Lccc71/pmw/lib/pmw_sysctl;->e()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    :cond_3
    new-instance v3, Landroid/widget/EditText;

    iget-object v9, p0, Lccc71/pmw/lib/og;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-direct {v3, v9}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 253
    iget-object v9, v2, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 255
    iget-object v2, p0, Lccc71/pmw/lib/og;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_sysctl;->e(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 256
    iget-object v2, p0, Lccc71/pmw/lib/og;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_sysctl;->f(Lccc71/pmw/lib/pmw_sysctl;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 257
    sget-boolean v2, Lccc71/pmw/b/h;->c:Z

    if-eqz v2, :cond_5

    .line 258
    invoke-virtual {v3, v11}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 262
    :goto_1
    invoke-virtual {v8, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 264
    rem-int/lit8 v2, v4, 0x2

    if-nez v2, :cond_4

    .line 265
    iget-object v2, p0, Lccc71/pmw/lib/og;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_sysctl;->g(Lccc71/pmw/lib/pmw_sysctl;)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 267
    :cond_4
    invoke-virtual {v8, p1}, Landroid/widget/TableRow;->setTag(Ljava/lang/Object;)V

    .line 268
    invoke-virtual {v8, v11}, Landroid/widget/TableRow;->setId(I)V

    .line 270
    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v0, v8, v6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 229
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v6, v3

    goto/16 :goto_0

    .line 260
    :cond_5
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_1

    .line 276
    :cond_6
    iget-object v1, p0, Lccc71/pmw/lib/og;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v1, p1}, Lccc71/pmw/lib/pmw_sysctl;->a(Lccc71/pmw/lib/pmw_sysctl;Landroid/view/View;)V

    .line 280
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->removeViewAt(I)V

    goto :goto_2
.end method
