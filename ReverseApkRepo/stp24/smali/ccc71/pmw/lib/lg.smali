.class final Lccc71/pmw/lib/lg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/lf;

.field private final synthetic b:[Ljava/lang/String;

.field private final synthetic c:[Ljava/lang/Long;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/lf;[Ljava/lang/String;[Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    iput-object p2, p0, Lccc71/pmw/lib/lg;->b:[Ljava/lang/String;

    iput-object p3, p0, Lccc71/pmw/lib/lg;->c:[Ljava/lang/Long;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x400

    const/4 v12, 0x1

    const/4 v2, 0x0

    const/4 v7, -0x2

    const/4 v11, 0x2

    .line 230
    iget-object v0, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v0}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->jx:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 231
    iget-object v1, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v1}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/u;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v0}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    invoke-static {}, Lccc71/pmw/b/u;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v0}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->ap:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v0}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/b/u;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v0}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->ki:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 245
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v3}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v3

    invoke-static {v3}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    invoke-static {}, Lccc71/pmw/b/u;->f()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    invoke-direct {v1, v7, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    sget-wide v3, Lccc71/pmw/b/u;->g:J

    sget-wide v5, Lccc71/pmw/b/u;->f:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    invoke-static {v1}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v0}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->bk:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 248
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v3}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v3

    invoke-static {v3}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    invoke-static {}, Lccc71/pmw/b/u;->f()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v7, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    sget-wide v3, Lccc71/pmw/b/u;->f:J

    long-to-int v1, v3

    invoke-static {v1}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :goto_1
    iget-object v0, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v0}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->iJ:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 262
    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 265
    iget-object v1, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v1}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lccc71/pmw/b/u;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v3}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 268
    invoke-virtual {v1, v11, v11, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 269
    iget-object v3, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v3}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v3

    invoke-static {v3}, Lccc71/pmw/lib/pmw_sd;->h(Lccc71/pmw/lib/pmw_sd;)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 270
    iget-object v3, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v3}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v3

    invoke-virtual {v3}, Lccc71/pmw/lib/pmw_sd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lccc71/pmw/lib/g;->ew:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 272
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setId(I)V

    .line 273
    iget-object v3, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v3}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v3

    invoke-static {v3}, Lccc71/pmw/lib/pmw_sd;->i(Lccc71/pmw/lib/pmw_sd;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 278
    :cond_0
    iget-object v1, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v1}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v3

    iget-object v1, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v1}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v1

    sget v4, Lccc71/pmw/lib/d;->fJ:I

    invoke-virtual {v1, v4}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lccc71/utils/ccc71_piechartview;

    invoke-static {v3, v1}, Lccc71/pmw/lib/pmw_sd;->a(Lccc71/pmw/lib/pmw_sd;Lccc71/utils/ccc71_piechartview;)V

    .line 279
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 281
    iget-object v1, p0, Lccc71/pmw/lib/lg;->b:[Ljava/lang/String;

    array-length v4, v1

    move v1, v2

    .line 282
    :goto_2
    if-lt v1, v4, :cond_3

    .line 326
    iget-object v0, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v0}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sd;->j(Lccc71/pmw/lib/pmw_sd;)Lccc71/utils/ccc71_piechartview;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lccc71/utils/ccc71_piechartview;->setData(Ljava/util/List;Z)V

    .line 328
    iget-object v0, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v0}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_sd;->a(Lccc71/pmw/lib/pmw_sd;Ljava/lang/Runnable;)V

    .line 329
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v0}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->ap:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v0}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->ki:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 254
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v3}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v3

    invoke-static {v3}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    invoke-static {}, Lccc71/pmw/b/u;->e()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    invoke-direct {v1, v7, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    sget-wide v3, Lccc71/pmw/b/u;->i:J

    sget-wide v5, Lccc71/pmw/b/u;->h:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    invoke-static {v1}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v0}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->bk:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 257
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v3}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v3

    invoke-static {v3}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    invoke-static {}, Lccc71/pmw/b/u;->e()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v7, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    sget-wide v3, Lccc71/pmw/b/u;->h:J

    long-to-int v1, v3

    invoke-static {v1}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 284
    :cond_3
    iget-object v5, p0, Lccc71/pmw/lib/lg;->c:[Ljava/lang/Long;

    array-length v5, v5

    if-ge v1, v5, :cond_5

    .line 285
    new-instance v5, Lccc71/utils/aa;

    invoke-direct {v5}, Lccc71/utils/aa;-><init>()V

    .line 288
    iget-object v6, p0, Lccc71/pmw/lib/lg;->c:[Ljava/lang/Long;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    div-long/2addr v6, v13

    iput-wide v6, v5, Lccc71/utils/aa;->b:J

    .line 289
    sget v6, Lccc71/pmw/lib/pmw_sd;->a:I

    sget v7, Lccc71/pmw/lib/pmw_sd;->b:I

    mul-int/2addr v7, v1

    div-int/2addr v7, v4

    add-int/2addr v6, v7

    iput v6, v5, Lccc71/utils/aa;->a:I

    .line 291
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v6, Landroid/widget/TableRow;

    iget-object v7, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v7}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 295
    new-instance v7, Landroid/content/res/ColorStateList;

    .line 296
    new-array v8, v11, [[I

    .line 297
    new-array v9, v12, [I

    const v10, 0x10100a7

    aput v10, v9, v2

    aput-object v9, v8, v2

    .line 298
    new-array v9, v2, [I

    aput-object v9, v8, v12

    .line 299
    new-array v9, v11, [I

    .line 300
    const v10, -0xbbbbbc

    aput v10, v9, v2

    .line 301
    iget v5, v5, Lccc71/utils/aa;->a:I

    aput v5, v9, v12

    .line 295
    invoke-direct {v7, v8, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 304
    new-instance v5, Landroid/widget/TextView;

    iget-object v8, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v8}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 305
    invoke-virtual {v5, v11, v11, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 306
    iget-object v8, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v8}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v8

    invoke-static {v8}, Lccc71/pmw/lib/pmw_sd;->h(Lccc71/pmw/lib/pmw_sd;)F

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 307
    iget-object v8, p0, Lccc71/pmw/lib/lg;->b:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 309
    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 310
    invoke-virtual {v6, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 312
    new-instance v5, Landroid/widget/TextView;

    iget-object v8, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v8}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 313
    invoke-virtual {v5, v11, v11, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 314
    iget-object v8, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v8}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v8

    invoke-static {v8}, Lccc71/pmw/lib/pmw_sd;->h(Lccc71/pmw/lib/pmw_sd;)F

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 315
    iget-object v8, p0, Lccc71/pmw/lib/lg;->c:[Ljava/lang/Long;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    div-long/2addr v8, v13

    long-to-int v8, v8

    invoke-static {v8}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 317
    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 318
    invoke-virtual {v6, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 320
    invoke-virtual {v6, v1}, Landroid/widget/TableRow;->setId(I)V

    .line 321
    iget-object v5, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v5}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v5

    invoke-static {v5}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v7}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v7

    invoke-static {v7}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    move-result-object v7

    iget-object v7, v7, Lccc71/pmw/b/u;->k:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lccc71/pmw/lib/lg;->b:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccc71/pmw/b/u;->a(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    .line 322
    iget-object v5, p0, Lccc71/pmw/lib/lg;->a:Lccc71/pmw/lib/lf;

    invoke-static {v5}, Lccc71/pmw/lib/lf;->a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v5

    invoke-static {v5}, Lccc71/pmw/lib/pmw_sd;->i(Lccc71/pmw/lib/pmw_sd;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    :cond_4
    invoke-virtual {v0, v6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 282
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method
