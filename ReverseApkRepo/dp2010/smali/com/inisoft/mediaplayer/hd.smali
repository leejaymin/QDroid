.class public final Lcom/inisoft/mediaplayer/hd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public a:Z

.field private b:Z

.field private c:Ljava/util/ArrayList;

.field private d:Landroid/app/AlertDialog$Builder;

.field private e:Z

.field private f:Lcom/inisoft/mediaplayer/fs;

.field private g:I

.field private h:I

.field private i:Lcom/inisoft/mediaplayer/hk;


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/fs;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/hd;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/hd;->i:Lcom/inisoft/mediaplayer/hk;

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/hd;->e:Z

    iput-object p1, p0, Lcom/inisoft/mediaplayer/hd;->f:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/fs;->O()Lcom/inisoft/mediaplayer/gm;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/inisoft/mediaplayer/gm;->b:I

    iput v1, p0, Lcom/inisoft/mediaplayer/hd;->g:I

    iget v1, v0, Lcom/inisoft/mediaplayer/gm;->c:I

    iput v1, p0, Lcom/inisoft/mediaplayer/hd;->h:I

    iget-boolean v0, v0, Lcom/inisoft/mediaplayer/gm;->a:Z

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/hd;->a:Z

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Lcom/inisoft/mediaplayer/hd;->g:I

    iput v1, p0, Lcom/inisoft/mediaplayer/hd;->h:I

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/hd;->a:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/hd;I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/hd;->g:I

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/hd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/hd;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/hd;)I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/hd;->g:I

    return v0
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/hd;)Lcom/inisoft/mediaplayer/fs;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hd;->f:Lcom/inisoft/mediaplayer/fs;

    return-object v0
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/hd;)I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/hd;->h:I

    return v0
.end method

.method static synthetic e(Lcom/inisoft/mediaplayer/hd;)Lcom/inisoft/mediaplayer/hk;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hd;->i:Lcom/inisoft/mediaplayer/hk;

    return-object v0
.end method

