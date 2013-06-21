.class public final Limoblife/cmfilemanager/ad;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/Filterable;


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Limoblife/cmfilemanager/ae;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Limoblife/cmfilemanager/ae;

    invoke-direct {v0, p0}, Limoblife/cmfilemanager/ae;-><init>(Limoblife/cmfilemanager/ad;)V

    iput-object v0, p0, Limoblife/cmfilemanager/ad;->c:Limoblife/cmfilemanager/ae;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limoblife/cmfilemanager/ad;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limoblife/cmfilemanager/ad;->e:Ljava/util/List;

    iput-object p1, p0, Limoblife/cmfilemanager/ad;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Limoblife/cmfilemanager/ad;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Limoblife/cmfilemanager/ad;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Limoblife/cmfilemanager/ad;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Limoblife/cmfilemanager/ad;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Limoblife/cmfilemanager/ad;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Z)V
    .locals 2

    iput-object p1, p0, Limoblife/cmfilemanager/ad;->e:Ljava/util/List;

    if-eqz p2, :cond_0

    iget-object v0, p0, Limoblife/cmfilemanager/ad;->c:Limoblife/cmfilemanager/ae;

    sget-object v1, Limoblife/cmfilemanager/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Limoblife/cmfilemanager/ae;->a(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Limoblife/cmfilemanager/ad;->d:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Limoblife/cmfilemanager/ad;->d:Ljava/util/List;

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Limoblife/cmfilemanager/ad;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    iget-object v0, p0, Limoblife/cmfilemanager/ad;->c:Limoblife/cmfilemanager/ae;

    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Limoblife/cmfilemanager/ad;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Limoblife/cmfilemanager/af;

    iget-object v0, p0, Limoblife/cmfilemanager/ad;->a:Landroid/content/Context;

    iget-object v1, p0, Limoblife/cmfilemanager/ad;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    invoke-direct {p2, v0}, Limoblife/cmfilemanager/af;-><init>(Landroid/content/Context;)V

    :goto_0
    iget-object v0, p0, Limoblife/cmfilemanager/ad;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/cmfilemanager/ac;

    invoke-virtual {v0}, Limoblife/cmfilemanager/ac;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Limoblife/cmfilemanager/af;->a(Ljava/lang/String;)V

    iget-object v0, p0, Limoblife/cmfilemanager/ad;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/cmfilemanager/ac;

    invoke-virtual {v0}, Limoblife/cmfilemanager/ac;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Limoblife/cmfilemanager/af;->b(Ljava/lang/String;)V

    iget-object v0, p0, Limoblife/cmfilemanager/ad;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/cmfilemanager/ac;

    invoke-virtual {v0}, Limoblife/cmfilemanager/ac;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Limoblife/cmfilemanager/af;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Limoblife/cmfilemanager/ad;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/cmfilemanager/ac;

    invoke-virtual {v0}, Limoblife/cmfilemanager/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0xac4116

    :goto_1
    invoke-virtual {p2, v0}, Limoblife/cmfilemanager/af;->a(I)V

    invoke-virtual {p2, v0}, Limoblife/cmfilemanager/af;->b(I)V

    return-object p2

    :cond_0
    check-cast p2, Limoblife/cmfilemanager/af;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Limoblife/cmfilemanager/ad;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1
.end method
