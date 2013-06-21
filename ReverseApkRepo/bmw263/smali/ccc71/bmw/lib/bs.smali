.class final Lccc71/bmw/lib/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/br;

.field private final synthetic b:Ljava/util/ArrayList;

.field private final synthetic c:Ljava/util/ArrayList;

.field private final synthetic d:Landroid/content/pm/PackageManager;

.field private final synthetic e:J


# direct methods
.method constructor <init>(Lccc71/bmw/lib/br;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/pm/PackageManager;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/bs;->a:Lccc71/bmw/lib/br;

    iput-object p2, p0, Lccc71/bmw/lib/bs;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lccc71/bmw/lib/bs;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lccc71/bmw/lib/bs;->d:Landroid/content/pm/PackageManager;

    iput-wide p5, p0, Lccc71/bmw/lib/bs;->e:J

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    .line 211
    iget-object v0, p0, Lccc71/bmw/lib/bs;->a:Lccc71/bmw/lib/br;

    invoke-static {v0}, Lccc71/bmw/lib/br;->a(Lccc71/bmw/lib/br;)Lccc71/bmw/lib/bmw_past_stats;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/d;->di:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_past_stats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 212
    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 213
    iget-object v1, p0, Lccc71/bmw/lib/bs;->a:Lccc71/bmw/lib/br;

    invoke-static {v1}, Lccc71/bmw/lib/br;->a(Lccc71/bmw/lib/br;)Lccc71/bmw/lib/bmw_past_stats;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_past_stats;->b(Lccc71/bmw/lib/bmw_past_stats;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lccc71/bmw/lib/bs;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v1

    .line 214
    :goto_0
    const/4 v1, 0x0

    move v8, v1

    :goto_1
    if-lt v8, v2, :cond_1

    .line 292
    return-void

    .line 213
    :cond_0
    iget-object v1, p0, Lccc71/bmw/lib/bs;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v1

    goto :goto_0

    .line 220
    :cond_1
    iget-object v1, p0, Lccc71/bmw/lib/bs;->a:Lccc71/bmw/lib/br;

    invoke-static {v1}, Lccc71/bmw/lib/br;->a(Lccc71/bmw/lib/br;)Lccc71/bmw/lib/bmw_past_stats;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_past_stats;->b(Lccc71/bmw/lib/bmw_past_stats;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    .line 222
    iget-object v1, p0, Lccc71/bmw/lib/bs;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/utils/b/f;

    .line 223
    invoke-virtual {v1}, Lccc71/utils/b/f;->c()J

    move-result-wide v3

    const-wide/16 v5, 0xa

    div-long v5, v3, v5

    .line 224
    invoke-virtual {v1}, Lccc71/utils/b/f;->d()I

    move-result v3

    int-to-long v3, v3

    .line 225
    iget-object v7, p0, Lccc71/bmw/lib/bs;->a:Lccc71/bmw/lib/br;

    invoke-static {v7}, Lccc71/bmw/lib/br;->a(Lccc71/bmw/lib/br;)Lccc71/bmw/lib/bmw_past_stats;

    move-result-object v7

    invoke-virtual {v7}, Lccc71/bmw/lib/bmw_past_stats;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v1, v7}, Lccc71/utils/b/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 226
    invoke-virtual {v1}, Lccc71/utils/b/f;->b()Lccc71/utils/b/e;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v1}, Lccc71/utils/b/f;->b()Lccc71/utils/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lccc71/utils/b/e;->b()Ljava/lang/String;

    move-result-object v1

    .line 227
    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    move-object v1, v7

    .line 242
    :cond_3
    :goto_3
    new-instance v7, Landroid/widget/TableRow;

    iget-object v9, p0, Lccc71/bmw/lib/bs;->a:Lccc71/bmw/lib/br;

    invoke-static {v9}, Lccc71/bmw/lib/br;->a(Lccc71/bmw/lib/br;)Lccc71/bmw/lib/bmw_past_stats;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 243
    new-instance v9, Landroid/widget/TableRow$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/high16 v12, 0x3f80

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 244
    const/4 v10, 0x2

    iput v10, v9, Landroid/widget/TableRow$LayoutParams;->rightMargin:I

    .line 245
    const/4 v10, 0x5

    iput v10, v9, Landroid/widget/TableRow$LayoutParams;->leftMargin:I

    .line 247
    new-instance v10, Landroid/widget/ImageView;

    iget-object v11, p0, Lccc71/bmw/lib/bs;->a:Lccc71/bmw/lib/br;

    invoke-static {v11}, Lccc71/bmw/lib/br;->a(Lccc71/bmw/lib/br;)Lccc71/bmw/lib/bmw_past_stats;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 248
    new-instance v11, Landroid/widget/TextView;

    iget-object v12, p0, Lccc71/bmw/lib/bs;->a:Lccc71/bmw/lib/br;

    invoke-static {v12}, Lccc71/bmw/lib/br;->a(Lccc71/bmw/lib/br;)Lccc71/bmw/lib/bmw_past_stats;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 251
    :try_start_0
    iget-object v12, p0, Lccc71/bmw/lib/bs;->d:Landroid/content/pm/PackageManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v1, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 252
    iget-object v13, p0, Lccc71/bmw/lib/bs;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v13, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v13, p0, Lccc71/bmw/lib/bs;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v13, v12}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iget-object v1, v12, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 261
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/16 v12, 0x20

    const/16 v13, 0x20

    const/high16 v14, 0x3f80

    invoke-direct {v1, v12, v13, v14}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v10, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    invoke-virtual {v7, v11, v9}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    new-instance v1, Landroid/widget/TextView;

    iget-object v10, p0, Lccc71/bmw/lib/bs;->a:Lccc71/bmw/lib/br;

    invoke-static {v10}, Lccc71/bmw/lib/br;->a(Lccc71/bmw/lib/br;)Lccc71/bmw/lib/bmw_past_stats;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 265
    long-to-float v10, v5

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    invoke-static {v10}, Lccc71/utils/al;->a(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    const/4 v10, 0x5

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 267
    const/high16 v10, 0x4180

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 268
    invoke-virtual {v7, v1, v9}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    iget-object v1, p0, Lccc71/bmw/lib/bs;->a:Lccc71/bmw/lib/br;

    invoke-static {v1}, Lccc71/bmw/lib/br;->a(Lccc71/bmw/lib/br;)Lccc71/bmw/lib/bmw_past_stats;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_past_stats;->b(Lccc71/bmw/lib/bmw_past_stats;)I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_7

    .line 272
    new-instance v1, Landroid/widget/TextView;

    iget-object v5, p0, Lccc71/bmw/lib/bs;->a:Lccc71/bmw/lib/br;

    invoke-static {v5}, Lccc71/bmw/lib/br;->a(Lccc71/bmw/lib/br;)Lccc71/bmw/lib/bmw_past_stats;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 273
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 275
    const/high16 v3, 0x4180

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 276
    invoke-virtual {v7, v1, v9}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    :cond_4
    :goto_5
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto/16 :goto_1

    :cond_5
    move-object v1, v7

    .line 226
    goto/16 :goto_2

    .line 234
    :cond_6
    iget-object v1, p0, Lccc71/bmw/lib/bs;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/utils/b/b;

    .line 235
    iget-object v7, v1, Lccc71/utils/b/b;->a:Ljava/lang/String;

    .line 236
    const-wide/16 v3, 0x0

    .line 237
    iget-wide v5, v1, Lccc71/utils/b/b;->b:J

    iget-wide v9, v1, Lccc71/utils/b/b;->c:J

    add-long/2addr v5, v9

    move-object v1, v7

    goto/16 :goto_3

    .line 256
    :catch_0
    move-exception v12

    .line 258
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 280
    :cond_7
    iget-wide v3, p0, Lccc71/bmw/lib/bs;->e:J

    const-wide/16 v10, 0x0

    cmp-long v1, v3, v10

    if-eqz v1, :cond_4

    .line 282
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lccc71/bmw/lib/bs;->a:Lccc71/bmw/lib/br;

    invoke-static {v3}, Lccc71/bmw/lib/br;->a(Lccc71/bmw/lib/br;)Lccc71/bmw/lib/bmw_past_stats;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 283
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v5

    iget-wide v5, p0, Lccc71/bmw/lib/bs;->e:J

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Lccc71/utils/al;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 285
    const/high16 v3, 0x4180

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 286
    invoke-virtual {v7, v1, v9}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5
.end method
