.class public Lccc71/pmw/lib/pmw_memory_tweak;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# static fields
.field private static d:I

.field private static e:[[I

.field private static f:[I

.field private static j:[I

.field private static k:[I

.field private static l:[I

.field private static m:[I


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field protected b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field c:Landroid/os/Handler;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    const/4 v0, 0x6

    sput v0, Lccc71/pmw/lib/pmw_memory_tweak;->d:I

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [[I

    .line 39
    const/4 v1, 0x5

    new-array v1, v1, [I

    sget v2, Lccc71/pmw/lib/d;->jj:I

    aput v2, v1, v4

    sget v2, Lccc71/pmw/lib/d;->dB:I

    aput v2, v1, v5

    sget v2, Lccc71/pmw/lib/d;->bb:I

    aput v2, v1, v6

    sget v2, Lccc71/pmw/lib/d;->gi:I

    aput v2, v1, v7

    sget v2, Lccc71/pmw/lib/d;->kk:I

    aput v2, v1, v8

    aput-object v1, v0, v4

    .line 40
    const/4 v1, 0x5

    new-array v1, v1, [I

    sget v2, Lccc71/pmw/lib/d;->jk:I

    aput v2, v1, v4

    sget v2, Lccc71/pmw/lib/d;->dC:I

    aput v2, v1, v5

    sget v2, Lccc71/pmw/lib/d;->bc:I

    aput v2, v1, v6

    sget v2, Lccc71/pmw/lib/d;->gj:I

    aput v2, v1, v7

    sget v2, Lccc71/pmw/lib/d;->kl:I

    aput v2, v1, v8

    aput-object v1, v0, v5

    .line 41
    const/4 v1, 0x5

    new-array v1, v1, [I

    sget v2, Lccc71/pmw/lib/d;->jl:I

    aput v2, v1, v4

    sget v2, Lccc71/pmw/lib/d;->dD:I

    aput v2, v1, v5

    sget v2, Lccc71/pmw/lib/d;->bd:I

    aput v2, v1, v6

    sget v2, Lccc71/pmw/lib/d;->gk:I

    aput v2, v1, v7

    sget v2, Lccc71/pmw/lib/d;->km:I

    aput v2, v1, v8

    aput-object v1, v0, v6

    .line 42
    const/4 v1, 0x5

    new-array v1, v1, [I

    sget v2, Lccc71/pmw/lib/d;->jm:I

    aput v2, v1, v4

    sget v2, Lccc71/pmw/lib/d;->dE:I

    aput v2, v1, v5

    sget v2, Lccc71/pmw/lib/d;->be:I

    aput v2, v1, v6

    sget v2, Lccc71/pmw/lib/d;->gl:I

    aput v2, v1, v7

    sget v2, Lccc71/pmw/lib/d;->kn:I

    aput v2, v1, v8

    aput-object v1, v0, v7

    .line 43
    const/4 v1, 0x5

    new-array v1, v1, [I

    sget v2, Lccc71/pmw/lib/d;->jn:I

    aput v2, v1, v4

    sget v2, Lccc71/pmw/lib/d;->dF:I

    aput v2, v1, v5

    sget v2, Lccc71/pmw/lib/d;->bf:I

    aput v2, v1, v6

    sget v2, Lccc71/pmw/lib/d;->gm:I

    aput v2, v1, v7

    sget v2, Lccc71/pmw/lib/d;->ko:I

    aput v2, v1, v8

    aput-object v1, v0, v8

    const/4 v1, 0x5

    .line 44
    const/4 v2, 0x5

    new-array v2, v2, [I

    sget v3, Lccc71/pmw/lib/d;->jo:I

    aput v3, v2, v4

    sget v3, Lccc71/pmw/lib/d;->dG:I

    aput v3, v2, v5

    sget v3, Lccc71/pmw/lib/d;->bg:I

    aput v3, v2, v6

    sget v3, Lccc71/pmw/lib/d;->gn:I

    aput v3, v2, v7

    sget v3, Lccc71/pmw/lib/d;->kp:I

    aput v3, v2, v8

    aput-object v2, v0, v1

    .line 38
    sput-object v0, Lccc71/pmw/lib/pmw_memory_tweak;->e:[[I

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccc71/pmw/lib/pmw_memory_tweak;->f:[I

    .line 48
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lccc71/pmw/lib/pmw_memory_tweak;->j:[I

    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lccc71/pmw/lib/pmw_memory_tweak;->k:[I

    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lccc71/pmw/lib/pmw_memory_tweak;->l:[I

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lccc71/pmw/lib/pmw_memory_tweak;->m:[I

    .line 34
    return-void

    .line 47
    nop

    :array_0
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
    .end array-data

    .line 48
    :array_1
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
    .end array-data

    .line 49
    :array_2
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
    .end array-data

    .line 50
    :array_3
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    .line 51
    :array_4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    .line 209
    new-instance v0, Lccc71/pmw/lib/ie;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ie;-><init>(Lccc71/pmw/lib/pmw_memory_tweak;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory_tweak;->n:Landroid/view/View$OnClickListener;

    .line 369
    new-instance v0, Lccc71/pmw/lib/ih;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ih;-><init>(Lccc71/pmw/lib/pmw_memory_tweak;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory_tweak;->a:Landroid/view/View$OnClickListener;

    .line 390
    new-instance v0, Lccc71/pmw/lib/ii;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ii;-><init>(Lccc71/pmw/lib/pmw_memory_tweak;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory_tweak;->o:Landroid/view/View$OnClickListener;

    .line 401
    new-instance v0, Lccc71/pmw/lib/ij;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ij;-><init>(Lccc71/pmw/lib/pmw_memory_tweak;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory_tweak;->b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 479
    new-instance v0, Lccc71/pmw/lib/ik;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ik;-><init>(Lccc71/pmw/lib/pmw_memory_tweak;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory_tweak;->c:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method private a([I)V
    .locals 3
    .parameter

    .prologue
    .line 467
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v0, Lccc71/pmw/lib/pmw_memory_tweak;->d:I

    if-lt v1, v0, :cond_0

    .line 477
    return-void

    .line 469
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_memory_tweak;->e:[[I

    aget-object v0, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory_tweak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 470
    if-eqz v0, :cond_1

    .line 471
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 473
    :cond_1
    sget-object v0, Lccc71/pmw/lib/pmw_memory_tweak;->e:[[I

    aget-object v0, v0, v1

    const/4 v2, 0x2

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory_tweak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 474
    if-eqz v0, :cond_2

    .line 475
    aget v2, p1, v1

    mul-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Lccc71/utils/ag;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic e()[[I
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lccc71/pmw/lib/pmw_memory_tweak;->e:[[I

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lccc71/pmw/lib/c;->aD:I

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lccc71/pmw/lib/g;->bo:I

    return v0
.end method

.method protected final b_()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_memory_tweak;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_memory_tweak;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_tweaks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v1, "ccc71.pmw.tweak_id"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->eq:I

    if-ne v1, v2, :cond_0

    .line 171
    sget-object v1, Lccc71/pmw/lib/pmw_memory_tweak;->m:[I

    invoke-direct {p0, v1}, Lccc71/pmw/lib/pmw_memory_tweak;->a([I)V

    .line 195
    :goto_0
    return v0

    .line 174
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->en:I

    if-ne v1, v2, :cond_1

    .line 176
    sget-object v1, Lccc71/pmw/lib/pmw_memory_tweak;->l:[I

    invoke-direct {p0, v1}, Lccc71/pmw/lib/pmw_memory_tweak;->a([I)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->eo:I

    if-ne v1, v2, :cond_2

    .line 181
    sget-object v1, Lccc71/pmw/lib/pmw_memory_tweak;->k:[I

    invoke-direct {p0, v1}, Lccc71/pmw/lib/pmw_memory_tweak;->a([I)V

    goto :goto_0

    .line 184
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->em:I

    if-ne v1, v2, :cond_3

    .line 186
    sget-object v1, Lccc71/pmw/lib/pmw_memory_tweak;->j:[I

    invoke-direct {p0, v1}, Lccc71/pmw/lib/pmw_memory_tweak;->a([I)V

    goto :goto_0

    .line 189
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->ep:I

    if-ne v1, v2, :cond_4

    .line 191
    sget-object v1, Lccc71/pmw/lib/pmw_memory_tweak;->f:[I

    invoke-direct {p0, v1}, Lccc71/pmw/lib/pmw_memory_tweak;->a([I)V

    goto :goto_0

    .line 195
    :cond_4
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/high16 v8, 0x4000

    .line 78
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_memory_tweak;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 83
    :cond_0
    sget v0, Lccc71/pmw/lib/e;->bp:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory_tweak;->setContentView(I)V

    .line 85
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v3

    .line 87
    new-instance v0, Lccc71/pmw/a/ar;

    invoke-direct {v0}, Lccc71/pmw/a/ar;-><init>()V

    .line 88
    invoke-static {}, Lccc71/pmw/a/ar;->g()Ljava/lang/String;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_1

    .line 91
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 92
    array-length v5, v4

    .line 93
    sget v0, Lccc71/pmw/lib/pmw_memory_tweak;->d:I

    if-ne v5, v0, :cond_1

    move v1, v2

    .line 95
    :goto_1
    if-lt v1, v5, :cond_2

    .line 117
    :cond_1
    sget v0, Lccc71/pmw/lib/d;->V:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory_tweak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 118
    new-instance v1, Lccc71/pmw/lib/il;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/il;-><init>(Lccc71/pmw/lib/pmw_memory_tweak;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    sget v0, Lccc71/pmw/lib/d;->n:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory_tweak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 129
    iget-object v1, p0, Lccc71/pmw/lib/pmw_memory_tweak;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 97
    :cond_2
    aget-object v0, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 98
    sget-object v0, Lccc71/pmw/lib/pmw_memory_tweak;->e:[[I

    aget-object v0, v0, v1

    const/4 v7, 0x1

    aget v0, v0, v7

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory_tweak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 99
    mul-int/lit8 v7, v6, 0x4

    div-int/lit16 v7, v7, 0x400

    invoke-virtual {v0, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 100
    iget-object v7, p0, Lccc71/pmw/lib/pmw_memory_tweak;->b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 102
    sget-object v0, Lccc71/pmw/lib/pmw_memory_tweak;->e:[[I

    aget-object v0, v0, v1

    const/4 v7, 0x2

    aget v0, v0, v7

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory_tweak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    sub-float v7, v3, v8

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 104
    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Lccc71/utils/ag;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v6, p0, Lccc71/pmw/lib/pmw_memory_tweak;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    sget-object v0, Lccc71/pmw/lib/pmw_memory_tweak;->e:[[I

    aget-object v0, v0, v1

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory_tweak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    sub-float v6, v3, v8

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 109
    iget-object v6, p0, Lccc71/pmw/lib/pmw_memory_tweak;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    sget-object v0, Lccc71/pmw/lib/pmw_memory_tweak;->e:[[I

    aget-object v0, v0, v1

    const/4 v6, 0x4

    aget v0, v0, v6

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory_tweak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 112
    iget-object v6, p0, Lccc71/pmw/lib/pmw_memory_tweak;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-super {p0, p1, p2, p3}, Lccc71/pmw/lib/pmw_activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 203
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->V:I

    if-ne v0, v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_memory_tweak;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/f;->f:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 207
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onPause()V

    .line 137
    const-string v0, ""

    move v1, v2

    move-object v3, v0

    .line 138
    :goto_0
    sget v0, Lccc71/pmw/lib/pmw_memory_tweak;->d:I

    if-lt v1, v0, :cond_0

    .line 143
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Lccc71/pmw/lib/im;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/im;-><init>(Lccc71/pmw/lib/pmw_memory_tweak;Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/Void;

    .line 163
    invoke-virtual {v1, v0}, Lccc71/pmw/lib/im;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 164
    return-void

    .line 140
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_memory_tweak;->e:[[I

    aget-object v0, v0, v1

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory_tweak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit16 v0, v0, 0x100

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
