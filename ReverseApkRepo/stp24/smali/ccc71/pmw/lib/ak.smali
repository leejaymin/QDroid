.class final Lccc71/pmw/lib/ak;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_analyzer_list;

.field private final synthetic b:Landroid/widget/TableLayout;

.field private final synthetic c:F


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_analyzer_list;Landroid/widget/TableLayout;F)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ak;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    iput-object p2, p0, Lccc71/pmw/lib/ak;->b:Landroid/widget/TableLayout;

    iput p3, p0, Lccc71/pmw/lib/ak;->c:F

    .line 83
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method

.method private varargs d()Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lccc71/pmw/lib/ak;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lccc71/pmw/lib/ak;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_analyzer_list;->a(Lccc71/pmw/lib/pmw_analyzer_list;[Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lccc71/pmw/lib/ak;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer_list;->b(Lccc71/pmw/lib/pmw_analyzer_list;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lccc71/pmw/lib/ak;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_analyzer_list;->a(Lccc71/pmw/lib/pmw_analyzer_list;[Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lccc71/pmw/lib/ak;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    sget v2, Lccc71/pmw/lib/g;->dV:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_analyzer_list;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/ak;->d([Ljava/lang/Object;)V

    .line 100
    :cond_1
    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/ak;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer_list;->b(Lccc71/pmw/lib/pmw_analyzer_list;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 102
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->b()Ljava/lang/String;

    move-result-object v1

    .line 103
    iget-object v0, p0, Lccc71/pmw/lib/ak;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer_list;->b(Lccc71/pmw/lib/pmw_analyzer_list;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lccc71/pmw/lib/ak;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer_list;->b(Lccc71/pmw/lib/pmw_analyzer_list;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_3

    .line 117
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_3
    iget-object v2, p0, Lccc71/pmw/lib/ak;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_analyzer_list;->b(Lccc71/pmw/lib/pmw_analyzer_list;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iget-object v4, p0, Lccc71/pmw/lib/ak;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_analyzer_list;->b(Lccc71/pmw/lib/pmw_analyzer_list;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 108
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lccc71/pmw/lib/ak;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-static {v6}, Lccc71/pmw/lib/pmw_settings;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lccc71/pmw/lib/ak;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-static {v6}, Lccc71/pmw/lib/pmw_analyzer_list;->b(Lccc71/pmw/lib/pmw_analyzer_list;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccc71/pmw/lib/pmw_recorder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v3}, Lccc71/pmw/lib/ak;->d([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lccc71/pmw/lib/ak;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/ak;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer_list;->b(Lccc71/pmw/lib/pmw_analyzer_list;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/ak;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer_list;->b(Lccc71/pmw/lib/pmw_analyzer_list;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/widget/TableRow;

    iget-object v1, p0, Lccc71/pmw/lib/ak;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lccc71/pmw/lib/ak;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget v2, p0, Lccc71/pmw/lib/ak;->c:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v2, "no recording found"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lccc71/pmw/lib/ak;->b:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected final varargs b([Ljava/lang/Object;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 123
    invoke-super {p0, p1}, Lccc71/utils/android/a;->b([Ljava/lang/Object;)V

    .line 125
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    .line 126
    aget-object v1, p1, v7

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 128
    iget-object v2, p0, Lccc71/pmw/lib/ak;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    iget-object v3, p0, Lccc71/pmw/lib/ak;->b:Landroid/widget/TableLayout;

    iget v4, p0, Lccc71/pmw/lib/ak;->c:F

    const/high16 v5, 0x4000

    add-float/2addr v4, v5

    invoke-static {v2, v3, v0, v1, v4}, Lccc71/pmw/lib/pmw_analyzer_list;->a(Lccc71/pmw/lib/pmw_analyzer_list;Landroid/widget/TableLayout;Ljava/lang/String;IF)V

    .line 130
    if-ne v1, v6, :cond_0

    .line 132
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lccc71/pmw/lib/ak;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 133
    sget v1, Lccc71/pmw/lib/c;->aS:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 134
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v1, v6, v7}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v1, p0, Lccc71/pmw/lib/ak;->b:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 137
    :cond_0
    return-void
.end method
