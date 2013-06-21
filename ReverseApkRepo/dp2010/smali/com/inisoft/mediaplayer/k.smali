.class public final Lcom/inisoft/mediaplayer/k;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field a:Landroid/widget/FrameLayout$LayoutParams;

.field b:Landroid/content/SharedPreferences;

.field final synthetic c:Lcom/inisoft/mediaplayer/e;

.field private d:Ljava/util/ArrayList;

.field private e:Lcom/inisoft/mediaplayer/hn;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/e;Landroid/content/Context;ILjava/util/ArrayList;Lcom/inisoft/mediaplayer/hn;Z)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/k;->c:Lcom/inisoft/mediaplayer/e;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p4, p0, Lcom/inisoft/mediaplayer/k;->d:Ljava/util/ArrayList;

    if-eqz p5, :cond_0

    iput-object p5, p0, Lcom/inisoft/mediaplayer/k;->e:Lcom/inisoft/mediaplayer/hn;

    :cond_0
    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/k;->h:Z

    iput-boolean p6, p0, Lcom/inisoft/mediaplayer/k;->g:Z

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/k;->f:Z

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/inisoft/mediaplayer/k;->i:I

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/inisoft/mediaplayer/k;->i:I

    mul-int/lit8 v1, v1, 0x48

    div-int/lit16 v1, v1, 0xa0

    iget v2, p0, Lcom/inisoft/mediaplayer/k;->i:I

    mul-int/lit8 v2, v2, 0x40

    div-int/lit16 v2, v2, 0xa0

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/k;->a:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p1, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/k;->b:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/k;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/k;->h:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/k;->e:Lcom/inisoft/mediaplayer/hn;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/k;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/k;->e:Lcom/inisoft/mediaplayer/hn;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/hn;->b()V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/k;->e:Lcom/inisoft/mediaplayer/hn;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/k;->d:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lcom/inisoft/mediaplayer/k;->g:Z

    invoke-virtual {v1, v2, v3}, Lcom/inisoft/mediaplayer/hn;->a(Ljava/util/ArrayList;Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/k;->h:Z

    :cond_0
    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f03003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    if-eqz v0, :cond_8

    const v1, 0x7f050092

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f050093

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f05004a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f050090

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f050091

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/inisoft/mediaplayer/ProgressDrawView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->j()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_b

    invoke-static {v6, v7}, Lcom/inisoft/mediaplayer/hw;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget v4, p0, Lcom/inisoft/mediaplayer/k;->i:I

    invoke-virtual {v5, v4}, Lcom/inisoft/mediaplayer/ProgressDrawView;->a(I)V

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->d()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-lez v4, :cond_a

    invoke-virtual {v5, v8, v9, v6, v7}, Lcom/inisoft/mediaplayer/ProgressDrawView;->a(JJ)V

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/inisoft/mediaplayer/ProgressDrawView;->setVisibility(I)V

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->f()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, ""

    :cond_3
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->b()Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->h()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/inisoft/mediaplayer/k;->b:Landroid/content/SharedPreferences;

    const-string v5, "theme"

    const-string v6, "Light"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Light"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v4, 0x55

    const/16 v5, 0x55

    const/16 v6, 0x55

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, -0x333334

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/k;->f:Z

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->p()Lcom/inisoft/mediaplayer/ck;

    move-result-object v1

    sget-object v2, Lcom/inisoft/mediaplayer/ck;->f:Lcom/inisoft/mediaplayer/ck;

    if-ne v1, v2, :cond_11

    :cond_5
    const v1, 0x7f020068

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    :goto_4
    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->p()Lcom/inisoft/mediaplayer/ck;

    move-result-object v1

    sget-object v2, Lcom/inisoft/mediaplayer/ck;->c:Lcom/inisoft/mediaplayer/ck;

    if-eq v1, v2, :cond_7

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->p()Lcom/inisoft/mediaplayer/ck;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/ck;->d:Lcom/inisoft/mediaplayer/ck;

    if-ne v0, v1, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/inisoft/mediaplayer/k;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_5
    return-object p2

    :cond_9
    const v1, 0x7f03003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    :cond_a
    const/16 v4, 0x8

    :try_start_1
    invoke-virtual {v5, v4}, Lcom/inisoft/mediaplayer/ProgressDrawView;->setVisibility(I)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_b
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Lcom/inisoft/mediaplayer/ProgressDrawView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_c
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_d
    const v4, -0x333334

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, -0x777778

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_e
    iget-object v4, p0, Lcom/inisoft/mediaplayer/k;->c:Lcom/inisoft/mediaplayer/e;

    invoke-static {v4}, Lcom/inisoft/mediaplayer/e;->h(Lcom/inisoft/mediaplayer/e;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x54

    const/16 v4, 0xa9

    const/16 v5, 0xeb

    invoke-static {v2, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_f
    iget-object v4, p0, Lcom/inisoft/mediaplayer/k;->b:Landroid/content/SharedPreferences;

    const-string v5, "theme"

    const-string v6, "Light"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Light"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/16 v4, 0x55

    const/16 v5, 0x55

    const/16 v6, 0x55

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, -0x333334

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    :cond_10
    const v4, -0x333334

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, -0x777778

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    :cond_11
    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->b()Z

    move-result v1

    if-eqz v1, :cond_12

    const v1, 0x7f020068

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    :cond_12
    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_14

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/k;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const v1, 0x7f020091

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    :cond_13
    const v1, 0x7f02009d

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/k;->g:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/inisoft/mediaplayer/k;->c:Lcom/inisoft/mediaplayer/e;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/e;->i(Lcom/inisoft/mediaplayer/e;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/inisoft/mediaplayer/k;->e:Lcom/inisoft/mediaplayer/hn;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/inisoft/mediaplayer/k;->e:Lcom/inisoft/mediaplayer/hn;

    new-instance v2, Lcom/inisoft/mediaplayer/hp;

    invoke-direct {v2, v1, p2, p1}, Lcom/inisoft/mediaplayer/hp;-><init>(Lcom/inisoft/mediaplayer/hn;Landroid/view/View;I)V

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/hp;->start()V

    goto/16 :goto_4

    :cond_14
    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/k;->g:Z

    if-nez v1, :cond_15

    const v1, 0x7f02009d

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    :cond_15
    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method
