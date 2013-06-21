.class public final Lcom/rubycell/moregame/center/a;
.super Landroid/widget/BaseAdapter;


# static fields
.field public static a:Lcom/rubycell/moregame/a/a/e;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rubycell/moregame/center/a;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rubycell/moregame/center/a;->d:Z

    iput-object p1, p0, Lcom/rubycell/moregame/center/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/rubycell/moregame/center/a;->c:Ljava/util/ArrayList;

    new-instance v0, Lcom/rubycell/moregame/a/a/e;

    const v1, 0x7f02011b

    invoke-direct {v0, p1, v1}, Lcom/rubycell/moregame/a/a/e;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/rubycell/moregame/center/a;->a:Lcom/rubycell/moregame/a/a/e;

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/rubycell/moregame/center/a;->a:Lcom/rubycell/moregame/a/a/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rubycell/moregame/center/a;->a:Lcom/rubycell/moregame/a/a/e;

    invoke-virtual {v0}, Lcom/rubycell/moregame/a/a/e;->a()V

    const/4 v0, 0x0

    sput-object v0, Lcom/rubycell/moregame/center/a;->a:Lcom/rubycell/moregame/a/a/e;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/rubycell/moregame/center/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/rubycell/moregame/center/a;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/rubycell/moregame/center/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/moregame/center/a;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rubycell/moregame/center/a;->d:Z

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/rubycell/moregame/center/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/moregame/center/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const v8, 0x7f0a004b

    const v7, 0x7f0a004a

    const v6, 0x7f0a0049

    const v5, 0x7f0a0048

    iget-object v0, p0, Lcom/rubycell/moregame/center/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/b/a/a;

    if-nez p2, :cond_1

    new-instance v2, Lcom/rubycell/moregame/center/c;

    invoke-direct {v2}, Lcom/rubycell/moregame/center/c;-><init>()V

    iget-object v1, p0, Lcom/rubycell/moregame/center/a;->b:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f030007

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/rubycell/moregame/center/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/rubycell/moregame/center/c;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/rubycell/moregame/center/c;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/rubycell/moregame/center/c;->d:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    move-object v2, v3

    :goto_0
    iget-object v3, v1, Lcom/rubycell/moregame/center/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/rubycell/b/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/rubycell/moregame/center/a;->a:Lcom/rubycell/moregame/a/a/e;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/rubycell/moregame/center/a;->a:Lcom/rubycell/moregame/a/a/e;

    invoke-virtual {v0}, Lcom/rubycell/b/a/a;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/rubycell/moregame/center/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcom/rubycell/moregame/a/a/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    rem-int/lit8 v3, p1, 0x2

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/rubycell/moregame/center/c;->c:Landroid/widget/ImageView;

    const v4, 0x7f020105

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v1, v1, Lcom/rubycell/moregame/center/c;->d:Landroid/widget/Button;

    new-instance v3, Lcom/rubycell/moregame/center/b;

    invoke-direct {v3, p0, v0}, Lcom/rubycell/moregame/center/b;-><init>(Lcom/rubycell/moregame/center/a;Lcom/rubycell/b/a/a;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubycell/moregame/center/c;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/rubycell/moregame/center/c;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/rubycell/moregame/center/c;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/rubycell/moregame/center/c;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v1, Lcom/rubycell/moregame/center/c;->d:Landroid/widget/Button;

    move-object v2, p2

    goto :goto_0

    :cond_2
    iget-object v3, v1, Lcom/rubycell/moregame/center/c;->c:Landroid/widget/ImageView;

    const v4, 0x7f020104

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
