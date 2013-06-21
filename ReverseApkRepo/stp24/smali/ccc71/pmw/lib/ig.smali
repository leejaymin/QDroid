.class final Lccc71/pmw/lib/ig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/if;

.field private final synthetic b:Landroid/widget/TableLayout;

.field private final synthetic c:Lccc71/pmw/b/q;

.field private final synthetic d:Lccc71/pmw/a/ar;

.field private final synthetic e:I

.field private final synthetic f:F

.field private final synthetic g:I

.field private final synthetic h:I

.field private final synthetic i:I

.field private final synthetic j:I


# direct methods
.method constructor <init>(Lccc71/pmw/lib/if;Landroid/widget/TableLayout;Lccc71/pmw/b/q;Lccc71/pmw/a/ar;IFIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ig;->a:Lccc71/pmw/lib/if;

    iput-object p2, p0, Lccc71/pmw/lib/ig;->b:Landroid/widget/TableLayout;

    iput-object p3, p0, Lccc71/pmw/lib/ig;->c:Lccc71/pmw/b/q;

    iput-object p4, p0, Lccc71/pmw/lib/ig;->d:Lccc71/pmw/a/ar;

    iput p5, p0, Lccc71/pmw/lib/ig;->e:I

    iput p6, p0, Lccc71/pmw/lib/ig;->f:F

    iput p7, p0, Lccc71/pmw/lib/ig;->g:I

    iput p8, p0, Lccc71/pmw/lib/ig;->h:I

    iput p9, p0, Lccc71/pmw/lib/ig;->i:I

    iput p10, p0, Lccc71/pmw/lib/ig;->j:I

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    const/high16 v13, 0x6000

    const/4 v12, 0x5

    const/4 v11, 0x2

    .line 253
    iget-object v0, p0, Lccc71/pmw/lib/ig;->b:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 255
    const/4 v0, 0x0

    .line 256
    iget-object v1, p0, Lccc71/pmw/lib/ig;->c:Lccc71/pmw/b/q;

    invoke-virtual {v1}, Lccc71/pmw/b/q;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 344
    if-nez v1, :cond_1

    .line 346
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lccc71/pmw/lib/ig;->a:Lccc71/pmw/lib/if;

    invoke-static {v1}, Lccc71/pmw/lib/if;->a(Lccc71/pmw/lib/if;)Lccc71/pmw/lib/ie;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/ie;->a(Lccc71/pmw/lib/ie;)Lccc71/pmw/lib/pmw_memory_tweak;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 347
    invoke-virtual {v0, v12, v11, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 348
    iget v1, p0, Lccc71/pmw/lib/ig;->f:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 349
    iget-object v1, p0, Lccc71/pmw/lib/ig;->a:Lccc71/pmw/lib/if;

    invoke-static {v1}, Lccc71/pmw/lib/if;->a(Lccc71/pmw/lib/if;)Lccc71/pmw/lib/ie;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/ie;->a(Lccc71/pmw/lib/ie;)Lccc71/pmw/lib/pmw_memory_tweak;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ep:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_memory_tweak;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v1, p0, Lccc71/pmw/lib/ig;->b:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 352
    :cond_1
    return-void

    .line 258
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/p;

    .line 260
    if-eqz v0, :cond_0

    iget-object v2, p0, Lccc71/pmw/lib/ig;->d:Lccc71/pmw/a/ar;

    iget v2, v0, Lccc71/pmw/b/p;->v:I

    invoke-static {v2}, Lccc71/pmw/a/ar;->a(I)I

    move-result v2

    iget v4, p0, Lccc71/pmw/lib/ig;->e:I

    if-ne v2, v4, :cond_0

    .line 261
    iget-object v2, v0, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-static {v2}, Lccc71/pmw/b/q;->d(Ljava/lang/String;)Z

    move-result v2

    .line 264
    invoke-static {v0}, Lccc71/pmw/b/q;->g(Lccc71/pmw/b/p;)Z

    move-result v4

    .line 265
    iget-boolean v5, v0, Lccc71/pmw/b/p;->g:Z

    .line 267
    if-eqz v4, :cond_3

    if-nez v5, :cond_3

    .line 269
    iget-object v6, v0, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-static {v6}, Lccc71/pmw/b/q;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 271
    iget-object v6, p0, Lccc71/pmw/lib/ig;->c:Lccc71/pmw/b/q;

    invoke-virtual {v6, v0}, Lccc71/pmw/b/q;->c(Lccc71/pmw/b/p;)V

    .line 275
    :cond_3
    new-instance v6, Landroid/widget/TableRow;

    iget-object v7, p0, Lccc71/pmw/lib/ig;->a:Lccc71/pmw/lib/if;

    invoke-static {v7}, Lccc71/pmw/lib/if;->a(Lccc71/pmw/lib/if;)Lccc71/pmw/lib/ie;

    move-result-object v7

    invoke-static {v7}, Lccc71/pmw/lib/ie;->a(Lccc71/pmw/lib/ie;)Lccc71/pmw/lib/pmw_memory_tweak;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 277
    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lccc71/pmw/lib/ig;->a:Lccc71/pmw/lib/if;

    invoke-static {v8}, Lccc71/pmw/lib/if;->a(Lccc71/pmw/lib/if;)Lccc71/pmw/lib/ie;

    move-result-object v8

    invoke-static {v8}, Lccc71/pmw/lib/ie;->a(Lccc71/pmw/lib/ie;)Lccc71/pmw/lib/pmw_memory_tweak;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 278
    iget-object v8, v0, Lccc71/pmw/b/p;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5

    .line 280
    iget-object v8, v0, Lccc71/pmw/b/p;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    :goto_1
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 290
    new-instance v8, Landroid/widget/TableRow$LayoutParams;

    const/16 v9, 0x20

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lccc71/pmw/lib/ig;->a:Lccc71/pmw/lib/if;

    invoke-static {v8}, Lccc71/pmw/lib/if;->a(Lccc71/pmw/lib/if;)Lccc71/pmw/lib/ie;

    move-result-object v8

    invoke-static {v8}, Lccc71/pmw/lib/ie;->a(Lccc71/pmw/lib/ie;)Lccc71/pmw/lib/pmw_memory_tweak;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 293
    iget-object v8, v0, Lccc71/pmw/b/p;->e:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 294
    iget-object v8, v0, Lccc71/pmw/b/p;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :goto_2
    invoke-virtual {v7, v12, v11, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 298
    iget v8, p0, Lccc71/pmw/lib/ig;->f:F

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 299
    if-eqz v4, :cond_a

    .line 301
    if-eqz v5, :cond_8

    .line 303
    iget v2, p0, Lccc71/pmw/lib/ig;->g:I

    sub-int/2addr v2, v13

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    :goto_3
    invoke-virtual {v6, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 328
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lccc71/pmw/lib/ig;->a:Lccc71/pmw/lib/if;

    invoke-static {v4}, Lccc71/pmw/lib/if;->a(Lccc71/pmw/lib/if;)Lccc71/pmw/lib/ie;

    move-result-object v4

    invoke-static {v4}, Lccc71/pmw/lib/ie;->a(Lccc71/pmw/lib/ie;)Lccc71/pmw/lib/pmw_memory_tweak;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 329
    invoke-virtual {v2, v11, v11, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 330
    iget v4, p0, Lccc71/pmw/lib/ig;->f:F

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 331
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 332
    iget v4, v0, Lccc71/pmw/b/p;->q:I

    invoke-static {v4}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {v6, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 335
    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    .line 337
    iget v1, p0, Lccc71/pmw/lib/ig;->j:I

    invoke-virtual {v6, v1}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 339
    :cond_4
    iget v0, v0, Lccc71/pmw/b/p;->a:I

    invoke-virtual {v6, v0}, Landroid/widget/TableRow;->setId(I)V

    .line 340
    iget-object v0, p0, Lccc71/pmw/lib/ig;->a:Lccc71/pmw/lib/if;

    invoke-static {v0}, Lccc71/pmw/lib/if;->a(Lccc71/pmw/lib/if;)Lccc71/pmw/lib/ie;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/ie;->a(Lccc71/pmw/lib/ie;)Lccc71/pmw/lib/pmw_memory_tweak;

    move-result-object v0

    iget-object v0, v0, Lccc71/pmw/lib/pmw_memory_tweak;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v0}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v0, p0, Lccc71/pmw/lib/ig;->b:Landroid/widget/TableLayout;

    invoke-virtual {v0, v6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    move v1, v2

    goto/16 :goto_0

    .line 284
    :cond_5
    iget-boolean v8, v0, Lccc71/pmw/b/p;->g:Z

    if-eqz v8, :cond_6

    .line 285
    sget v8, Lccc71/pmw/lib/c;->N:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 287
    :cond_6
    sget v8, Lccc71/pmw/lib/c;->w:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 296
    :cond_7
    iget-object v8, v0, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 307
    :cond_8
    if-eqz v2, :cond_9

    .line 309
    iget v2, p0, Lccc71/pmw/lib/ig;->h:I

    sub-int/2addr v2, v13

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 313
    :cond_9
    iget v2, p0, Lccc71/pmw/lib/ig;->h:I

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 317
    :cond_a
    if-eqz v2, :cond_b

    .line 319
    iget v2, p0, Lccc71/pmw/lib/ig;->i:I

    sub-int/2addr v2, v13

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 323
    :cond_b
    iget v2, p0, Lccc71/pmw/lib/ig;->i:I

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3
.end method
