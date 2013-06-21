.class public Lccc71/bmw/lib/bmw_battery_compare;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 183
    new-instance v0, Lccc71/bmw/lib/k;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/k;-><init>(Lccc71/bmw/lib/bmw_battery_compare;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_battery_compare;->a:Landroid/view/View$OnClickListener;

    .line 228
    new-instance v0, Lccc71/bmw/lib/m;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/m;-><init>(Lccc71/bmw/lib/bmw_battery_compare;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_battery_compare;->b:Landroid/view/View$OnClickListener;

    .line 22
    return-void
.end method

.method private a()V
    .locals 13

    .prologue
    const/4 v12, -0x2

    const v11, 0x48afc800

    const/high16 v10, 0x4180

    const/16 v9, 0x11

    .line 36
    sget v0, Lccc71/bmw/lib/e;->aY:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_battery_compare;->setContentView(I)V

    .line 38
    new-instance v1, Lccc71/bmw/data/a/b;

    invoke-direct {v1, p0}, Lccc71/bmw/data/a/b;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {v1}, Lccc71/bmw/data/a/b;->a()V

    .line 40
    invoke-virtual {v1}, Lccc71/bmw/data/a/b;->e()[Lccc71/bmw/data/a/a;

    move-result-object v3

    .line 41
    invoke-virtual {v1}, Lccc71/bmw/data/a/b;->b()V

    .line 43
    sget v0, Lccc71/bmw/lib/d;->bp:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_battery_compare;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 44
    invoke-virtual {v0}, Landroid/widget/TableRow;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 45
    array-length v4, v3

    .line 46
    invoke-virtual {v1}, Lccc71/bmw/data/a/b;->c()I

    move-result v5

    .line 48
    sget v1, Lccc71/bmw/lib/d;->dn:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_battery_compare;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 49
    sget-boolean v2, Lccc71/bmw/lib/bmw_watcher;->y:Z

    if-eqz v2, :cond_0

    .line 50
    sget v2, Lccc71/bmw/lib/g;->aY:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 52
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_1

    .line 174
    sget v0, Lccc71/bmw/lib/d;->cr:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_battery_compare;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 175
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 176
    iput v4, v1, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 177
    iput v9, v1, Landroid/widget/TableRow$LayoutParams;->gravity:I

    .line 178
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    sget v0, Lccc71/bmw/lib/d;->cq:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_battery_compare;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 180
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    return-void

    .line 54
    :cond_1
    aget-object v1, v3, v2

    iget v1, v1, Lccc71/bmw/data/a/a;->a:I

    if-ne v1, v5, :cond_2

    .line 56
    aget-object v1, v3, v2

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;)Lccc71/bmw/data/a;

    move-result-object v6

    iput-object v6, v1, Lccc71/bmw/data/a/a;->n:Lccc71/bmw/data/a;

    .line 58
    :cond_2
    add-int/lit8 v1, v2, 0x1

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    .line 60
    sget v1, Lccc71/bmw/lib/d;->bp:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_battery_compare;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 61
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 62
    aget-object v7, v3, v2

    iget-object v7, v7, Lccc71/bmw/data/a/a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 64
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 65
    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 67
    sget v1, Lccc71/bmw/lib/d;->aX:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_battery_compare;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 68
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 69
    aget-object v7, v3, v2

    iget-object v7, v7, Lccc71/bmw/data/a/a;->n:Lccc71/bmw/data/a;

    if-eqz v7, :cond_3

    .line 70
    aget-object v7, v3, v2

    iget-object v7, v7, Lccc71/bmw/data/a/a;->n:Lccc71/bmw/data/a;

    iget v7, v7, Lccc71/bmw/data/a;->e:F

    div-float v7, v11, v7

    float-to-long v7, v7

    invoke-static {v7, v8}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :goto_1
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 74
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 75
    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 77
    sget v1, Lccc71/bmw/lib/d;->bw:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_battery_compare;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 78
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 79
    aget-object v7, v3, v2

    iget-object v7, v7, Lccc71/bmw/data/a/a;->n:Lccc71/bmw/data/a;

    if-eqz v7, :cond_4

    .line 80
    aget-object v7, v3, v2

    iget-object v7, v7, Lccc71/bmw/data/a/a;->n:Lccc71/bmw/data/a;

    iget v7, v7, Lccc71/bmw/data/a;->d:F

    div-float v7, v11, v7

    float-to-long v7, v7

    invoke-static {v7, v8}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_2
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 84
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 85
    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 87
    sget v1, Lccc71/bmw/lib/d;->bd:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_battery_compare;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 88
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 89
    aget-object v7, v3, v2

    iget-object v7, v7, Lccc71/bmw/data/a/a;->n:Lccc71/bmw/data/a;

    if-eqz v7, :cond_5

    .line 90
    aget-object v7, v3, v2

    iget-object v7, v7, Lccc71/bmw/data/a/a;->n:Lccc71/bmw/data/a;

    iget v7, v7, Lccc71/bmw/data/a;->f:F

    div-float v7, v11, v7

    float-to-long v7, v7

    invoke-static {v7, v8}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_3
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 94
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 95
    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 97
    sget v1, Lccc71/bmw/lib/d;->bx:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_battery_compare;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 98
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v7, Ljava/lang/StringBuilder;

    aget-object v8, v3, v2

    iget v8, v8, Lccc71/bmw/data/a/a;->h:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v2

    iget v8, v8, Lccc71/bmw/data/a/a;->i:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 101
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 102
    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 104
    sget v1, Lccc71/bmw/lib/d;->br:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_battery_compare;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 105
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    aget-object v8, v3, v2

    iget v8, v8, Lccc71/bmw/data/a/a;->d:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v2

    iget v8, v8, Lccc71/bmw/data/a/a;->e:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 108
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 109
    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 111
    sget v1, Lccc71/bmw/lib/d;->bq:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_battery_compare;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 112
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    aget-object v8, v3, v2

    iget v8, v8, Lccc71/bmw/data/a/a;->c:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "mAh"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 115
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 116
    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 118
    sget v1, Lccc71/bmw/lib/d;->bg:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_battery_compare;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 119
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    aget-object v8, v3, v2

    iget v8, v8, Lccc71/bmw/data/a/a;->k:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "mAh"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 122
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 125
    sget v1, Lccc71/bmw/lib/d;->bm:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_battery_compare;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 126
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    aget-object v8, v3, v2

    iget v8, v8, Lccc71/bmw/data/a/a;->j:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "mAh"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 129
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 130
    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 132
    sget v1, Lccc71/bmw/lib/d;->aY:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_battery_compare;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 133
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v7, Ljava/lang/StringBuilder;

    aget-object v8, v3, v2

    iget v8, v8, Lccc71/bmw/data/a/a;->l:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 136
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 137
    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 139
    sget v1, Lccc71/bmw/lib/d;->bs:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_battery_compare;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 140
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u00b1"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v3, v2

    iget v8, v8, Lccc71/bmw/data/a/a;->m:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 143
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 144
    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 146
    sget v1, Lccc71/bmw/lib/d;->be:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_battery_compare;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 147
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 148
    sget v7, Lccc71/bmw/lib/g;->bE:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 149
    aget-object v7, v3, v2

    iget v7, v7, Lccc71/bmw/data/a/a;->a:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setId(I)V

    .line 150
    iget-object v7, p0, Lccc71/bmw/lib/bmw_battery_compare;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {v6, v9}, Landroid/widget/Button;->setGravity(I)V

    .line 152
    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 154
    sget v1, Lccc71/bmw/lib/d;->bc:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_battery_compare;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 155
    aget-object v6, v3, v2

    iget v6, v6, Lccc71/bmw/data/a/a;->a:I

    if-ne v6, v5, :cond_6

    .line 157
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 158
    sget v7, Lccc71/bmw/lib/g;->bF:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 159
    const v7, -0x333334

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 161
    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 52
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0

    .line 72
    :cond_3
    const-string v7, "n/a"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 82
    :cond_4
    const-string v7, "n/a"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 92
    :cond_5
    const-string v7, "n/a"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 165
    :cond_6
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 166
    sget v7, Lccc71/bmw/lib/g;->bC:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 167
    aget-object v7, v3, v2

    iget v7, v7, Lccc71/bmw/data/a/a;->a:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setId(I)V

    .line 168
    iget-object v7, p0, Lccc71/bmw/lib/bmw_battery_compare;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-virtual {v6, v9}, Landroid/widget/Button;->setGravity(I)V

    .line 170
    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    goto :goto_4
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_battery_compare;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_battery_compare;->a()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    const-string v0, "battery_widget_monitor"

    const-string v1, "bmw_battery_compare - onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lccc71/utils/al;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 254
    const-string v0, "battery_widget_monitor"

    const-string v1, "bmw_calibration - onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 257
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_battery_compare;->a()V

    .line 258
    return-void
.end method
