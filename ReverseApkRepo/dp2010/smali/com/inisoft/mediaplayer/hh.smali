.class final Lcom/inisoft/mediaplayer/hh;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/hd;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;

.field private d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/hd;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/hh;->a:Lcom/inisoft/mediaplayer/hd;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/inisoft/mediaplayer/hh;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/inisoft/mediaplayer/hh;->c:Ljava/util/ArrayList;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/hh;->d:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/hh;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inisoft/mediaplayer/hj;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lcom/inisoft/mediaplayer/hj;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Lcom/inisoft/mediaplayer/hl;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/hh;->d:Landroid/view/LayoutInflater;

    const v3, 0x7f030037

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    :try_start_1
    iget-object v2, p0, Lcom/inisoft/mediaplayer/hh;->d:Landroid/view/LayoutInflater;

    const v4, 0x1090011

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f05008d

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/hl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object v2, v3

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    :try_start_2
    check-cast v1, Lcom/inisoft/mediaplayer/hi;

    iget-boolean v2, v1, Lcom/inisoft/mediaplayer/hi;->a:Z

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/inisoft/mediaplayer/hh;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/hd;->a(Lcom/inisoft/mediaplayer/hd;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/inisoft/mediaplayer/hh;->d:Landroid/view/LayoutInflater;

    const v2, 0x1090010

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    :goto_2
    :try_start_3
    move-object v0, v2

    check-cast v0, Landroid/widget/CheckedTextView;

    move-object v1, v0

    if-eqz v1, :cond_2

    const v3, 0x7f0a008b

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setText(I)V

    :cond_2
    iget-object v3, p0, Lcom/inisoft/mediaplayer/hh;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v3}, Lcom/inisoft/mediaplayer/hd;->b(Lcom/inisoft/mediaplayer/hd;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v3, v2

    goto :goto_0

    :cond_3
    :try_start_4
    iget-object v1, p0, Lcom/inisoft/mediaplayer/hh;->d:Landroid/view/LayoutInflater;

    const v2, 0x1090012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/inisoft/mediaplayer/hh;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/hd;->a(Lcom/inisoft/mediaplayer/hd;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/inisoft/mediaplayer/hi;->c:Lcom/inisoft/mediaplayer/hu;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/hu;->c:Ljava/lang/String;

    const-string v3, "smi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/inisoft/mediaplayer/hh;->d:Landroid/view/LayoutInflater;

    const v3, 0x1090010

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v3

    :goto_3
    :try_start_5
    move-object v0, v3

    check-cast v0, Landroid/widget/CheckedTextView;

    move-object v2, v0

    iget-object v4, v1, Lcom/inisoft/mediaplayer/hi;->c:Lcom/inisoft/mediaplayer/hu;

    iget-object v4, v4, Lcom/inisoft/mediaplayer/hu;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/inisoft/mediaplayer/hi;->c:Lcom/inisoft/mediaplayer/hu;

    iget-boolean v5, v5, Lcom/inisoft/mediaplayer/hu;->a:Z

    if-eqz v5, :cond_5

    invoke-static {v4}, Lcom/inisoft/mediaplayer/dp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    if-eqz v2, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/inisoft/mediaplayer/hi;->c:Lcom/inisoft/mediaplayer/hu;

    iget-object v5, v5, Lcom/inisoft/mediaplayer/hu;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v4, p0, Lcom/inisoft/mediaplayer/hh;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v4}, Lcom/inisoft/mediaplayer/hd;->c(Lcom/inisoft/mediaplayer/hd;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inisoft/mediaplayer/fs;->O()Lcom/inisoft/mediaplayer/gm;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-boolean v4, v4, Lcom/inisoft/mediaplayer/gm;->a:Z

    iget-object v5, v1, Lcom/inisoft/mediaplayer/hi;->c:Lcom/inisoft/mediaplayer/hu;

    iget-boolean v5, v5, Lcom/inisoft/mediaplayer/hu;->a:Z

    if-ne v4, v5, :cond_a

    iget-object v4, p0, Lcom/inisoft/mediaplayer/hh;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v4}, Lcom/inisoft/mediaplayer/hd;->b(Lcom/inisoft/mediaplayer/hd;)I

    move-result v4

    iget v5, v1, Lcom/inisoft/mediaplayer/hi;->b:I

    if-eq v4, v5, :cond_7

    iget-object v4, p0, Lcom/inisoft/mediaplayer/hh;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v4}, Lcom/inisoft/mediaplayer/hd;->c(Lcom/inisoft/mediaplayer/hd;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inisoft/mediaplayer/fs;->w()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/inisoft/mediaplayer/hh;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v4}, Lcom/inisoft/mediaplayer/hd;->d(Lcom/inisoft/mediaplayer/hd;)I

    move-result v4

    iget v1, v1, Lcom/inisoft/mediaplayer/hi;->b:I

    if-ne v4, v1, :cond_a

    :cond_7
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :cond_8
    :try_start_6
    iget-object v2, p0, Lcom/inisoft/mediaplayer/hh;->d:Landroid/view/LayoutInflater;

    const v3, 0x109000f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_3

    :cond_9
    iget-object v2, p0, Lcom/inisoft/mediaplayer/hh;->d:Landroid/view/LayoutInflater;

    const v3, 0x1090012

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v3

    goto/16 :goto_3

    :cond_a
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    :catch_2
    move-exception v1

    move-object v3, p2

    goto/16 :goto_0

    :cond_b
    move-object v3, p2

    goto/16 :goto_0
.end method
