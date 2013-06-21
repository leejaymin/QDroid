.class final Limoblife/cmfilemanager/ae;
.super Landroid/widget/Filter;


# instance fields
.field final synthetic a:Limoblife/cmfilemanager/ad;


# direct methods
.method constructor <init>(Limoblife/cmfilemanager/ad;)V
    .locals 0

    iput-object p1, p0, Limoblife/cmfilemanager/ae;->a:Limoblife/cmfilemanager/ad;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0, p1}, Limoblife/cmfilemanager/ae;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Limoblife/cmfilemanager/ad;->a(Ljava/lang/String;)V

    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v0, p0, Limoblife/cmfilemanager/ae;->a:Limoblife/cmfilemanager/ad;

    invoke-static {v0}, Limoblife/cmfilemanager/ad;->a(Limoblife/cmfilemanager/ad;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    iput v3, v2, Landroid/widget/Filter$FilterResults;->count:I

    iput-object v1, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Limoblife/cmfilemanager/ae;->a:Limoblife/cmfilemanager/ad;

    invoke-static {v0}, Limoblife/cmfilemanager/ad;->a(Limoblife/cmfilemanager/ad;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iput v4, v2, Landroid/widget/Filter$FilterResults;->count:I

    iget-object v0, p0, Limoblife/cmfilemanager/ae;->a:Limoblife/cmfilemanager/ad;

    invoke-static {v0}, Limoblife/cmfilemanager/ad;->a(Limoblife/cmfilemanager/ad;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    move-object v0, v2

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    move v1, v3

    :goto_2
    if-lt v3, v4, :cond_4

    iput v1, v2, Landroid/widget/Filter$FilterResults;->count:I

    iput-object v5, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    move-object v0, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Limoblife/cmfilemanager/ae;->a:Limoblife/cmfilemanager/ad;

    invoke-static {v0}, Limoblife/cmfilemanager/ad;->a(Limoblife/cmfilemanager/ad;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/cmfilemanager/ac;

    invoke-virtual {v0}, Limoblife/cmfilemanager/ac;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    iget-object v1, p0, Limoblife/cmfilemanager/ae;->a:Limoblife/cmfilemanager/ad;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Limoblife/cmfilemanager/ad;->a(Limoblife/cmfilemanager/ad;Ljava/util/List;)V

    iget-object v0, p0, Limoblife/cmfilemanager/ae;->a:Limoblife/cmfilemanager/ad;

    invoke-virtual {v0}, Limoblife/cmfilemanager/ad;->notifyDataSetChanged()V

    return-void
.end method