.method static synthetic f(Lcom/inisoft/mediaplayer/hd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/hd;->b:Z

    return v0
.end method

.method static synthetic g(Lcom/inisoft/mediaplayer/hd;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hd;->c:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Z)V
    .locals 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean p2, p0, Lcom/inisoft/mediaplayer/hd;->b:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/hd;->d:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hd;->d:Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hd;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hd;->f:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->X()Lcom/inisoft/mediaplayer/hv;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    const-string v3, "Subtitle"

    invoke-virtual {v4, v0, v3}, Lcom/inisoft/mediaplayer/hv;->a(ZLjava/lang/String;)I

    move-result v5

    const/4 v0, 0x0

    const-string v3, "Subtitle"

    invoke-virtual {v4, v0, v3}, Lcom/inisoft/mediaplayer/hv;->a(ZLjava/lang/String;)I

    move-result v6

    if-lez v6, :cond_7

    move v3, v1

    move v0, v1

    :goto_1
    iget-object v7, v4, Lcom/inisoft/mediaplayer/hv;->a:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v3, v7, :cond_4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/hd;->a:Z

    move v1, v0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/hd;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/inisoft/mediaplayer/hi;

    invoke-direct {v2, p0}, Lcom/inisoft/mediaplayer/hi;-><init>(Lcom/inisoft/mediaplayer/hd;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a0076

    const-string v2, "Select subtitle"

    invoke-static {p1, v0, v2}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-lez v6, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0a0078

    const-string v3, "External"

    invoke-static {p1, v2, v3}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/inisoft/mediaplayer/hd;->d:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/inisoft/mediaplayer/hh;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/hd;->c:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1, v2}, Lcom/inisoft/mediaplayer/hh;-><init>(Lcom/inisoft/mediaplayer/hd;Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/hd;->f:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->w()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x2

    if-lt v6, v2, :cond_b

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/hd;->e:Z

    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundResource(I)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hd;->d:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hd;->d:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a00a5

    new-instance v2, Lcom/inisoft/mediaplayer/he;

    invoke-direct {v2, p0}, Lcom/inisoft/mediaplayer/he;-><init>(Lcom/inisoft/mediaplayer/hd;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/hd;->d:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/inisoft/mediaplayer/hg;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/hg;-><init>(Lcom/inisoft/mediaplayer/hd;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hd;->d:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hd;->i:Lcom/inisoft/mediaplayer/hk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hd;->i:Lcom/inisoft/mediaplayer/hk;

    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/hd;->b:Z

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/hk;->a()V

    goto/16 :goto_0

    :cond_4
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v4, v3, v7}, Lcom/inisoft/mediaplayer/hv;->a(IZ)Lcom/inisoft/mediaplayer/hu;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v8, v7, Lcom/inisoft/mediaplayer/hu;->c:Ljava/lang/String;

    const-string v9, "smi"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v0, v2

    :cond_5
    iget-object v8, p0, Lcom/inisoft/mediaplayer/hd;->c:Ljava/util/ArrayList;

    new-instance v9, Lcom/inisoft/mediaplayer/hi;

    invoke-direct {v9, p0, v1, v7, v0}, Lcom/inisoft/mediaplayer/hi;-><init>(Lcom/inisoft/mediaplayer/hd;ILcom/inisoft/mediaplayer/hu;Z)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_7
    if-lez v5, :cond_2

    move v2, v1

    move v0, v1

    :goto_5
    iget-object v3, v4, Lcom/inisoft/mediaplayer/hv;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/hd;->a:Z

    goto/16 :goto_2

    :cond_8
    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Lcom/inisoft/mediaplayer/hv;->a(IZ)Lcom/inisoft/mediaplayer/hu;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v7, p0, Lcom/inisoft/mediaplayer/hd;->c:Ljava/util/ArrayList;

    new-instance v8, Lcom/inisoft/mediaplayer/hi;

    invoke-direct {v8, p0, v0, v3}, Lcom/inisoft/mediaplayer/hi;-><init>(Lcom/inisoft/mediaplayer/hd;ILcom/inisoft/mediaplayer/hu;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    if-lez v5, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0a0077

    const-string v3, "Embedded"

    invoke-static {p1, v2, v3}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_b
    iget-object v1, p0, Lcom/inisoft/mediaplayer/hd;->d:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/inisoft/mediaplayer/hf;

    invoke-direct {v2, p0}, Lcom/inisoft/mediaplayer/hf;-><init>(Lcom/inisoft/mediaplayer/hd;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public final a(Lcom/inisoft/mediaplayer/hk;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/hd;->i:Lcom/inisoft/mediaplayer/hk;

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11

    const/4 v7, 0x1

    const/4 v10, -0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/hd;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inisoft/mediaplayer/hj;

    invoke-interface {v1}, Lcom/inisoft/mediaplayer/hj;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v1, Lcom/inisoft/mediaplayer/hi;

    move v8, v6

    move v4, v6

    move v5, v6

    :goto_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    if-lt v8, v2, :cond_2

    check-cast p2, Landroid/widget/CheckedTextView;

    iget-boolean v1, v1, Lcom/inisoft/mediaplayer/hi;->e:Z

    if-nez v1, :cond_6

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/inisoft/mediaplayer/hd;->g:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/inisoft/mediaplayer/hd;->h:I

    move v4, v6

    move v3, v6

    :goto_3
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    if-lt v4, v1, :cond_9

    iget v1, p0, Lcom/inisoft/mediaplayer/hd;->g:I

    if-ne v1, v10, :cond_0

    iget v1, p0, Lcom/inisoft/mediaplayer/hd;->h:I

    if-ne v1, v10, :cond_0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_4
    if-ltz v2, :cond_0

    :try_start_1
    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {p1, v8}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/widget/CheckedTextView;

    move-object v3, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v2, p0, Lcom/inisoft/mediaplayer/hd;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inisoft/mediaplayer/hj;

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v2}, Lcom/inisoft/mediaplayer/hj;->a()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v2, p0, Lcom/inisoft/mediaplayer/hd;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inisoft/mediaplayer/hj;

    add-int/lit8 v5, v5, 0x1

    :cond_3
    check-cast v2, Lcom/inisoft/mediaplayer/hi;

    iget-boolean v9, v1, Lcom/inisoft/mediaplayer/hi;->e:Z

    if-eqz v9, :cond_4

    iget-boolean v2, v2, Lcom/inisoft/mediaplayer/hi;->e:Z

    if-nez v2, :cond_5

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    move v2, v4

    move v3, v5

    :goto_5
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v5, v3

    move v4, v2

    goto :goto_1

    :catch_1
    move-exception v2

    move v2, v4

    move v3, v5

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_d

    add-int/lit8 v2, v4, 0x1

    move v3, v5

    goto :goto_5

    :cond_6
    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->isChecked()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v1

    const/4 v2, 0x2

    if-lt v4, v2, :cond_7

    if-nez v1, :cond_7

    :try_start_5
    iget-object v1, p0, Lcom/inisoft/mediaplayer/hd;->f:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->a()Lcom/inisoft/mediaplayer/PlayerActivity;

    move-result-object v1

    const v2, 0x7f0a0055

    const-string v3, "Supports up to two"

    invoke-static {v1, v2, v3}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/hd;->f:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->a()Lcom/inisoft/mediaplayer/PlayerActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_0

    :cond_7
    if-eqz v1, :cond_8

    move v1, v6

    :goto_6
    :try_start_6
    invoke-virtual {p2, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    :cond_8
    move v1, v7

    goto :goto_6

    :cond_9
    :try_start_7
    invoke-virtual {p1, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :try_start_8
    iget-object v2, p0, Lcom/inisoft/mediaplayer/hd;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inisoft/mediaplayer/hj;

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2}, Lcom/inisoft/mediaplayer/hj;->a()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v2, p0, Lcom/inisoft/mediaplayer/hd;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inisoft/mediaplayer/hj;

    add-int/lit8 v3, v3, 0x1

    :cond_a
    check-cast v2, Lcom/inisoft/mediaplayer/hi;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/inisoft/mediaplayer/hd;->g:I

    if-ne v1, v10, :cond_b

    iget-object v1, v2, Lcom/inisoft/mediaplayer/hi;->c:Lcom/inisoft/mediaplayer/hu;

    iget-boolean v1, v1, Lcom/inisoft/mediaplayer/hu;->a:Z

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/hd;->a:Z

    iget v1, v2, Lcom/inisoft/mediaplayer/hi;->b:I

    iput v1, p0, Lcom/inisoft/mediaplayer/hd;->g:I

    move v1, v3

    :goto_7
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    goto/16 :goto_3

    :catch_3
    move-exception v1

    move v1, v3

    goto :goto_7

    :cond_b
    iget v1, p0, Lcom/inisoft/mediaplayer/hd;->h:I

    if-ne v1, v10, :cond_c

    iget v1, v2, Lcom/inisoft/mediaplayer/hi;->b:I

    iput v1, p0, Lcom/inisoft/mediaplayer/hd;->h:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_c
    move v1, v3

    goto :goto_7

    :catch_4
    move-exception v1

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto/16 :goto_4

    :cond_d
    move v2, v4

    move v3, v5

    goto/16 :goto_5
.end method
