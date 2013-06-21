.class public Lccc71/utils/ccc71_grid_view;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static d:Landroid/widget/LinearLayout$LayoutParams;

.field private static e:Landroid/widget/LinearLayout$LayoutParams;

.field private static f:Landroid/widget/LinearLayout$LayoutParams;

.field private static g:Landroid/widget/LinearLayout$LayoutParams;

.field private static h:Landroid/widget/LinearLayout$LayoutParams;

.field private static i:Landroid/widget/LinearLayout$LayoutParams;

.field private static j:Landroid/widget/LinearLayout$LayoutParams;

.field private static k:Landroid/widget/LinearLayout$LayoutParams;

.field private static l:Z


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Z

.field private m:Lccc71/utils/ak;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0x11

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x5

    .line 20
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lccc71/utils/ccc71_grid_view;->d:Landroid/widget/LinearLayout$LayoutParams;

    .line 21
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lccc71/utils/ccc71_grid_view;->e:Landroid/widget/LinearLayout$LayoutParams;

    .line 22
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v4, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lccc71/utils/ccc71_grid_view;->f:Landroid/widget/LinearLayout$LayoutParams;

    .line 23
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x19

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lccc71/utils/ccc71_grid_view;->g:Landroid/widget/LinearLayout$LayoutParams;

    .line 24
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lccc71/utils/ccc71_grid_view;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 25
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lccc71/utils/ccc71_grid_view;->i:Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v4, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lccc71/utils/ccc71_grid_view;->j:Landroid/widget/LinearLayout$LayoutParams;

    .line 27
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lccc71/utils/ccc71_grid_view;->k:Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lccc71/utils/ccc71_grid_view;->l:Z

    .line 33
    sget-object v0, Lccc71/utils/ccc71_grid_view;->e:Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 34
    sget-object v0, Lccc71/utils/ccc71_grid_view;->e:Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 35
    sget-object v0, Lccc71/utils/ccc71_grid_view;->e:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 37
    sget-object v0, Lccc71/utils/ccc71_grid_view;->g:Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 38
    sget-object v0, Lccc71/utils/ccc71_grid_view;->g:Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 39
    sget-object v0, Lccc71/utils/ccc71_grid_view;->g:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 41
    sget-object v0, Lccc71/utils/ccc71_grid_view;->h:Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 42
    sget-object v0, Lccc71/utils/ccc71_grid_view;->h:Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 43
    sget-object v0, Lccc71/utils/ccc71_grid_view;->h:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44
    sget-object v0, Lccc71/utils/ccc71_grid_view;->h:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0xa

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 45
    sget-object v0, Lccc71/utils/ccc71_grid_view;->h:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0xa

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 46
    sget-object v0, Lccc71/utils/ccc71_grid_view;->h:Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 47
    sget-object v0, Lccc71/utils/ccc71_grid_view;->h:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x14

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 49
    sget-object v0, Lccc71/utils/ccc71_grid_view;->f:Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 50
    sget-object v0, Lccc71/utils/ccc71_grid_view;->f:Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 51
    sget-object v0, Lccc71/utils/ccc71_grid_view;->f:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 53
    sget-object v0, Lccc71/utils/ccc71_grid_view;->j:Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 54
    sget-object v0, Lccc71/utils/ccc71_grid_view;->j:Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 55
    sget-object v0, Lccc71/utils/ccc71_grid_view;->j:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 57
    sget-object v0, Lccc71/utils/ccc71_grid_view;->k:Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 58
    sget-object v0, Lccc71/utils/ccc71_grid_view;->k:Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 59
    sget-object v0, Lccc71/utils/ccc71_grid_view;->k:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 61
    sget-object v0, Lccc71/utils/ccc71_grid_view;->d:Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 62
    sget-object v0, Lccc71/utils/ccc71_grid_view;->d:Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccc71/utils/ccc71_grid_view;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lccc71/utils/ccc71_grid_view;->l:Z

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-object v1, p0, Lccc71/utils/ccc71_grid_view;->b:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/utils/ccc71_grid_view;->c:Z

    .line 351
    iput-object v1, p0, Lccc71/utils/ccc71_grid_view;->m:Lccc71/utils/ak;

    .line 353
    new-instance v0, Lccc71/utils/t;

    invoke-direct {v0, p0}, Lccc71/utils/t;-><init>(Lccc71/utils/ccc71_grid_view;)V

    iput-object v0, p0, Lccc71/utils/ccc71_grid_view;->n:Landroid/view/View$OnClickListener;

    .line 363
    new-instance v0, Lccc71/utils/u;

    invoke-direct {v0, p0}, Lccc71/utils/u;-><init>(Lccc71/utils/ccc71_grid_view;)V

    iput-object v0, p0, Lccc71/utils/ccc71_grid_view;->o:Landroid/view/View$OnClickListener;

    .line 75
    iput-object p1, p0, Lccc71/utils/ccc71_grid_view;->a:Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Lccc71/utils/ccc71_grid_view;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 78
    sget-object v1, Lccc71/utils/ccc71_grid_view;->d:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x4080

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 79
    return-void
