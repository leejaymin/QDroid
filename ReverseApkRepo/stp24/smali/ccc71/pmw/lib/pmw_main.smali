.class public Lccc71/pmw/lib/pmw_main;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/app/Dialog;

.field private c:[I

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lccc71/pmw/lib/pmw_main;->a:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    .line 32
    const/16 v0, 0xb

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lccc71/pmw/lib/c;->Z:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 33
    sget v2, Lccc71/pmw/lib/c;->aa:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lccc71/pmw/lib/c;->ab:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 34
    sget v2, Lccc71/pmw/lib/c;->ac:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lccc71/pmw/lib/c;->ad:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 35
    sget v2, Lccc71/pmw/lib/c;->ae:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lccc71/pmw/lib/c;->af:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 36
    sget v2, Lccc71/pmw/lib/c;->Y:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lccc71/pmw/lib/c;->ag:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 37
    sget v2, Lccc71/pmw/lib/c;->ah:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lccc71/pmw/lib/c;->ai:I

    aput v2, v0, v1

    iput-object v0, p0, Lccc71/pmw/lib/pmw_main;->c:[I

    .line 683
    new-instance v0, Lccc71/pmw/lib/hf;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/hf;-><init>(Lccc71/pmw/lib/pmw_main;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_main;->d:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_main;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_main;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lccc71/pmw/lib/pmw_main;->a:I

    return v0
.end method

.method private e()V
    .locals 13

    .prologue
    .line 103
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_main;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 104
    const-string v1, "ccc71.pmw.current_widget_id"

    iget v2, p0, Lccc71/pmw/lib/pmw_main;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_main;->a:I

    .line 106
    iget v0, p0, Lccc71/pmw/lib/pmw_main;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 108
    invoke-static {}, Lccc71/pmw/lib/pmw_widget;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 110
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_main;->a:I

    .line 113
    :cond_0
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->p(Landroid/content/Context;)F

    move-result v3

    .line 114
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->o(Landroid/content/Context;)I

    move-result v4

    .line 116
    const-class v0, Lccc71/pmw/lib/pmw_main_popup;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    sget v0, Lccc71/pmw/lib/e;->bn:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->setContentView(I)V

    .line 119
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1030010

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 120
    new-instance v0, Landroid/app/Dialog;

    sget v1, Lccc71/pmw/lib/h;->a:I

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    .line 121
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v1, Lccc71/pmw/lib/e;->bm:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 122
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    new-instance v1, Lccc71/pmw/lib/hq;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/hq;-><init>(Lccc71/pmw/lib/pmw_main;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 131
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v1, Lccc71/pmw/lib/d;->bB:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 132
    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v5

    .line 133
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v5, :cond_4

    .line 142
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 149
    :goto_1
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccc71/utils/android/y;->a(Landroid/content/Context;)Z

    move-result v1

    .line 150
    iget-object v2, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    .line 152
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_main;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 153
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccc71/utils/android/y;->b(Landroid/content/Context;)I

    move-result v6

    .line 155
    new-instance v7, Landroid/widget/TableRow$LayoutParams;

    const/4 v0, -0x1

    const/4 v8, -0x1

    const/high16 v9, 0x3f80

    invoke-direct {v7, v0, v8, v9}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 156
    if-eqz v1, :cond_7

    .line 157
    const/16 v0, 0x14

    const/16 v8, 0x14

    const/16 v9, 0x14

    const/16 v10, 0x14

    invoke-virtual {v7, v0, v8, v9, v10}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 161
    :goto_2
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v8, Lccc71/pmw/lib/d;->h:I

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_3
    check-cast v0, Landroid/widget/Button;

    .line 162
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 163
    iget-object v8, p0, Lccc71/pmw/lib/pmw_main;->c:[I

    aget v8, v8, v4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 164
    if-eqz v1, :cond_9

    .line 165
    const/16 v8, 0x14

    const/16 v9, 0x1e

    const/16 v10, 0x14

    const/16 v11, 0x14

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 168
    :goto_4
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance v8, Lccc71/pmw/lib/hu;

    invoke-direct {v8, p0, v2}, Lccc71/pmw/lib/hu;-><init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v8, Lccc71/pmw/lib/d;->i:I

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_5
    check-cast v0, Landroid/widget/Button;

    .line 185
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 186
    iget-object v8, p0, Lccc71/pmw/lib/pmw_main;->c:[I

    aget v8, v8, v4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 187
    if-eqz v1, :cond_b

    .line 188
    const/16 v8, 0x14

    const/16 v9, 0x1e

    const/16 v10, 0x14

    const/16 v11, 0x14

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 191
    :goto_6
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance v8, Lccc71/pmw/lib/hv;

    invoke-direct {v8, p0, v2}, Lccc71/pmw/lib/hv;-><init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v8, Lccc71/pmw/lib/d;->o:I

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_7
    check-cast v0, Landroid/widget/Button;

    .line 208
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 209
    iget-object v8, p0, Lccc71/pmw/lib/pmw_main;->c:[I

    aget v8, v8, v4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 210
    if-eqz v1, :cond_d

    .line 211
    const/16 v8, 0x14

    const/16 v9, 0x1e

    const/16 v10, 0x14

    const/16 v11, 0x14

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 214
    :goto_8
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    sget-boolean v8, Lccc71/pmw/b/h;->c:Z

    if-eqz v8, :cond_e

    .line 217
    new-instance v8, Lccc71/pmw/lib/hw;

    invoke-direct {v8, p0, v2}, Lccc71/pmw/lib/hw;-><init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    :goto_9
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v8, Lccc71/pmw/lib/d;->Z:I

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_a
    check-cast v0, Landroid/widget/Button;

    .line 239
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 240
    iget-object v8, p0, Lccc71/pmw/lib/pmw_main;->c:[I

    aget v8, v8, v4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 241
    if-eqz v1, :cond_10

    .line 242
    const/16 v8, 0x14

    const/16 v9, 0x1e

    const/16 v10, 0x14

    const/16 v11, 0x14

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 245
    :goto_b
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->a()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 248
    sget v8, Lccc71/pmw/lib/g;->bX:I

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    .line 249
    const/4 v8, 0x0

    sget v9, Lccc71/pmw/lib/c;->an:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 256
    :goto_c
    new-instance v8, Lccc71/pmw/lib/hx;

    invoke-direct {v8, p0, v2}, Lccc71/pmw/lib/hx;-><init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v8, Lccc71/pmw/lib/d;->ao:I

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_d
    check-cast v0, Landroid/widget/Button;

    .line 281
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 282
    iget-object v8, p0, Lccc71/pmw/lib/pmw_main;->c:[I

    aget v8, v8, v4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 283
    if-eqz v1, :cond_13

    .line 284
    const/16 v8, 0x14

    const/16 v9, 0x1e

    const/16 v10, 0x14

    const/16 v11, 0x14

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 287
    :goto_e
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    new-instance v8, Lccc71/pmw/lib/hy;

    invoke-direct {v8, p0, v2}, Lccc71/pmw/lib/hy;-><init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v8, Lccc71/pmw/lib/d;->z:I

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_f
    check-cast v0, Landroid/widget/Button;

    .line 305
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 306
    iget-object v8, p0, Lccc71/pmw/lib/pmw_main;->c:[I

    aget v8, v8, v4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 307
    if-eqz v1, :cond_15

    .line 308
    const/16 v8, 0x14

    const/16 v9, 0x1e

    const/16 v10, 0x14

    const/16 v11, 0x14

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 311
    :goto_10
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    new-instance v8, Lccc71/pmw/lib/hz;

    invoke-direct {v8, p0, v2}, Lccc71/pmw/lib/hz;-><init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v8, Lccc71/pmw/lib/d;->m:I

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_11
    check-cast v0, Landroid/widget/Button;

    .line 329
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 330
    iget-object v8, p0, Lccc71/pmw/lib/pmw_main;->c:[I

    aget v8, v8, v4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 331
    if-eqz v1, :cond_17

    .line 332
    const/16 v8, 0x14

    const/16 v9, 0x1e

    const/16 v10, 0x14

    const/16 v11, 0x14

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 335
    :goto_12
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    new-instance v8, Lccc71/pmw/lib/ia;

    invoke-direct {v8, p0, v2}, Lccc71/pmw/lib/ia;-><init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v8, Lccc71/pmw/lib/d;->ay:I

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_13
    check-cast v0, Landroid/widget/Button;

    .line 353
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 354
    iget-object v8, p0, Lccc71/pmw/lib/pmw_main;->c:[I

    aget v8, v8, v4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 355
    if-eqz v1, :cond_19

    .line 356
    const/16 v8, 0x14

    const/16 v9, 0x1e

    const/16 v10, 0x14

    const/16 v11, 0x14

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 359
    :goto_14
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    new-instance v8, Lccc71/pmw/lib/hg;

    invoke-direct {v8, p0, v2}, Lccc71/pmw/lib/hg;-><init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v8, Lccc71/pmw/lib/d;->ar:I

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_15
    check-cast v0, Landroid/widget/Button;

    .line 377
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 378
    iget-object v8, p0, Lccc71/pmw/lib/pmw_main;->c:[I

    aget v8, v8, v4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 379
    if-eqz v1, :cond_1b

    .line 380
    const/16 v8, 0x14

    const/16 v9, 0x1e

    const/16 v10, 0x14

    const/16 v11, 0x14

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 383
    :goto_16
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    new-instance v8, Lccc71/pmw/lib/hh;

    invoke-direct {v8, p0, v2}, Lccc71/pmw/lib/hh;-><init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v8, Lccc71/pmw/lib/d;->au:I

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_17
    check-cast v0, Landroid/widget/Button;

    .line 401
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 402
    iget-object v8, p0, Lccc71/pmw/lib/pmw_main;->c:[I

    aget v8, v8, v4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 403
    if-eqz v1, :cond_1d

    .line 404
    const/16 v8, 0x14

    const/16 v9, 0x1e

    const/16 v10, 0x14

    const/16 v11, 0x14

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 407
    :goto_18
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    new-instance v8, Lccc71/pmw/lib/hi;

    invoke-direct {v8, p0, v2}, Lccc71/pmw/lib/hi;-><init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v8, Lccc71/pmw/lib/d;->u:I

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_19
    check-cast v0, Landroid/widget/Button;

    .line 425
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 426
    iget-object v8, p0, Lccc71/pmw/lib/pmw_main;->c:[I

    aget v8, v8, v4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 427
    if-eqz v1, :cond_1f

    .line 428
    const/16 v8, 0x14

    const/16 v9, 0x1e

    const/16 v10, 0x14

    const/16 v11, 0x14

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 431
    :goto_1a
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    new-instance v8, Lccc71/pmw/lib/hj;

    invoke-direct {v8, p0, v2}, Lccc71/pmw/lib/hj;-><init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v8, Lccc71/pmw/lib/d;->E:I

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_1b
    check-cast v0, Landroid/widget/Button;

    .line 449
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 450
    iget-object v8, p0, Lccc71/pmw/lib/pmw_main;->c:[I

    aget v8, v8, v4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 451
    if-eqz v1, :cond_21

    .line 452
    const/16 v8, 0x14

    const/16 v9, 0x1e

    const/16 v10, 0x14

    const/16 v11, 0x14

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 455
    :goto_1c
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    new-instance v8, Lccc71/pmw/lib/hk;

    invoke-direct {v8, p0, v2}, Lccc71/pmw/lib/hk;-><init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    invoke-static {}, Lccc71/pmw/a/ah;->o()Z

    move-result v8

    if-nez v8, :cond_1

    .line 473
    sget-boolean v8, Lccc71/pmw/b/h;->c:Z

    if-eqz v8, :cond_22

    .line 474
    sget v8, Lccc71/pmw/lib/g;->bY:I

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    .line 479
    :cond_1
    :goto_1d
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v8, Lccc71/pmw/lib/d;->aq:I

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_1e
    check-cast v0, Landroid/widget/Button;

    .line 480
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 481
    iget-object v8, p0, Lccc71/pmw/lib/pmw_main;->c:[I

    aget v8, v8, v4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 482
    if-eqz v1, :cond_24

    .line 483
    const/16 v8, 0x14

    const/16 v9, 0x1e

    const/16 v10, 0x14

    const/16 v11, 0x14

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 486
    :goto_1f
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    new-instance v8, Lccc71/pmw/lib/hl;

    invoke-direct {v8, p0, v2}, Lccc71/pmw/lib/hl;-><init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v8, Lccc71/pmw/lib/d;->at:I

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_20
    check-cast v0, Landroid/widget/Button;

    .line 504
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 505
    iget-object v8, p0, Lccc71/pmw/lib/pmw_main;->c:[I

    aget v8, v8, v4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 506
    if-eqz v1, :cond_26

    .line 507
    const/16 v8, 0x14

    const/16 v9, 0x1e

    const/16 v10, 0x14

    const/16 v11, 0x14

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 510
    :goto_21
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    new-instance v8, Lccc71/pmw/lib/hm;

    invoke-direct {v8, p0, v2}, Lccc71/pmw/lib/hm;-><init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    invoke-static {}, Lccc71/pmw/a/ah;->w()Z

    move-result v8

    if-nez v8, :cond_2

    .line 528
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 531
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v8, Lccc71/pmw/lib/d;->az:I

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_22
    check-cast v0, Landroid/widget/Button;

    .line 532
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 533
    iget-object v8, p0, Lccc71/pmw/lib/pmw_main;->c:[I

    aget v8, v8, v4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 534
    if-eqz v1, :cond_28

    .line 535
    const/16 v8, 0x14

    const/16 v9, 0x1e

    const/16 v10, 0x14

    const/16 v11, 0x14

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 538
    :goto_23
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    new-instance v8, Lccc71/pmw/lib/hn;

    invoke-direct {v8, p0, v2}, Lccc71/pmw/lib/hn;-><init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    invoke-static {}, Lccc71/pmw/a/ah;->o()Z

    move-result v8

    if-nez v8, :cond_3

    .line 556
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 559
    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v8, Lccc71/pmw/lib/d;->ai:I

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_24
    check-cast v0, Landroid/widget/Button;

    .line 560
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 561
    iget-object v8, p0, Lccc71/pmw/lib/pmw_main;->c:[I

    aget v8, v8, v4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 562
    if-eqz v1, :cond_2a

    .line 563
    const/16 v8, 0x14

    const/16 v9, 0x1e

    const/16 v10, 0x14

    const/16 v11, 0x14

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 566
    :goto_25
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    new-instance v8, Lccc71/pmw/lib/ho;

    invoke-direct {v8, p0, v2}, Lccc71/pmw/lib/ho;-><init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v8, Lccc71/pmw/lib/d;->N:I

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_26
    check-cast v0, Landroid/widget/Button;

    .line 584
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 585
    iget-object v8, p0, Lccc71/pmw/lib/pmw_main;->c:[I

    aget v8, v8, v4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 586
    if-eqz v1, :cond_2c

    .line 587
    const/16 v8, 0x14

    const/16 v9, 0x1e

    const/16 v10, 0x14

    const/16 v11, 0x14

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 590
    :goto_27
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    sget-boolean v8, Lccc71/pmw/b/h;->c:Z

    if-eqz v8, :cond_2d

    invoke-static {}, Lccc71/pmw/a/ar;->f()Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 592
    sget v8, Lccc71/pmw/lib/g;->bY:I

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    .line 595
    :goto_28
    new-instance v8, Lccc71/pmw/lib/hp;

    invoke-direct {v8, p0, v2}, Lccc71/pmw/lib/hp;-><init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v8, Lccc71/pmw/lib/d;->L:I

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_29
    check-cast v0, Landroid/widget/Button;

    .line 615
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 616
    iget-object v8, p0, Lccc71/pmw/lib/pmw_main;->c:[I

    aget v8, v8, v4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 617
    if-eqz v1, :cond_2f

    .line 618
    const/16 v8, 0x14

    const/16 v9, 0x1e

    const/16 v10, 0x14

    const/16 v11, 0x14

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 621
    :goto_2a
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    new-instance v8, Lccc71/pmw/lib/hr;

    invoke-direct {v8, p0, v2}, Lccc71/pmw/lib/hr;-><init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v8, Lccc71/pmw/lib/d;->as:I

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_2b
    check-cast v0, Landroid/widget/Button;

    .line 638
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 639
    iget-object v8, p0, Lccc71/pmw/lib/pmw_main;->c:[I

    aget v8, v8, v4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 640
    if-eqz v1, :cond_31

    .line 641
    const/16 v8, 0x14

    const/16 v9, 0x1e

    const/16 v10, 0x14

    const/16 v11, 0x14

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 644
    :goto_2c
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    new-instance v8, Lccc71/pmw/lib/hs;

    invoke-direct {v8, p0, v2}, Lccc71/pmw/lib/hs;-><init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    sget v8, Lccc71/pmw/lib/d;->al:I

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_2d
    check-cast v0, Landroid/widget/Button;

    .line 661
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 662
    iget-object v3, p0, Lccc71/pmw/lib/pmw_main;->c:[I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 663
    if-eqz v1, :cond_33

    .line 664
    const/16 v1, 0x14

    const/16 v3, 0x1e

    const/16 v4, 0x14

    const/16 v5, 0x14

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 667
    :goto_2e
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    new-instance v1, Lccc71/pmw/lib/ht;

    invoke-direct {v1, p0, v2}, Lccc71/pmw/lib/ht;-><init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    return-void

    .line 135
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 136
    const-class v6, Landroid/widget/TableRow;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 138
    check-cast v1, Landroid/widget/TableRow;

    .line 139
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0

    .line 146
    :cond_6
    sget v0, Lccc71/pmw/lib/e;->bm:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->setContentView(I)V

    goto/16 :goto_1

    .line 159
    :cond_7
    const/high16 v0, 0x40a0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    const/high16 v8, 0x40a0

    mul-float/2addr v8, v5

    float-to-int v8, v8

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    float-to-int v9, v9

    const/high16 v10, 0x40a0

    mul-float/2addr v10, v5

    float-to-int v10, v10

    invoke-virtual {v7, v0, v8, v9, v10}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 161
    :cond_8
    sget v0, Lccc71/pmw/lib/d;->h:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_3

    .line 167
    :cond_9
    const/high16 v8, 0x4000

    mul-float/2addr v8, v5

    int-to-float v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    int-to-float v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x4000

    mul-float/2addr v10, v5

    int-to-float v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x4000

    mul-float/2addr v11, v5

    int-to-float v12, v6

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_4

    .line 184
    :cond_a
    sget v0, Lccc71/pmw/lib/d;->i:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_5

    .line 190
    :cond_b
    const/high16 v8, 0x4000

    mul-float/2addr v8, v5

    int-to-float v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    int-to-float v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x4000

    mul-float/2addr v10, v5

    int-to-float v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x4000

    mul-float/2addr v11, v5

    int-to-float v12, v6

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_6

    .line 207
    :cond_c
    sget v0, Lccc71/pmw/lib/d;->o:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_7

    .line 213
    :cond_d
    const/high16 v8, 0x3f80

    mul-float/2addr v8, v5

    int-to-float v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x3f80

    mul-float/2addr v9, v5

    int-to-float v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x3f80

    mul-float/2addr v10, v5

    int-to-float v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x3f80

    mul-float/2addr v11, v5

    int-to-float v12, v6

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_8

    .line 235
    :cond_e
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_9

    .line 238
    :cond_f
    sget v0, Lccc71/pmw/lib/d;->Z:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_a

    .line 244
    :cond_10
    const/high16 v8, 0x4000

    mul-float/2addr v8, v5

    int-to-float v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    int-to-float v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x4000

    mul-float/2addr v10, v5

    int-to-float v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x4000

    mul-float/2addr v11, v5

    int-to-float v12, v6

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_b

    .line 253
    :cond_11
    sget v8, Lccc71/pmw/lib/g;->bW:I

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    .line 254
    const/4 v8, 0x0

    sget v9, Lccc71/pmw/lib/c;->W:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_c

    .line 280
    :cond_12
    sget v0, Lccc71/pmw/lib/d;->ao:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_d

    .line 286
    :cond_13
    const/high16 v8, 0x4000

    mul-float/2addr v8, v5

    int-to-float v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    int-to-float v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x4000

    mul-float/2addr v10, v5

    int-to-float v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x4000

    mul-float/2addr v11, v5

    int-to-float v12, v6

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_e

    .line 304
    :cond_14
    sget v0, Lccc71/pmw/lib/d;->z:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_f

    .line 310
    :cond_15
    const/high16 v8, 0x4000

    mul-float/2addr v8, v5

    int-to-float v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    int-to-float v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x4000

    mul-float/2addr v10, v5

    int-to-float v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x4000

    mul-float/2addr v11, v5

    int-to-float v12, v6

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_10

    .line 328
    :cond_16
    sget v0, Lccc71/pmw/lib/d;->m:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_11

    .line 334
    :cond_17
    const/high16 v8, 0x4000

    mul-float/2addr v8, v5

    int-to-float v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    int-to-float v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x4000

    mul-float/2addr v10, v5

    int-to-float v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x4000

    mul-float/2addr v11, v5

    int-to-float v12, v6

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_12

    .line 352
    :cond_18
    sget v0, Lccc71/pmw/lib/d;->ay:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_13

    .line 358
    :cond_19
    const/high16 v8, 0x4000

    mul-float/2addr v8, v5

    int-to-float v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    int-to-float v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x4000

    mul-float/2addr v10, v5

    int-to-float v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x4000

    mul-float/2addr v11, v5

    int-to-float v12, v6

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_14

    .line 376
    :cond_1a
    sget v0, Lccc71/pmw/lib/d;->ar:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_15

    .line 382
    :cond_1b
    const/high16 v8, 0x4000

    mul-float/2addr v8, v5

    int-to-float v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    int-to-float v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x4000

    mul-float/2addr v10, v5

    int-to-float v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x4000

    mul-float/2addr v11, v5

    int-to-float v12, v6

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_16

    .line 400
    :cond_1c
    sget v0, Lccc71/pmw/lib/d;->au:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_17

    .line 406
    :cond_1d
    const/high16 v8, 0x4000

    mul-float/2addr v8, v5

    int-to-float v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    int-to-float v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x4000

    mul-float/2addr v10, v5

    int-to-float v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x4000

    mul-float/2addr v11, v5

    int-to-float v12, v6

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_18

    .line 424
    :cond_1e
    sget v0, Lccc71/pmw/lib/d;->u:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_19

    .line 430
    :cond_1f
    const/high16 v8, 0x4000

    mul-float/2addr v8, v5

    int-to-float v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    int-to-float v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x4000

    mul-float/2addr v10, v5

    int-to-float v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x4000

    mul-float/2addr v11, v5

    int-to-float v12, v6

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_1a

    .line 448
    :cond_20
    sget v0, Lccc71/pmw/lib/d;->E:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_1b

    .line 454
    :cond_21
    const/high16 v8, 0x4000

    mul-float/2addr v8, v5

    int-to-float v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    int-to-float v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x4000

    mul-float/2addr v10, v5

    int-to-float v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x4000

    mul-float/2addr v11, v5

    int-to-float v12, v6

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_1c

    .line 476
    :cond_22
    sget v8, Lccc71/pmw/lib/g;->by:I

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1d

    .line 479
    :cond_23
    sget v0, Lccc71/pmw/lib/d;->aq:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_1e

    .line 485
    :cond_24
    const/high16 v8, 0x4000

    mul-float/2addr v8, v5

    int-to-float v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    int-to-float v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x4000

    mul-float/2addr v10, v5

    int-to-float v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x4000

    mul-float/2addr v11, v5

    int-to-float v12, v6

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_1f

    .line 503
    :cond_25
    sget v0, Lccc71/pmw/lib/d;->at:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_20

    .line 509
    :cond_26
    const/high16 v8, 0x4000

    mul-float/2addr v8, v5

    int-to-float v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    int-to-float v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x4000

    mul-float/2addr v10, v5

    int-to-float v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x4000

    mul-float/2addr v11, v5

    int-to-float v12, v6

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_21

    .line 531
    :cond_27
    sget v0, Lccc71/pmw/lib/d;->az:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_22

    .line 537
    :cond_28
    const/high16 v8, 0x4000

    mul-float/2addr v8, v5

    int-to-float v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    int-to-float v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x4000

    mul-float/2addr v10, v5

    int-to-float v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x4000

    mul-float/2addr v11, v5

    int-to-float v12, v6

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_23

    .line 559
    :cond_29
    sget v0, Lccc71/pmw/lib/d;->ai:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_24

    .line 565
    :cond_2a
    const/high16 v8, 0x4000

    mul-float/2addr v8, v5

    int-to-float v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    int-to-float v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x4000

    mul-float/2addr v10, v5

    int-to-float v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x4000

    mul-float/2addr v11, v5

    int-to-float v12, v6

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_25

    .line 583
    :cond_2b
    sget v0, Lccc71/pmw/lib/d;->N:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_26

    .line 589
    :cond_2c
    const/high16 v8, 0x4000

    mul-float/2addr v8, v5

    int-to-float v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    int-to-float v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x4000

    mul-float/2addr v10, v5

    int-to-float v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x4000

    mul-float/2addr v11, v5

    int-to-float v12, v6

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_27

    .line 594
    :cond_2d
    sget v8, Lccc71/pmw/lib/g;->bR:I

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_28

    .line 614
    :cond_2e
    sget v0, Lccc71/pmw/lib/d;->L:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_29

    .line 620
    :cond_2f
    const/high16 v8, 0x4000

    mul-float/2addr v8, v5

    int-to-float v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    int-to-float v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x4000

    mul-float/2addr v10, v5

    int-to-float v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x4000

    mul-float/2addr v11, v5

    int-to-float v12, v6

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_2a

    .line 637
    :cond_30
    sget v0, Lccc71/pmw/lib/d;->as:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_2b

    .line 643
    :cond_31
    const/high16 v8, 0x4000

    mul-float/2addr v8, v5

    int-to-float v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    int-to-float v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x4000

    mul-float/2addr v10, v5

    int-to-float v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x4000

    mul-float/2addr v11, v5

    int-to-float v12, v6

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_2c

    .line 660
    :cond_32
    sget v0, Lccc71/pmw/lib/d;->al:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_2d

    .line 666
    :cond_33
    const/high16 v1, 0x4000

    mul-float/2addr v1, v5

    int-to-float v3, v6

    mul-float/2addr v1, v3

    float-to-int v1, v1

    const/high16 v3, 0x40a0

    mul-float/2addr v3, v5

    int-to-float v4, v6

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x4000

    mul-float/2addr v4, v5

    int-to-float v8, v6

    mul-float/2addr v4, v8

    float-to-int v4, v4

    const/high16 v8, 0x4000

    mul-float/2addr v5, v8

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_2e
.end method


# virtual methods
.method final a(Landroid/app/Dialog;)V
    .locals 3
    .parameter

    .prologue
    .line 737
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_main;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 738
    const-string v1, "ccc71.pmw.autoclose"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    :cond_0
    if-eqz p1, :cond_1

    .line 742
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 743
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    .line 746
    :cond_1
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_main;->finish()V

    .line 748
    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_main;->e()V

    .line 99
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_main;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->d:Landroid/os/Handler;

    invoke-static {p0, v0}, Lccc71/pmw/lib/gh;->a(Landroid/content/Context;Landroid/os/Handler;)Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    .line 84
    :cond_0
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onDestroy()V

    .line 85
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 65
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_main;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ccc71.pmw.autoclose"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_main;->b:Landroid/app/Dialog;

    .line 73
    :cond_1
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onPause()V

    .line 74
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onResume()V

    .line 56
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_main;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_main;->e()V

    .line 60
    :cond_0
    return-void
.end method
