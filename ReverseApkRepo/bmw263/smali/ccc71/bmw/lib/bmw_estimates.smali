.class public Lccc71/bmw/lib/bmw_estimates;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static a:Lccc71/bmw/lib/an;


# instance fields
.field b:Landroid/view/View$OnClickListener;

.field private c:I

.field private d:Lccc71/bmw/data/a;

.field private e:[[I

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lccc71/bmw/lib/bmw_estimates;->c:I

    .line 30
    iput-boolean v1, p0, Lccc71/bmw/lib/bmw_estimates;->f:Z

    .line 31
    iput-boolean v1, p0, Lccc71/bmw/lib/bmw_estimates;->g:Z

    .line 232
    new-instance v0, Lccc71/bmw/lib/al;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/al;-><init>(Lccc71/bmw/lib/bmw_estimates;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_estimates;->b:Landroid/view/View$OnClickListener;

    .line 22
    return-void
.end method

.method private a(Landroid/view/View$OnClickListener;IIII[I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x48afc800

    .line 185
    sget v0, Lccc71/bmw/lib/d;->bB:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 186
    iget-boolean v1, p0, Lccc71/bmw/lib/bmw_estimates;->f:Z

    if-eqz v1, :cond_0

    .line 187
    int-to-long v1, p2

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    sget v0, Lccc71/bmw/lib/d;->bI:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 193
    iget-boolean v1, p0, Lccc71/bmw/lib/bmw_estimates;->f:Z

    if-eqz v1, :cond_1

    .line 194
    int-to-long v1, p3

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    sget v0, Lccc71/bmw/lib/d;->bT:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 200
    iget-boolean v1, p0, Lccc71/bmw/lib/bmw_estimates;->f:Z

    if-eqz v1, :cond_2

    .line 201
    int-to-long v1, p5

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    sget v0, Lccc71/bmw/lib/d;->bK:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 207
    iget-boolean v1, p0, Lccc71/bmw/lib/bmw_estimates;->f:Z

    if-eqz v1, :cond_3

    .line 208
    int-to-long v1, p4

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    sget v0, Lccc71/bmw/lib/d;->bF:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 214
    iget-object v1, p0, Lccc71/bmw/lib/bmw_estimates;->d:Lccc71/bmw/data/a;

    iget v1, v1, Lccc71/bmw/data/a;->f:F

    div-float v1, v3, v1

    float-to-long v1, v1

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    sget v0, Lccc71/bmw/lib/d;->by:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 217
    iget-object v1, p0, Lccc71/bmw/lib/bmw_estimates;->d:Lccc71/bmw/data/a;

    iget v1, v1, Lccc71/bmw/data/a;->e:F

    div-float v1, v3, v1

    float-to-long v1, v1

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    sget v0, Lccc71/bmw/lib/d;->ca:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 220
    iget-object v1, p0, Lccc71/bmw/lib/bmw_estimates;->d:Lccc71/bmw/data/a;

    iget v1, v1, Lccc71/bmw/data/a;->d:F

    div-float v1, v3, v1

    float-to-long v1, v1

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    sget v0, Lccc71/bmw/lib/d;->bG:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 223
    const/4 v1, 0x2

    aget v1, p6, v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    sget v0, Lccc71/bmw/lib/d;->bz:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 226
    const/4 v1, 0x0

    aget v1, p6, v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    sget v0, Lccc71/bmw/lib/d;->cb:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 229
    const/4 v1, 0x1

    aget v1, p6, v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    return-void

    .line 189
    :cond_0
    int-to-long v1, p2

    invoke-static {p0, v1, v2}, Lccc71/utils/al;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 196
    :cond_1
    int-to-long v1, p3

    invoke-static {p0, v1, v2}, Lccc71/utils/al;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 203
    :cond_2
    int-to-long v1, p5

    invoke-static {p0, v1, v2}, Lccc71/utils/al;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 210
    :cond_3
    int-to-long v1, p4

    invoke-static {p0, v1, v2}, Lccc71/utils/al;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_estimates;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput p1, p0, Lccc71/bmw/lib/bmw_estimates;->c:I

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_estimates;Landroid/view/View$OnClickListener;IIII[I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct/range {p0 .. p6}, Lccc71/bmw/lib/bmw_estimates;->a(Landroid/view/View$OnClickListener;IIII[I)V

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_estimates;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-boolean p1, p0, Lccc71/bmw/lib/bmw_estimates;->f:Z

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_estimates;)[[I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lccc71/bmw/lib/bmw_estimates;->e:[[I

    return-object v0
.end method

.method static synthetic b(Lccc71/bmw/lib/bmw_estimates;)I
    .locals 1
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lccc71/bmw/lib/bmw_estimates;->c:I

    return v0
.end method

.method static synthetic c(Lccc71/bmw/lib/bmw_estimates;)Lccc71/bmw/data/a;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lccc71/bmw/lib/bmw_estimates;->d:Lccc71/bmw/data/a;

    return-object v0
.end method

.method static synthetic d(Lccc71/bmw/lib/bmw_estimates;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lccc71/bmw/lib/bmw_estimates;->f:Z

    return v0
.end method


# virtual methods
.method final a()V
    .locals 15

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v14, 0x0

    .line 121
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;)Lccc71/bmw/data/a;

    move-result-object v0

    iput-object v0, p0, Lccc71/bmw/lib/bmw_estimates;->d:Lccc71/bmw/data/a;

    .line 123
    iget-object v0, p0, Lccc71/bmw/lib/bmw_estimates;->d:Lccc71/bmw/data/a;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_watcher;->a(Lccc71/bmw/data/a;)I

    move-result v2

    .line 124
    iget-object v0, p0, Lccc71/bmw/lib/bmw_estimates;->d:Lccc71/bmw/data/a;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_watcher;->b(Lccc71/bmw/data/a;)I

    move-result v3

    .line 125
    iget-object v0, p0, Lccc71/bmw/lib/bmw_estimates;->d:Lccc71/bmw/data/a;

    invoke-static {v0, v2, v3}, Lccc71/bmw/lib/bmw_watcher;->a(Lccc71/bmw/data/a;II)I

    move-result v4

    .line 126
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->d()I

    move-result v5

    .line 127
    const/4 v0, 0x4

    new-array v0, v0, [[I

    .line 128
    new-array v1, v8, [I

    const v6, -0xffff01

    aput v6, v1, v14

    aput v2, v1, v7

    aput-object v1, v0, v14

    .line 129
    new-array v1, v8, [I

    const/high16 v6, -0x1

    aput v6, v1, v14

    aput v3, v1, v7

    aput-object v1, v0, v7

    .line 130
    new-array v1, v8, [I

    const v6, -0xff0100

    aput v6, v1, v14

    aput v5, v1, v7

    aput-object v1, v0, v8

    .line 131
    new-array v1, v8, [I

    const v6, -0x333334

    aput v6, v1, v14

    aput v4, v1, v7

    aput-object v1, v0, v9

    .line 127
    iput-object v0, p0, Lccc71/bmw/lib/bmw_estimates;->e:[[I

    .line 133
    new-array v6, v9, [I

    iget-object v0, p0, Lccc71/bmw/lib/bmw_estimates;->d:Lccc71/bmw/data/a;

    invoke-static {v0, v7}, Lccc71/bmw/lib/bmw_watcher;->a(Lccc71/bmw/data/a;I)I

    move-result v0

    aput v0, v6, v14

    iget-object v0, p0, Lccc71/bmw/lib/bmw_estimates;->d:Lccc71/bmw/data/a;

    invoke-static {v0, v8}, Lccc71/bmw/lib/bmw_watcher;->a(Lccc71/bmw/data/a;I)I

    move-result v0

    aput v0, v6, v7

    iget-object v0, p0, Lccc71/bmw/lib/bmw_estimates;->d:Lccc71/bmw/data/a;

    invoke-static {v0, v14}, Lccc71/bmw/lib/bmw_watcher;->a(Lccc71/bmw/data/a;I)I

    move-result v0

    aput v0, v6, v8

    .line 135
    new-instance v0, Lccc71/bmw/lib/am;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lccc71/bmw/lib/am;-><init>(Lccc71/bmw/lib/bmw_estimates;IIII[I)V

    move-object v7, p0

    move-object v8, v0

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move-object v13, v6

    .line 146
    invoke-direct/range {v7 .. v13}, Lccc71/bmw/lib/bmw_estimates;->a(Landroid/view/View$OnClickListener;IIII[I)V

    .line 148
    sget v0, Lccc71/bmw/lib/d;->bC:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 149
    sget v1, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-nez v1, :cond_0

    sget v1, Lccc71/bmw/lib/c;->o:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    sget v0, Lccc71/bmw/lib/d;->bE:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/bmw_watcher;->h:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    sget v0, Lccc71/bmw/lib/d;->br:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/bmw_watcher;->h:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    sget v0, Lccc71/bmw/lib/d;->bR:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccc71/bmw/lib/bmw_estimates;->d:Lccc71/bmw/data/a;

    iget v2, v2, Lccc71/bmw/data/a;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    sget v0, Lccc71/bmw/lib/d;->bS:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 161
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lccc71/bmw/lib/bmw_estimates;->d:Lccc71/bmw/data/a;

    iget-wide v3, v3, Lccc71/bmw/data/a;->a:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    sget v0, Lccc71/bmw/lib/d;->bL:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_ge_view;

    .line 164
    iget-boolean v1, p0, Lccc71/bmw/lib/bmw_estimates;->g:Z

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {v0, v14}, Lccc71/utils/ccc71_ge_view;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lccc71/bmw/lib/bmw_estimates;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_ge_view;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->P(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_ge_view;->setVGrid(I)V

    .line 170
    sget-object v1, Lccc71/bmw/lib/ak;->a:Lccc71/bmw/lib/ak;

    invoke-static {v1, v14}, Lccc71/bmw/lib/bi;->a(Lccc71/bmw/lib/ak;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 171
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v2

    .line 173
    iget-object v3, p0, Lccc71/bmw/lib/bmw_estimates;->d:Lccc71/bmw/data/a;

    iget-wide v3, v3, Lccc71/bmw/data/a;->a:J

    iget v5, p0, Lccc71/bmw/lib/bmw_estimates;->c:I

    iget-object v6, p0, Lccc71/bmw/lib/bmw_estimates;->e:[[I

    invoke-virtual {v0, v3, v4, v5, v6}, Lccc71/utils/ccc71_ge_view;->setEstimates(JI[[I)V

    .line 174
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->R(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lccc71/utils/ccc71_ge_view;->setCurves(Z)V

    .line 175
    sget-object v3, Lccc71/bmw/lib/ak;->a:Lccc71/bmw/lib/ak;

    sget-object v4, Lccc71/bmw/lib/aj;->b:[I

    aget v4, v4, v14

    invoke-virtual {v0, v3, v1, v2, v4}, Lccc71/utils/ccc71_ge_view;->setData(Lccc71/bmw/lib/ak;Ljava/util/ArrayList;II)V

    .line 181
    :goto_1
    return-void

    .line 149
    :cond_0
    sget v1, Lccc71/bmw/lib/c;->j:I

    goto/16 :goto_0

    .line 179
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_ge_view;->setVisibility(I)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 79
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lccc71/utils/al;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 81
    sget v0, Lccc71/bmw/lib/e;->bc:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_estimates;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_estimates;->a()V

    .line 84
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    const-string v0, "battery_widget_monitor"

    const-string v1, "bmw_estimates - onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    new-instance v0, Lccc71/bmw/lib/an;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/an;-><init>(Lccc71/bmw/lib/bmw_estimates;)V

    sput-object v0, Lccc71/bmw/lib/bmw_estimates;->a:Lccc71/bmw/lib/an;

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "battery_widget_monitor"

    const-string v1, "bmw_estimates - onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 93
    const/4 v0, 0x0

    sput-object v0, Lccc71/bmw/lib/bmw_estimates;->a:Lccc71/bmw/lib/an;

    .line 94
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 72
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "battery_widget_monitor"

    const-string v1, "bmw_estimates - onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 59
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lccc71/utils/al;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 61
    sget v0, Lccc71/bmw/lib/e;->bc:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_estimates;->setContentView(I)V

    .line 63
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->i(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lccc71/bmw/lib/bmw_estimates;->f:Z

    .line 65
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_estimates;->a()V

    .line 66
    return-void
.end method