.end method

.method static synthetic a(Lccc71/utils/ccc71_grid_view;)Lccc71/utils/ak;
    .locals 1
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, Lccc71/utils/ccc71_grid_view;->m:Lccc71/utils/ak;

    return-object v0
.end method

.method static synthetic b(Lccc71/utils/ccc71_grid_view;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-boolean v0, p0, Lccc71/utils/ccc71_grid_view;->c:Z

    return v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/utils/ccc71_grid_view;->b:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lccc71/utils/ccc71_grid_view;->removeAllViews()V

    .line 89
    return-void
.end method

.method public setHistory(Lccc71/bmw/data/b;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/16 v0, 0xc

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 98
    iput-boolean p2, p0, Lccc71/utils/ccc71_grid_view;->c:Z

    .line 99
    invoke-virtual {p0}, Lccc71/utils/ccc71_grid_view;->removeAllViews()V

    .line 101
    new-instance v1, Lccc71/utils/ccc71_scale_view;

    iget-object v2, p0, Lccc71/utils/ccc71_grid_view;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lccc71/utils/ccc71_scale_view;-><init>(Landroid/content/Context;)V

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v3

    add-int/lit16 v3, v3, 0x76c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lccc71/utils/al;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-static {v3}, Lccc71/utils/al;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccc71/utils/ccc71_scale_view;->setText(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, v4}, Lccc71/utils/ccc71_scale_view;->setId(I)V

    .line 105
    sget-object v2, Lccc71/utils/ccc71_grid_view;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lccc71/utils/ccc71_grid_view;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v2, Lccc71/utils/ccc71_scale_view;

    iget-object v1, p0, Lccc71/utils/ccc71_grid_view;->a:Landroid/content/Context;

    invoke-direct {v2, v1}, Lccc71/utils/ccc71_scale_view;-><init>(Landroid/content/Context;)V

    .line 108
    sget-boolean v1, Lccc71/utils/ccc71_grid_view;->l:Z

    if-eqz v1, :cond_2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v1

    invoke-static {v1}, Lccc71/utils/al;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v1

    invoke-static {v1}, Lccc71/utils/al;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getSeconds()I

    move-result v1

    invoke-static {v1}, Lccc71/utils/al;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lccc71/utils/ccc71_scale_view;->setText(Ljava/lang/String;)V

    .line 136
    :goto_0
    invoke-virtual {v2, v5}, Lccc71/utils/ccc71_scale_view;->setId(I)V

    .line 138
    sget-object v0, Lccc71/utils/ccc71_grid_view;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v2, v0}, Lccc71/utils/ccc71_grid_view;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v0, Lccc71/utils/ccc71_scale_view;

    iget-object v1, p0, Lccc71/utils/ccc71_grid_view;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lccc71/utils/ccc71_scale_view;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {v0, v6}, Lccc71/utils/ccc71_scale_view;->setId(I)V

    .line 142
    iget-object v1, p0, Lccc71/utils/ccc71_grid_view;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_scale_view;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v1, 0xaffffff

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_scale_view;->setBackgroundColor(I)V

    .line 144
    if-eqz p2, :cond_5

    .line 145
    iget v1, p1, Lccc71/bmw/data/b;->h:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lccc71/utils/al;->c(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_scale_view;->setText(Ljava/lang/String;)V

    .line 148
    :goto_1
    sget-object v1, Lccc71/utils/ccc71_grid_view;->f:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lccc71/utils/ccc71_grid_view;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    new-instance v0, Lccc71/utils/ccc71_scale_view;

    iget-object v1, p0, Lccc71/utils/ccc71_grid_view;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lccc71/utils/ccc71_scale_view;-><init>(Landroid/content/Context;)V

    .line 151
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_scale_view;->setId(I)V

    .line 152
    iget v1, p1, Lccc71/bmw/data/b;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_scale_view;->setText(Ljava/lang/String;)V

    .line 154
    sget-object v1, Lccc71/utils/ccc71_grid_view;->f:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lccc71/utils/ccc71_grid_view;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    new-instance v0, Lccc71/utils/ccc71_scale_view;

    iget-object v1, p0, Lccc71/utils/ccc71_grid_view;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lccc71/utils/ccc71_scale_view;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-virtual {v0, v7}, Lccc71/utils/ccc71_scale_view;->setId(I)V

    .line 158
    iget v1, p1, Lccc71/bmw/data/b;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_scale_view;->setText(Ljava/lang/String;)V

    .line 159
    const v1, 0xaffffff

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_scale_view;->setBackgroundColor(I)V

    .line 161
    sget-object v1, Lccc71/utils/ccc71_grid_view;->f:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lccc71/utils/ccc71_grid_view;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    new-instance v0, Lccc71/utils/ccc71_scale_view;

    iget-object v1, p0, Lccc71/utils/ccc71_grid_view;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lccc71/utils/ccc71_scale_view;-><init>(Landroid/content/Context;)V

    .line 164
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_scale_view;->setId(I)V

    .line 165
    iget v1, p1, Lccc71/bmw/data/b;->e:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_scale_view;->setText(Ljava/lang/String;)V

    .line 167
    sget-object v1, Lccc71/utils/ccc71_grid_view;->f:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lccc71/utils/ccc71_grid_view;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lccc71/utils/ccc71_grid_view;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 170
    new-instance v2, Landroid/widget/ImageView;

    iget-object v0, p0, Lccc71/utils/ccc71_grid_view;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 172
    iget-short v0, p1, Lccc71/bmw/data/b;->f:S

    mul-int/lit8 v0, v0, 0x7f

    div-int/lit16 v0, v0, 0x3e8

    .line 174
    if-eqz v0, :cond_0

    .line 175
    shl-int/lit8 v0, v0, 0x18

    const v3, 0x60cccc00

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 177
    :cond_0
    iget-byte v0, p1, Lccc71/bmw/data/b;->g:B

    add-int/lit8 v0, v0, 0x1

    .line 178
    and-int/lit8 v3, v0, 0x2

    if-ne v3, v6, :cond_7

    .line 182
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v5, :cond_6

    const v0, 0x5020ff20

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 191
    :cond_1
    :goto_3
    sget-object v0, Lccc71/utils/ccc71_grid_view;->d:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v1, v4, v0}, Lccc71/utils/ccc71_grid_view;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 192
    sget-object v0, Lccc71/utils/ccc71_grid_view;->d:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v2, v4, v0}, Lccc71/utils/ccc71_grid_view;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 193
    return-void

    .line 115
    :cond_2
    iget-object v1, p1, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v1

    .line 116
    if-ne v1, v0, :cond_3

    .line 118
    const-string v0, "pm"

    .line 134
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Lccc71/utils/al;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v3

    invoke-static {v3}, Lccc71/utils/al;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getSeconds()I

    move-result v3

    invoke-static {v3}, Lccc71/utils/al;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lccc71/utils/ccc71_scale_view;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_3
    if-nez v1, :cond_4

    .line 132
    :goto_5
    const-string v1, "am"

    move v8, v0

    move-object v0, v1

    move v1, v8

    goto :goto_4

    .line 125
    :cond_4
    if-le v1, v0, :cond_9

    .line 127
    add-int/lit8 v1, v1, -0xc

    .line 128
    const-string v0, "pm"

    goto :goto_4

    .line 147
    :cond_5
    iget v1, p1, Lccc71/bmw/data/b;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_scale_view;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 182
    :cond_6
    const v0, -0x5fdf00e0

    goto :goto_2

    .line 184
    :cond_7
    and-int/lit8 v3, v0, 0x4

    if-ne v3, v7, :cond_1

    .line 188
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v5, :cond_8

    const v0, 0x502020ff

    :goto_6
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_3

    :cond_8
    const v0, -0x5fdfdf01

    goto :goto_6

    :cond_9
    move v0, v1

    goto :goto_5
.end method

.method public setOnViewSwitch(Lccc71/utils/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lccc71/utils/ccc71_grid_view;->m:Lccc71/utils/ak;

    .line 349
    return-void
.end method

.method public setText(ZLjava/lang/String;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p2, p0, Lccc71/utils/ccc71_grid_view;->b:Ljava/lang/String;

    .line 199
    invoke-virtual {p0}, Lccc71/utils/ccc71_grid_view;->removeAllViews()V

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    move v5, v0

    .line 203
    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 205
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lccc71/utils/ccc71_grid_view;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 206
    sget v1, Lccc71/bmw/lib/c;->F:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 208
    sget-object v1, Lccc71/utils/ccc71_grid_view;->i:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lccc71/utils/ccc71_grid_view;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    :cond_0
    :goto_1
    return-void

    .line 201
    :cond_1
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    if-eqz v5, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 218
    :goto_2
    array-length v6, v0

    .line 220
    const/4 v1, 0x1

    if-ne v6, v1, :cond_4

    .line 222
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lccc71/utils/ccc71_grid_view;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 223
    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 226
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setId(I)V

    .line 227
    sget-object v0, Lccc71/utils/ccc71_grid_view;->f:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v1, v0}, Lccc71/utils/ccc71_grid_view;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 217
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 229
    :cond_4
    const/4 v1, 0x2

    if-ne v6, v1, :cond_5

    .line 233
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lccc71/utils/ccc71_grid_view;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 234
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 236
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    sget-object v0, Lccc71/utils/ccc71_grid_view;->f:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v1, v0}, Lccc71/utils/ccc71_grid_view;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 242
    :cond_5
    const/4 v3, 0x0

    .line 243
    const/4 v2, 0x0

    .line 244
    const/4 v1, 0x0

    move v4, v1

    move v1, v2

    move v2, v3

    :goto_3
    add-int/lit8 v3, v6, -0x1

    if-ge v4, v3, :cond_0

    .line 246
    aget-object v7, v0, v4

    .line 247
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    .line 249
    add-int/lit8 v3, v6, -0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-int v3, v8

    .line 251
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x42

    if-ne v8, v9, :cond_7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_7

    .line 255
    const/16 v1, 0x2e

    invoke-virtual {v7, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 257
    new-instance v3, Landroid/widget/ImageView;

    iget-object v8, p0, Lccc71/utils/ccc71_grid_view;->a:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 258
    const/4 v8, 0x2

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 260
    iget-object v8, p0, Lccc71/utils/ccc71_grid_view;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x5

    const/4 v11, 0x5

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 262
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 263
    sget-object v1, Lccc71/utils/ccc71_grid_view;->h:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v3, v1}, Lccc71/utils/ccc71_grid_view;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    const/4 v1, 0x1

    .line 244
    :cond_6
    :goto_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3

    .line 270
    :cond_7
    if-eqz v1, :cond_b

    .line 272
    new-instance v8, Landroid/widget/TextView;

    iget-object v9, p0, Lccc71/utils/ccc71_grid_view;->a:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 273
    if-eqz v3, :cond_8

    .line 274
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    :cond_8
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    const/16 v3, 0x51

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 277
    sget v3, Lccc71/utils/ccc71_scale_view;->a:F

    iget-object v7, p0, Lccc71/utils/ccc71_grid_view;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v7

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 279
    const/4 v3, 0x1

    if-eq v4, v3, :cond_9

    const/4 v3, 0x3

    if-ne v4, v3, :cond_a

    .line 280
    :cond_9
    sget-object v3, Lccc71/utils/ccc71_grid_view;->k:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v8, v3}, Lccc71/utils/ccc71_grid_view;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 282
    :cond_a
    sget-object v3, Lccc71/utils/ccc71_grid_view;->j:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v8, v3}, Lccc71/utils/ccc71_grid_view;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 287
    :cond_b
    new-instance v8, Lccc71/utils/ccc71_scale_view;

    iget-object v9, p0, Lccc71/utils/ccc71_grid_view;->a:Landroid/content/Context;

    invoke-direct {v8, v9}, Lccc71/utils/ccc71_scale_view;-><init>(Landroid/content/Context;)V

    .line 288
    invoke-virtual {v8, v4}, Lccc71/utils/ccc71_scale_view;->setId(I)V

    .line 290
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x52

    if-ne v9, v10, :cond_c

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_c

    .line 294
    new-instance v3, Landroid/widget/ImageView;

    iget-object v8, p0, Lccc71/utils/ccc71_grid_view;->a:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 295
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 297
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 298
    sget-object v7, Lccc71/utils/ccc71_grid_view;->g:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v3, v7}, Lccc71/utils/ccc71_grid_view;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    if-nez v4, :cond_6

    .line 301
    const/4 v2, 0x1

    .line 303
    goto :goto_4

    .line 305
    :cond_c
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x40

    if-ne v9, v10, :cond_14

    .line 309
    const-string v9, "@"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 310
    array-length v10, v9

    const/4 v11, 0x3

    if-ne v10, v11, :cond_13

    .line 312
    const/4 v3, 0x1

    aget-object v3, v9, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 313
    const/4 v7, 0x2

    aget-object v7, v9, v7

    invoke-virtual {v8, v7}, Lccc71/utils/ccc71_scale_view;->setText(Ljava/lang/String;)V

    .line 325
    :goto_5
    if-eqz p1, :cond_d

    const/4 v7, 0x1

    if-gt v4, v7, :cond_d

    .line 326
    const/high16 v7, 0x100

    invoke-virtual {v8, v7}, Lccc71/utils/ccc71_scale_view;->setTextColor(I)V

    .line 328
    :cond_d
    if-eqz p1, :cond_e

    const/4 v7, 0x2

    if-ne v4, v7, :cond_e

    .line 329
    iget-object v7, p0, Lccc71/utils/ccc71_grid_view;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v7}, Lccc71/utils/ccc71_scale_view;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    :cond_e
    if-eqz v5, :cond_f

    .line 332
    const/4 v7, 0x1

    invoke-virtual {v8, v7}, Lccc71/utils/ccc71_scale_view;->setUnderline(Z)V

    .line 334
    :cond_f
    if-nez p1, :cond_10

    if-eqz v3, :cond_10

    .line 335
    invoke-virtual {v8, v3}, Lccc71/utils/ccc71_scale_view;->setTextColor(I)V

    .line 337
    :cond_10
    if-eqz v4, :cond_12

    if-eqz v2, :cond_11

    const/4 v3, 0x1

    if-eq v4, v3, :cond_12

    :cond_11
    if-eqz v1, :cond_15

    const/4 v3, 0x1

    if-eq v4, v3, :cond_12

    const/4 v3, 0x3

    if-ne v4, v3, :cond_15

    .line 338
    :cond_12
    sget-object v3, Lccc71/utils/ccc71_grid_view;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v8, v3}, Lccc71/utils/ccc71_grid_view;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 317
    :cond_13
    invoke-virtual {v8, v7}, Lccc71/utils/ccc71_scale_view;->setText(Ljava/lang/String;)V

    goto :goto_5

    .line 322
    :cond_14
    invoke-virtual {v8, v7}, Lccc71/utils/ccc71_scale_view;->setText(Ljava/lang/String;)V

    goto :goto_5

    .line 340
    :cond_15
    sget-object v3, Lccc71/utils/ccc71_grid_view;->f:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v8, v3}, Lccc71/utils/ccc71_grid_view;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4
.end method
