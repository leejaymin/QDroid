.class public Lccc71/utils/ccc71_graph_view;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lccc71/utils/s;


# static fields
.field private static H:Lccc71/utils/r;

.field private static synthetic J:[I

.field static a:I

.field static b:I


# instance fields
.field private A:Ljava/util/ArrayList;

.field private B:Ljava/util/ArrayList;

.field private C:Ljava/util/ArrayList;

.field private D:Ljava/util/ArrayList;

.field private E:Z

.field private F:Z

.field private G:[Lccc71/bmw/data/a/d;

.field private I:Lccc71/utils/q;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:Z

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:I

.field private r:Z

.field private s:Landroid/content/Context;

.field private t:Lccc71/bmw/lib/ak;

.field private u:I

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/util/Date;

.field private z:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x28

    sput v0, Lccc71/utils/ccc71_graph_view;->a:I

    .line 26
    const/16 v0, 0xc

    sput v0, Lccc71/utils/ccc71_graph_view;->b:I

    .line 70
    new-instance v0, Lccc71/utils/r;

    invoke-direct {v0}, Lccc71/utils/r;-><init>()V

    sput-object v0, Lccc71/utils/ccc71_graph_view;->H:Lccc71/utils/r;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    const/high16 v0, 0x3f80

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->k:F

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->l:F

    .line 41
    iput-boolean v2, p0, Lccc71/utils/ccc71_graph_view;->m:Z

    .line 42
    iput v3, p0, Lccc71/utils/ccc71_graph_view;->n:I

    .line 44
    iput-boolean v2, p0, Lccc71/utils/ccc71_graph_view;->p:Z

    .line 47
    iput-boolean v3, p0, Lccc71/utils/ccc71_graph_view;->r:Z

    .line 49
    iput-object v1, p0, Lccc71/utils/ccc71_graph_view;->s:Landroid/content/Context;

    .line 50
    sget-object v0, Lccc71/bmw/lib/ak;->a:Lccc71/bmw/lib/ak;

    iput-object v0, p0, Lccc71/utils/ccc71_graph_view;->t:Lccc71/bmw/lib/ak;

    .line 51
    iput v3, p0, Lccc71/utils/ccc71_graph_view;->u:I

    .line 52
    iput v2, p0, Lccc71/utils/ccc71_graph_view;->v:I

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    .line 61
    iput-object v1, p0, Lccc71/utils/ccc71_graph_view;->A:Ljava/util/ArrayList;

    .line 62
    iput-object v1, p0, Lccc71/utils/ccc71_graph_view;->B:Ljava/util/ArrayList;

    .line 63
    iput-object v1, p0, Lccc71/utils/ccc71_graph_view;->C:Ljava/util/ArrayList;

    .line 64
    iput-object v1, p0, Lccc71/utils/ccc71_graph_view;->D:Ljava/util/ArrayList;

    .line 66
    iput-boolean v2, p0, Lccc71/utils/ccc71_graph_view;->E:Z

    .line 67
    iput-boolean v3, p0, Lccc71/utils/ccc71_graph_view;->F:Z

    .line 68
    iput-object v1, p0, Lccc71/utils/ccc71_graph_view;->G:[Lccc71/bmw/data/a/d;

    .line 72
    iput-object v1, p0, Lccc71/utils/ccc71_graph_view;->I:Lccc71/utils/q;

    .line 78
    iput-object p1, p0, Lccc71/utils/ccc71_graph_view;->s:Landroid/content/Context;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 80
    sget v1, Lccc71/utils/ccc71_graph_view;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lccc71/utils/ccc71_graph_view;->i:I

    .line 81
    sget v1, Lccc71/utils/ccc71_graph_view;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->e:I

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/high16 v0, 0x3f80

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->k:F

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->l:F

    .line 41
    iput-boolean v2, p0, Lccc71/utils/ccc71_graph_view;->m:Z

    .line 42
    iput v3, p0, Lccc71/utils/ccc71_graph_view;->n:I

    .line 44
    iput-boolean v2, p0, Lccc71/utils/ccc71_graph_view;->p:Z

    .line 47
    iput-boolean v3, p0, Lccc71/utils/ccc71_graph_view;->r:Z

    .line 49
    iput-object v1, p0, Lccc71/utils/ccc71_graph_view;->s:Landroid/content/Context;

    .line 50
    sget-object v0, Lccc71/bmw/lib/ak;->a:Lccc71/bmw/lib/ak;

    iput-object v0, p0, Lccc71/utils/ccc71_graph_view;->t:Lccc71/bmw/lib/ak;

    .line 51
    iput v3, p0, Lccc71/utils/ccc71_graph_view;->u:I

    .line 52
    iput v2, p0, Lccc71/utils/ccc71_graph_view;->v:I

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    .line 61
    iput-object v1, p0, Lccc71/utils/ccc71_graph_view;->A:Ljava/util/ArrayList;

    .line 62
    iput-object v1, p0, Lccc71/utils/ccc71_graph_view;->B:Ljava/util/ArrayList;

    .line 63
    iput-object v1, p0, Lccc71/utils/ccc71_graph_view;->C:Ljava/util/ArrayList;

    .line 64
    iput-object v1, p0, Lccc71/utils/ccc71_graph_view;->D:Ljava/util/ArrayList;

    .line 66
    iput-boolean v2, p0, Lccc71/utils/ccc71_graph_view;->E:Z

    .line 67
    iput-boolean v3, p0, Lccc71/utils/ccc71_graph_view;->F:Z

    .line 68
    iput-object v1, p0, Lccc71/utils/ccc71_graph_view;->G:[Lccc71/bmw/data/a/d;

    .line 72
    iput-object v1, p0, Lccc71/utils/ccc71_graph_view;->I:Lccc71/utils/q;

    .line 88
    iput-object p1, p0, Lccc71/utils/ccc71_graph_view;->s:Landroid/content/Context;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 90
    sget v1, Lccc71/utils/ccc71_graph_view;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lccc71/utils/ccc71_graph_view;->i:I

    .line 91
    sget v1, Lccc71/utils/ccc71_graph_view;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->e:I

    .line 92
    return-void
.end method

.method private j()V
    .locals 7

    .prologue
    const/high16 v6, 0x4120

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 643
    iget-object v0, p0, Lccc71/utils/ccc71_graph_view;->w:Ljava/lang/String;

    iput-object v0, p0, Lccc71/utils/ccc71_graph_view;->x:Ljava/lang/String;

    .line 644
    invoke-static {}, Lccc71/bmw/lib/bi;->h()Lccc71/bmw/lib/bh;

    move-result-object v0

    .line 645
    invoke-static {}, Lccc71/utils/ccc71_graph_view;->k()[I

    move-result-object v1

    iget-object v2, p0, Lccc71/utils/ccc71_graph_view;->t:Lccc71/bmw/lib/ak;

    invoke-virtual {v2}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 742
    :goto_0
    return-void

    .line 648
    :pswitch_0
    const/16 v0, 0x64

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->u:I

    .line 649
    iput v3, p0, Lccc71/utils/ccc71_graph_view;->v:I

    goto :goto_0

    .line 652
    :pswitch_1
    iget-boolean v1, p0, Lccc71/utils/ccc71_graph_view;->m:Z

    if-eqz v1, :cond_0

    .line 654
    iput v5, p0, Lccc71/utils/ccc71_graph_view;->u:I

    .line 655
    iput v4, p0, Lccc71/utils/ccc71_graph_view;->v:I

    goto :goto_0

    .line 659
    :cond_0
    iget-boolean v1, p0, Lccc71/utils/ccc71_graph_view;->p:Z

    if-eqz v1, :cond_1

    .line 661
    iget v1, v0, Lccc71/bmw/lib/bh;->a:I

    neg-int v1, v1

    iput v1, p0, Lccc71/utils/ccc71_graph_view;->v:I

    .line 662
    iget v0, v0, Lccc71/bmw/lib/bh;->b:I

    neg-int v0, v0

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->u:I

    goto :goto_0

    .line 666
    :cond_1
    iget v1, v0, Lccc71/bmw/lib/bh;->a:I

    iput v1, p0, Lccc71/utils/ccc71_graph_view;->u:I

    .line 667
    iget v0, v0, Lccc71/bmw/lib/bh;->b:I

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->v:I

    goto :goto_0

    .line 672
    :pswitch_2
    iget-object v1, p0, Lccc71/utils/ccc71_graph_view;->x:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lccc71/utils/ccc71_graph_view;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccc71/utils/ccc71_graph_view;->x:Ljava/lang/String;

    .line 673
    iget-boolean v1, p0, Lccc71/utils/ccc71_graph_view;->m:Z

    if-eqz v1, :cond_2

    .line 675
    iget-object v0, p0, Lccc71/utils/ccc71_graph_view;->o:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 678
    iput v3, p0, Lccc71/utils/ccc71_graph_view;->u:I

    .line 679
    const/16 v0, 0x258

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->v:I

    goto :goto_0

    .line 682
    :sswitch_0
    iput v3, p0, Lccc71/utils/ccc71_graph_view;->u:I

    .line 683
    const/16 v0, 0x5dc

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->v:I

    goto :goto_0

    .line 686
    :sswitch_1
    iput v3, p0, Lccc71/utils/ccc71_graph_view;->u:I

    .line 687
    const/16 v0, 0x1770

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->v:I

    goto :goto_0

    .line 693
    :cond_2
    iget v1, v0, Lccc71/bmw/lib/bh;->c:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lccc71/utils/ccc71_graph_view;->u:I

    .line 694
    iget v0, v0, Lccc71/bmw/lib/bh;->d:F

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->v:I

    goto :goto_0

    .line 698
    :pswitch_3
    iget-boolean v1, p0, Lccc71/utils/ccc71_graph_view;->m:Z

    if-eqz v1, :cond_3

    .line 700
    iput v4, p0, Lccc71/utils/ccc71_graph_view;->u:I

    .line 701
    iput v3, p0, Lccc71/utils/ccc71_graph_view;->v:I

    goto/16 :goto_0

    .line 705
    :cond_3
    iget v1, v0, Lccc71/bmw/lib/bh;->g:I

    iput v1, p0, Lccc71/utils/ccc71_graph_view;->u:I

    .line 706
    iget v0, v0, Lccc71/bmw/lib/bh;->h:I

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->v:I

    goto/16 :goto_0

    .line 710
    :pswitch_4
    iget-boolean v1, p0, Lccc71/utils/ccc71_graph_view;->m:Z

    if-eqz v1, :cond_4

    .line 712
    iput v3, p0, Lccc71/utils/ccc71_graph_view;->u:I

    .line 713
    const/16 v0, 0x2710

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->v:I

    goto/16 :goto_0

    .line 717
    :cond_4
    iget v1, v0, Lccc71/bmw/lib/bh;->e:I

    iput v1, p0, Lccc71/utils/ccc71_graph_view;->u:I

    .line 718
    iget v0, v0, Lccc71/bmw/lib/bh;->f:I

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->v:I

    goto/16 :goto_0

    .line 722
    :pswitch_5
    iget-boolean v1, p0, Lccc71/utils/ccc71_graph_view;->m:Z

    if-eqz v1, :cond_5

    .line 724
    iput v5, p0, Lccc71/utils/ccc71_graph_view;->u:I

    .line 725
    iput v4, p0, Lccc71/utils/ccc71_graph_view;->v:I

    goto/16 :goto_0

    .line 729
    :cond_5
    iget-boolean v1, p0, Lccc71/utils/ccc71_graph_view;->p:Z

    if-eqz v1, :cond_6

    .line 731
    iget v1, v0, Lccc71/bmw/lib/bh;->a:I

    neg-int v1, v1

    iget v2, v0, Lccc71/bmw/lib/bh;->e:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lccc71/utils/ccc71_graph_view;->v:I

    .line 732
    iget v1, v0, Lccc71/bmw/lib/bh;->b:I

    neg-int v1, v1

    iget v0, v0, Lccc71/bmw/lib/bh;->e:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->u:I

    goto/16 :goto_0

    .line 736
    :cond_6
    iget v1, v0, Lccc71/bmw/lib/bh;->a:I

    iget v2, v0, Lccc71/bmw/lib/bh;->e:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lccc71/utils/ccc71_graph_view;->u:I

    .line 737
    iget v1, v0, Lccc71/bmw/lib/bh;->b:I

    iget v0, v0, Lccc71/bmw/lib/bh;->e:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->v:I

    goto/16 :goto_0

    .line 645
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch

    .line 675
    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_0
        0x4b -> :sswitch_1
    .end sparse-switch
.end method

.method private static synthetic k()[I
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lccc71/utils/ccc71_graph_view;->J:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lccc71/bmw/lib/ak;->values()[Lccc71/bmw/lib/ak;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lccc71/bmw/lib/ak;->b:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lccc71/bmw/lib/ak;->e:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lccc71/bmw/lib/ak;->a:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lccc71/bmw/lib/ak;->f:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lccc71/bmw/lib/ak;->c:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lccc71/bmw/lib/ak;->d:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lccc71/utils/ccc71_graph_view;->J:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lccc71/utils/ccc71_graph_view;->n:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 164
    iget v0, p0, Lccc71/utils/ccc71_graph_view;->k:F

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lccc71/utils/ccc71_graph_view;->setZoomFactor(F)V

    .line 165
    return-void
.end method

.method public final b(F)F
    .locals 2
    .parameter

    .prologue
    .line 174
    iget v0, p0, Lccc71/utils/ccc71_graph_view;->l:F

    iget v1, p0, Lccc71/utils/ccc71_graph_view;->k:F

    div-float v1, p1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lccc71/utils/ccc71_graph_view;->c(F)F

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lccc71/utils/ccc71_graph_view;->j:I

    iget v1, p0, Lccc71/utils/ccc71_graph_view;->q:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public final c(F)F
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 195
    iput p1, p0, Lccc71/utils/ccc71_graph_view;->l:F

    .line 196
    iget v0, p0, Lccc71/utils/ccc71_graph_view;->l:F

    iget-object v1, p0, Lccc71/utils/ccc71_graph_view;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lccc71/utils/ccc71_graph_view;->j:I

    int-to-float v2, v2

    iget v3, p0, Lccc71/utils/ccc71_graph_view;->k:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 197
    iget-object v0, p0, Lccc71/utils/ccc71_graph_view;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lccc71/utils/ccc71_graph_view;->j:I

    int-to-float v1, v1

    iget v2, p0, Lccc71/utils/ccc71_graph_view;->k:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->l:F

    .line 198
    :cond_0
    iget v0, p0, Lccc71/utils/ccc71_graph_view;->l:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 199
    iput v4, p0, Lccc71/utils/ccc71_graph_view;->l:F

    .line 201
    :cond_1
    invoke-virtual {p0}, Lccc71/utils/ccc71_graph_view;->invalidate()V

    .line 203
    iget v0, p0, Lccc71/utils/ccc71_graph_view;->l:F

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    iget v0, p0, Lccc71/utils/ccc71_graph_view;->j:I

    iget v1, p0, Lccc71/utils/ccc71_graph_view;->q:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lccc71/utils/ccc71_graph_view;->k:F

    div-float/2addr v0, v1

    float-to-int v1, v0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v2, v1, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    div-int/lit8 v1, v1, 0x3c

    if-lez v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    rem-int/lit8 v3, v1, 0x3c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    div-int/lit8 v1, v1, 0x3c

    if-lez v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    rem-int/lit8 v3, v1, 0x18

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    div-int/lit8 v1, v1, 0x18

    if-lez v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    rem-int/lit8 v1, v1, 0x1e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "d "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lccc71/utils/ccc71_graph_view;->k:F

    return v0
.end method

.method public final e()Z
    .locals 4

    .prologue
    .line 179
    iget v0, p0, Lccc71/utils/ccc71_graph_view;->l:F

    iget-object v1, p0, Lccc71/utils/ccc71_graph_view;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lccc71/utils/ccc71_graph_view;->j:I

    int-to-float v2, v2

    iget v3, p0, Lccc71/utils/ccc71_graph_view;->k:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 185
    iget v0, p0, Lccc71/utils/ccc71_graph_view;->l:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()F
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lccc71/utils/ccc71_graph_view;->l:F

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lccc71/utils/ccc71_graph_view;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lccc71/utils/ccc71_graph_view;->m:Z

    .line 219
    invoke-direct {p0}, Lccc71/utils/ccc71_graph_view;->j()V

    .line 220
    invoke-virtual {p0}, Lccc71/utils/ccc71_graph_view;->invalidate()V

    .line 222
    iget-boolean v0, p0, Lccc71/utils/ccc71_graph_view;->m:Z

    return v0

    .line 218
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final i()Lccc71/utils/q;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lccc71/utils/ccc71_graph_view;->I:Lccc71/utils/q;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 36
    .parameter

    .prologue
    .line 247
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lccc71/utils/ccc71_graph_view;->B:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lccc71/utils/ccc71_graph_view;->A:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lccc71/utils/ccc71_graph_view;->C:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lccc71/utils/ccc71_graph_view;->D:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    .line 254
    if-nez v21, :cond_0

    .line 606
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lccc71/utils/ccc71_graph_view;->getDrawingCacheBackgroundColor()I

    move-result v2

    .line 258
    if-eqz v2, :cond_1

    .line 259
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 261
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 267
    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_graph_view;->i:I

    int-to-float v0, v2

    move/from16 v24, v0

    .line 268
    if-eqz v22, :cond_10

    const/high16 v2, 0x4000

    add-float v2, v2, v24

    float-to-int v2, v2

    move v12, v2

    .line 269
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->G:[Lccc71/bmw/data/a/d;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lccc71/utils/ccc71_graph_view;->F:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_graph_view;->i:I

    shr-int/lit8 v2, v2, 0x1

    move v13, v2

    .line 273
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lccc71/utils/ccc71_graph_view;->e:I

    move/from16 v25, v0

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Lccc71/utils/ccc71_graph_view;->g:I

    move/from16 v26, v0

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Lccc71/utils/ccc71_graph_view;->f:I

    move/from16 v27, v0

    .line 276
    move-object/from16 v0, p0

    iget v0, v0, Lccc71/utils/ccc71_graph_view;->h:I

    move/from16 v28, v0

    .line 277
    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_graph_view;->c:I

    .line 278
    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_graph_view;->d:I

    .line 282
    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    add-int/lit8 v7, v2, -0x1

    int-to-float v7, v7

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 283
    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const v6, -0x7f7f80

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    const/high16 v5, 0x40a0

    const/high16 v6, 0x40a0

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const v5, -0xbfbfc0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 286
    new-instance v4, Landroid/graphics/RectF;

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    add-int/lit8 v7, v2, -0x2

    int-to-float v7, v7

    add-int/lit8 v8, v3, -0x2

    int-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 287
    const/high16 v5, 0x40a0

    const/high16 v6, 0x40a0

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const v5, -0xefeff0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 289
    new-instance v4, Landroid/graphics/RectF;

    const/high16 v5, 0x4000

    const/high16 v6, 0x4000

    add-int/lit8 v2, v2, -0x3

    int-to-float v2, v2

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    invoke-direct {v4, v5, v6, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 290
    const/high16 v2, 0x40a0

    const/high16 v3, 0x40a0

    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const v3, 0x60ffffff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 295
    move/from16 v0, v25

    int-to-float v3, v0

    add-int v2, v27, v13

    int-to-float v4, v2

    move/from16 v0, v25

    int-to-float v5, v0

    sub-int v2, v28, v12

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 296
    move/from16 v0, v26

    int-to-float v3, v0

    add-int v2, v27, v13

    int-to-float v4, v2

    move/from16 v0, v26

    int-to-float v5, v0

    sub-int v2, v28, v12

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 297
    move/from16 v0, v25

    int-to-float v3, v0

    sub-int v2, v28, v12

    int-to-float v4, v2

    move/from16 v0, v26

    int-to-float v5, v0

    sub-int v2, v28, v12

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 298
    move/from16 v0, v25

    int-to-float v3, v0

    add-int v2, v27, v13

    int-to-float v4, v2

    move/from16 v0, v26

    int-to-float v5, v0

    add-int v2, v27, v13

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 300
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_12

    const/4 v2, 0x1

    move v14, v2

    .line 304
    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Lccc71/utils/ccc71_graph_view;->u:I

    .line 305
    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_graph_view;->v:I

    .line 306
    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_graph_view;->j:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_graph_view;->k:F

    div-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v17, v0

    .line 307
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lccc71/utils/ccc71_graph_view;->m:Z

    if-eqz v2, :cond_4

    if-eqz v14, :cond_4

    .line 309
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    .line 312
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, v2, v17

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_graph_view;->l:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 313
    if-gez v2, :cond_2

    .line 314
    const/4 v2, 0x0

    .line 315
    :cond_2
    add-int v3, v2, v17

    add-int/lit8 v3, v3, 0x1

    .line 316
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v3, v6, :cond_3

    .line 317
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_3
    move v6, v2

    .line 319
    :goto_4
    if-lt v6, v3, :cond_13

    :cond_4
    move/from16 v19, v4

    move v2, v5

    .line 329
    move/from16 v0, v19

    if-ne v0, v2, :cond_3f

    .line 330
    add-int/lit8 v2, v19, 0x1

    move v15, v2

    .line 334
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->t:Lccc71/bmw/lib/ak;

    sget-object v3, Lccc71/bmw/lib/ak;->c:Lccc71/bmw/lib/ak;

    if-eq v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->t:Lccc71/bmw/lib/ak;

    sget-object v3, Lccc71/bmw/lib/ak;->f:Lccc71/bmw/lib/ak;

    if-ne v2, v3, :cond_15

    :cond_5
    int-to-float v2, v15

    const/high16 v3, 0x4120

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    .line 335
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->t:Lccc71/bmw/lib/ak;

    sget-object v4, Lccc71/bmw/lib/ak;->c:Lccc71/bmw/lib/ak;

    if-eq v2, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->t:Lccc71/bmw/lib/ak;

    sget-object v4, Lccc71/bmw/lib/ak;->f:Lccc71/bmw/lib/ak;

    if-ne v2, v4, :cond_16

    :cond_6
    move/from16 v0, v19

    int-to-float v2, v0

    const/high16 v4, 0x4120

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 337
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_graph_view;->i:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 340
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v25

    int-to-float v6, v0

    sub-float v2, v6, v2

    const/high16 v6, 0x4000

    sub-float v6, v2, v6

    add-int v2, v27, v13

    add-int/lit8 v2, v2, 0x5

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 342
    const/4 v4, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v25

    int-to-float v3, v0

    sub-float v2, v3, v2

    const/high16 v3, 0x4000

    sub-float v6, v2, v3

    add-int/lit8 v2, v28, 0x5

    sub-int/2addr v2, v12

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move-object v3, v9

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_graph_view;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_graph_view;->x:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/utils/ccc71_graph_view;->x:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v6, v25, v26

    int-to-float v6, v6

    sub-float v2, v6, v2

    const/high16 v6, 0x4000

    div-float v6, v2, v6

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_graph_view;->i:I

    add-int v2, v2, v28

    add-int/lit8 v2, v2, 0x5

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 351
    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_graph_view;->k:F

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_graph_view;->n:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/16 v3, 0xe10

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_graph_view;->q:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v9, v2, v3

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const v3, 0x40ffffff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 353
    const/4 v2, 0x0

    cmpl-float v2, v9, v2

    if-eqz v2, :cond_7

    .line 355
    const/4 v2, 0x0

    .line 356
    move/from16 v0, v26

    int-to-float v3, v0

    move v8, v2

    :goto_8
    move/from16 v0, v25

    int-to-float v2, v0

    cmpl-float v2, v3, v2

    if-gtz v2, :cond_17

    .line 376
    :cond_7
    sub-int v2, v28, v12

    int-to-float v2, v2

    move/from16 v0, v19

    int-to-float v3, v0

    sub-int v4, v28, v12

    sub-int v4, v4, v27

    sub-int/2addr v4, v13

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sub-int v4, v15, v19

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float v4, v2, v3

    .line 377
    move/from16 v0, v27

    int-to-float v2, v0

    cmpl-float v2, v4, v2

    if-lez v2, :cond_23

    sub-int v2, v28, v12

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-gez v2, :cond_23

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const v3, 0x70ffffff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 380
    move/from16 v0, v25

    int-to-float v3, v0

    move/from16 v0, v26

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 383
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 384
    const-string v6, "0"

    const/4 v7, 0x0

    const/4 v8, 0x1

    move/from16 v0, v25

    int-to-float v3, v0

    sub-float v2, v3, v2

    const/high16 v3, 0x4000

    sub-float v9, v2, v3

    const/high16 v2, 0x40a0

    add-float v10, v4, v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const v3, 0x40ffffff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    sub-int v2, v28, v12

    sub-int v2, v2, v27

    sub-int/2addr v2, v13

    int-to-float v2, v2

    const/high16 v3, 0x4120

    div-float/2addr v2, v3

    .line 390
    add-float v7, v4, v2

    :goto_9
    sub-int v3, v28, v12

    int-to-float v3, v3

    cmpg-float v3, v7, v3

    if-ltz v3, :cond_1a

    .line 394
    sub-float v7, v4, v2

    :goto_a
    add-int v3, v27, v13

    int-to-float v3, v3

    cmpl-float v3, v7, v3

    if-gtz v3, :cond_1b

    .line 398
    if-eqz v14, :cond_9

    sub-int v3, v15, v19

    const/4 v5, 0x1

    if-le v3, v5, :cond_9

    .line 400
    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_graph_view;->i:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_8

    .line 401
    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    .line 402
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 403
    const-string v6, ""

    .line 404
    add-float v3, v4, v2

    move/from16 v16, v3

    move-object v3, v6

    :goto_b
    sub-int v5, v28, v12

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/utils/ccc71_graph_view;->i:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v5, v16, v5

    if-ltz v5, :cond_1c

    .line 415
    sub-float v5, v4, v2

    move/from16 v35, v5

    move-object v5, v3

    move/from16 v3, v35

    :goto_c
    add-int v6, v27, v13

    move-object/from16 v0, p0

    iget v7, v0, Lccc71/utils/ccc71_graph_view;->i:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-gtz v6, :cond_1f

    .line 460
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lccc71/utils/ccc71_graph_view;->r:Z

    if-eqz v2, :cond_28

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd|HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 461
    :goto_d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 463
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_graph_view;->y:Ljava/util/Date;

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_graph_view;->y:Ljava/util/Date;

    .line 464
    :goto_e
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 465
    const/16 v3, 0xd

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/utils/ccc71_graph_view;->l:F

    neg-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lccc71/utils/ccc71_graph_view;->q:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v3, v6}, Ljava/util/Calendar;->add(II)V

    .line 466
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 467
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v29

    .line 469
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 470
    const/16 v6, 0xd

    move/from16 v0, v17

    neg-int v7, v0

    move-object/from16 v0, p0

    iget v8, v0, Lccc71/utils/ccc71_graph_view;->q:I

    mul-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 471
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 472
    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v30

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const/high16 v6, 0x3fc0

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 475
    if-eqz v14, :cond_f

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->G:[Lccc71/bmw/data/a/d;

    if-eqz v2, :cond_a

    .line 481
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v31

    .line 482
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v33

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->G:[Lccc71/bmw/data/a/d;

    array-length v3, v2

    .line 484
    const/4 v2, 0x0

    :goto_f
    if-lt v2, v3, :cond_2a

    .line 505
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->t:Lccc71/bmw/lib/ak;

    sget-object v3, Lccc71/bmw/lib/ak;->c:Lccc71/bmw/lib/ak;

    if-eq v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->t:Lccc71/bmw/lib/ak;

    sget-object v3, Lccc71/bmw/lib/ak;->f:Lccc71/bmw/lib/ak;

    if-ne v2, v3, :cond_2c

    :cond_b
    const v2, -0xdf00e0

    move v3, v2

    .line 506
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->t:Lccc71/bmw/lib/ak;

    sget-object v5, Lccc71/bmw/lib/ak;->c:Lccc71/bmw/lib/ak;

    if-eq v2, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->t:Lccc71/bmw/lib/ak;

    sget-object v5, Lccc71/bmw/lib/ak;->f:Lccc71/bmw/lib/ak;

    if-ne v2, v5, :cond_2d

    :cond_c
    const v2, -0xdfe0

    move v11, v2

    .line 508
    :goto_11
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, v2, v17

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/utils/ccc71_graph_view;->l:F

    sub-float/2addr v2, v5

    float-to-int v2, v2

    .line 509
    if-gtz v2, :cond_2e

    .line 510
    const/4 v2, 0x1

    move v14, v2

    .line 514
    :goto_12
    add-int v2, v14, v17

    .line 515
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v2, v5, :cond_3b

    .line 516
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v16, v2

    .line 517
    :goto_13
    sub-int v2, v16, v14

    sub-int v31, v17, v2

    .line 518
    add-int/lit8 v2, v14, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, v2, v19

    sub-int v5, v28, v12

    sub-int v5, v5, v27

    sub-int/2addr v5, v13

    mul-int/2addr v2, v5

    sub-int v5, v15, v19

    div-int/2addr v2, v5

    move/from16 v17, v14

    move v5, v2

    .line 519
    :goto_14
    move/from16 v0, v17

    move/from16 v1, v16

    if-lt v0, v1, :cond_2f

    .line 560
    if-eqz v22, :cond_f

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_graph_view;->i:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const-string v3, "Screen"

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 566
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 567
    const-string v3, "Screen"

    const/4 v4, 0x0

    const/4 v5, 0x6

    move/from16 v0, v25

    int-to-float v6, v0

    sub-float v2, v6, v2

    const/high16 v6, 0x4000

    sub-float v6, v2, v6

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_graph_view;->i:I

    add-int v2, v2, v28

    int-to-float v2, v2

    sub-float v2, v2, v24

    const/high16 v7, 0x4000

    add-float/2addr v2, v7

    float-to-int v2, v2

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const/high16 v3, 0x3ec0

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_graph_view;->i:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x4000

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const v3, -0x333334

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 571
    move/from16 v0, v25

    int-to-float v3, v0

    move/from16 v0, v28

    int-to-float v4, v0

    move/from16 v0, v26

    int-to-float v5, v0

    move/from16 v0, v28

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const/high16 v3, 0x3ec0

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_graph_view;->i:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 574
    move/from16 v0, v25

    int-to-float v3, v0

    move/from16 v0, v28

    int-to-float v4, v0

    move/from16 v0, v26

    int-to-float v5, v0

    move/from16 v0, v28

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 576
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-lt v0, v2, :cond_d

    .line 577
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 578
    :cond_d
    if-gez v14, :cond_e

    .line 579
    const/4 v14, 0x0

    :cond_e
    move v8, v14

    .line 580
    :goto_15
    move/from16 v0, v16

    if-lt v8, v0, :cond_38

    .line 601
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_graph_view;->i:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 604
    const/4 v4, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v26

    int-to-float v3, v0

    sub-float v6, v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_graph_view;->i:I

    add-int v2, v2, v28

    add-int/lit8 v2, v2, 0x5

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move-object/from16 v3, v29

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 605
    const/4 v4, 0x0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v25

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_graph_view;->i:I

    add-int v2, v2, v28

    add-int/lit8 v2, v2, 0x5

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move-object/from16 v3, v30

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 268
    :cond_10
    const/4 v2, 0x0

    move v12, v2

    goto/16 :goto_1

    .line 269
    :cond_11
    const/4 v2, 0x0

    move v13, v2

    goto/16 :goto_2

    .line 300
    :cond_12
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_3

    .line 321
    :cond_13
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 322
    if-le v2, v5, :cond_14

    move v5, v2

    .line 324
    :cond_14
    if-ge v2, v4, :cond_40

    .line 319
    :goto_16
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v2

    goto/16 :goto_4

    .line 334
    :cond_15
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 335
    :cond_16
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto/16 :goto_7

    .line 358
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const v4, 0x40ffffff

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    add-int v2, v27, v13

    int-to-float v4, v2

    sub-int v2, v28, v12

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 360
    rem-int/lit8 v2, v8, 0x18

    if-nez v2, :cond_19

    if-eqz v8, :cond_19

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const v4, -0x3f000001

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 363
    add-int v2, v27, v13

    int-to-float v4, v2

    sub-int v2, v28, v12

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 370
    :cond_18
    :goto_17
    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_graph_view;->n:I

    add-int/2addr v2, v8

    .line 356
    sub-float/2addr v3, v9

    move v8, v2

    goto/16 :goto_8

    .line 365
    :cond_19
    rem-int/lit8 v2, v8, 0xc

    if-nez v2, :cond_18

    if-eqz v8, :cond_18

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const v4, -0x7f000001

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    add-int v2, v27, v13

    int-to-float v4, v2

    sub-int v2, v28, v12

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_17

    .line 392
    :cond_1a
    move/from16 v0, v25

    int-to-float v6, v0

    move/from16 v0, v26

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v9, v7

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 390
    add-float/2addr v7, v2

    goto/16 :goto_9

    .line 396
    :cond_1b
    move/from16 v0, v25

    int-to-float v6, v0

    move/from16 v0, v26

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v9, v7

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 394
    sub-float/2addr v7, v2

    goto/16 :goto_a

    .line 406
    :cond_1c
    sub-int v5, v28, v12

    int-to-float v5, v5

    sub-float v5, v5, v16

    sub-int v6, v15, v19

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sub-int v6, v28, v12

    sub-int v6, v6, v27

    sub-int/2addr v6, v13

    int-to-float v6, v6

    div-float/2addr v5, v6

    move/from16 v0, v19

    int-to-float v6, v0

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 407
    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_graph_view;->t:Lccc71/bmw/lib/ak;

    sget-object v7, Lccc71/bmw/lib/ak;->c:Lccc71/bmw/lib/ak;

    if-eq v6, v7, :cond_1d

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_graph_view;->t:Lccc71/bmw/lib/ak;

    sget-object v7, Lccc71/bmw/lib/ak;->f:Lccc71/bmw/lib/ak;

    if-ne v6, v7, :cond_1e

    :cond_1d
    int-to-float v5, v5

    const/high16 v6, 0x4120

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    .line 408
    :goto_18
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    const-string v5, "0"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 410
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 411
    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    move/from16 v0, v25

    int-to-float v5, v0

    sub-float v3, v5, v3

    const/high16 v5, 0x4000

    sub-float v9, v3, v5

    const/high16 v3, 0x40a0

    add-float v10, v16, v3

    move-object/from16 v0, p0

    iget-object v11, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 404
    :goto_19
    add-float v3, v16, v2

    move/from16 v16, v3

    move-object v3, v6

    goto/16 :goto_b

    .line 407
    :cond_1e
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_18

    .line 417
    :cond_1f
    sub-int v6, v28, v12

    int-to-float v6, v6

    sub-float/2addr v6, v3

    sub-int v7, v15, v19

    int-to-float v7, v7

    mul-float/2addr v6, v7

    sub-int v7, v28, v12

    sub-int v7, v7, v27

    int-to-float v7, v7

    div-float/2addr v6, v7

    move/from16 v0, v19

    int-to-float v7, v0

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 418
    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_graph_view;->t:Lccc71/bmw/lib/ak;

    sget-object v8, Lccc71/bmw/lib/ak;->c:Lccc71/bmw/lib/ak;

    if-eq v7, v8, :cond_20

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_graph_view;->t:Lccc71/bmw/lib/ak;

    sget-object v8, Lccc71/bmw/lib/ak;->f:Lccc71/bmw/lib/ak;

    if-ne v7, v8, :cond_22

    :cond_20
    int-to-float v6, v6

    const/high16 v7, 0x4120

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    .line 419
    :goto_1a
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 421
    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 422
    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    move/from16 v0, v25

    int-to-float v9, v0

    sub-float v5, v9, v5

    const/high16 v9, 0x4000

    sub-float v9, v5, v9

    const/high16 v5, 0x40a0

    add-float v10, v3, v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    move-object v5, v6

    .line 415
    :cond_21
    sub-float/2addr v3, v2

    goto/16 :goto_c

    .line 418
    :cond_22
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1a

    .line 432
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const v3, 0x40ffffff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 433
    sub-int v2, v28, v12

    sub-int v2, v2, v27

    sub-int/2addr v2, v13

    int-to-float v2, v2

    const/high16 v3, 0x4120

    div-float/2addr v2, v3

    .line 434
    move/from16 v0, v27

    int-to-float v3, v0

    add-float/2addr v3, v2

    int-to-float v5, v13

    add-float v7, v3, v5

    :goto_1b
    sub-int v3, v28, v12

    int-to-float v3, v3

    cmpg-float v3, v7, v3

    if-ltz v3, :cond_26

    .line 438
    if-eqz v14, :cond_9

    sub-int v3, v15, v19

    const/4 v5, 0x1

    if-le v3, v5, :cond_9

    .line 440
    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_graph_view;->i:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_24

    .line 441
    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    .line 442
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 443
    const-string v6, ""

    .line 444
    move/from16 v0, v27

    int-to-float v3, v0

    add-float/2addr v3, v2

    int-to-float v5, v13

    add-float/2addr v3, v5

    move/from16 v16, v3

    move-object v3, v6

    :goto_1c
    sub-int v5, v28, v12

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/utils/ccc71_graph_view;->i:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v5, v16, v5

    if-gez v5, :cond_9

    .line 446
    sub-int v5, v28, v12

    int-to-float v5, v5

    sub-float v5, v5, v16

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    sub-int v6, v15, v19

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sub-int v6, v28, v12

    sub-int v6, v6, v27

    sub-int/2addr v6, v13

    int-to-float v6, v6

    div-float/2addr v5, v6

    move/from16 v0, v19

    int-to-float v6, v0

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 447
    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_graph_view;->t:Lccc71/bmw/lib/ak;

    sget-object v7, Lccc71/bmw/lib/ak;->c:Lccc71/bmw/lib/ak;

    if-eq v6, v7, :cond_25

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_graph_view;->t:Lccc71/bmw/lib/ak;

    sget-object v7, Lccc71/bmw/lib/ak;->f:Lccc71/bmw/lib/ak;

    if-ne v6, v7, :cond_27

    :cond_25
    int-to-float v5, v5

    const/high16 v6, 0x4120

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    .line 448
    :goto_1d
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 450
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 451
    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    move/from16 v0, v25

    int-to-float v5, v0

    sub-float v3, v5, v3

    const/high16 v5, 0x4000

    sub-float v9, v3, v5

    const/high16 v3, 0x40a0

    add-float v10, v16, v3

    move-object/from16 v0, p0

    iget-object v11, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 444
    :goto_1e
    add-float v3, v16, v2

    move/from16 v16, v3

    move-object v3, v6

    goto :goto_1c

    .line 436
    :cond_26
    move/from16 v0, v25

    int-to-float v6, v0

    move/from16 v0, v26

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v9, v7

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 434
    add-float/2addr v7, v2

    goto/16 :goto_1b

    .line 447
    :cond_27
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1d

    .line 460
    :cond_28
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd|hh:mm aa"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 463
    :cond_29
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    goto/16 :goto_e

    .line 486
    :cond_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/utils/ccc71_graph_view;->G:[Lccc71/bmw/data/a/d;

    aget-object v11, v5, v2

    .line 487
    iget-wide v5, v11, Lccc71/bmw/data/a/d;->c:J

    .line 488
    cmp-long v7, v5, v31

    if-lez v7, :cond_2b

    cmp-long v7, v5, v33

    if-gez v7, :cond_2b

    .line 490
    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    iget v8, v11, Lccc71/bmw/data/a/d;->d:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 492
    sub-long v5, v5, v31

    sub-int v7, v26, v25

    int-to-long v7, v7

    mul-long/2addr v5, v7

    sub-long v7, v33, v31

    div-long/2addr v5, v7

    long-to-int v14, v5

    .line 495
    add-int v5, v25, v14

    int-to-float v6, v5

    add-int v5, v27, v13

    int-to-float v7, v5

    add-int v5, v25, v14

    int-to-float v8, v5

    sub-int v5, v28, v12

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 499
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lccc71/utils/ccc71_graph_view;->F:Z

    if-eqz v5, :cond_2b

    .line 500
    iget-object v5, v11, Lccc71/bmw/data/a/d;->b:Ljava/lang/String;

    add-int v6, v25, v14

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    iget-object v8, v11, Lccc71/bmw/data/a/d;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    shr-int/lit8 v7, v7, 0x1

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lccc71/utils/ccc71_graph_view;->i:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 484
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 505
    :cond_2c
    const v2, -0xdfe0

    move v3, v2

    goto/16 :goto_10

    .line 506
    :cond_2d
    const v2, -0xdf00e0

    move v11, v2

    goto/16 :goto_11

    .line 511
    :cond_2e
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v2, v5, :cond_3c

    .line 512
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v14, v2

    goto/16 :goto_12

    .line 521
    :cond_2f
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, v2, v19

    sub-int v6, v28, v12

    sub-int v6, v6, v27

    sub-int/2addr v6, v13

    mul-int/2addr v2, v6

    sub-int v6, v15, v19

    div-int v18, v2, v6

    .line 522
    move/from16 v0, v18

    if-ne v0, v5, :cond_31

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 542
    :goto_1f
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    const v7, -0x55000078

    and-int/2addr v6, v7

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 547
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lccc71/utils/ccc71_graph_view;->E:Z

    if-eqz v2, :cond_36

    .line 549
    add-int v2, v31, v17

    sub-int/2addr v2, v14

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/utils/ccc71_graph_view;->k:F

    mul-float/2addr v2, v6

    move/from16 v0, v25

    int-to-float v6, v0

    add-float/2addr v6, v2

    sub-int v2, v28, v12

    sub-int/2addr v2, v5

    int-to-float v7, v2

    .line 550
    add-int v2, v31, v17

    sub-int/2addr v2, v14

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/utils/ccc71_graph_view;->k:F

    mul-float/2addr v2, v5

    move/from16 v0, v25

    int-to-float v5, v0

    add-float v8, v2, v5

    sub-int v2, v28, v12

    sub-int v2, v2, v18

    int-to-float v9, v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    .line 549
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 519
    :goto_20
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    move/from16 v5, v18

    goto/16 :goto_14

    .line 526
    :cond_31
    move/from16 v0, v18

    if-le v0, v5, :cond_35

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->t:Lccc71/bmw/lib/ak;

    sget-object v6, Lccc71/bmw/lib/ak;->a:Lccc71/bmw/lib/ak;

    if-ne v2, v6, :cond_34

    if-eqz v23, :cond_34

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-le v2, v0, :cond_34

    .line 530
    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 531
    const/4 v6, 0x3

    if-eq v2, v6, :cond_32

    const/4 v6, 0x5

    if-le v2, v6, :cond_33

    .line 532
    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const v6, -0xdfdf01

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1f

    .line 534
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1f

    .line 537
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1f

    .line 540
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1f

    .line 554
    :cond_36
    add-int v2, v31, v17

    sub-int/2addr v2, v14

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/utils/ccc71_graph_view;->k:F

    mul-float/2addr v2, v6

    move/from16 v0, v25

    int-to-float v6, v0

    add-float/2addr v6, v2

    sub-int v2, v28, v12

    sub-int/2addr v2, v5

    int-to-float v7, v2

    .line 555
    add-int v2, v31, v17

    sub-int/2addr v2, v14

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/utils/ccc71_graph_view;->k:F

    mul-float/2addr v2, v5

    move/from16 v0, v25

    int-to-float v5, v0

    add-float v8, v2, v5

    move/from16 v0, v28

    int-to-float v2, v0

    cmpg-float v2, v4, v2

    if-gez v2, :cond_37

    move v9, v4

    :goto_21
    move-object/from16 v0, p0

    iget-object v10, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    .line 554
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_20

    .line 555
    :cond_37
    move/from16 v0, v28

    int-to-float v9, v0

    goto :goto_21

    .line 582
    :cond_38
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    mul-int/lit8 v2, v2, 0x7f

    div-int/lit16 v2, v2, 0x3e8

    .line 583
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    if-eqz v2, :cond_39

    shl-int/lit8 v2, v2, 0x18

    const v4, 0x60cccc00

    add-int/2addr v2, v4

    :goto_22
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 584
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    const v4, -0x77005556

    and-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const v3, 0x3e333333

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_graph_view;->i:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 593
    :goto_23
    add-int v2, v31, v8

    sub-int/2addr v2, v14

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_graph_view;->k:F

    mul-float/2addr v2, v3

    move/from16 v0, v25

    int-to-float v3, v0

    add-float/2addr v3, v2

    move/from16 v0, v28

    int-to-float v4, v0

    .line 594
    add-int v2, v31, v8

    sub-int/2addr v2, v14

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/utils/ccc71_graph_view;->k:F

    mul-float/2addr v2, v5

    move/from16 v0, v25

    int-to-float v5, v0

    add-float/2addr v5, v2

    move/from16 v0, v28

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 593
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 580
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_15

    .line 583
    :cond_39
    const/4 v2, 0x0

    goto :goto_22

    .line 591
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_graph_view;->z:Landroid/graphics/Paint;

    const v3, 0x3e8ccccd

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_graph_view;->i:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_23

    :cond_3b
    move/from16 v16, v2

    goto/16 :goto_13

    :cond_3c
    move v14, v2

    goto/16 :goto_12

    :cond_3d
    move-object v6, v3

    goto/16 :goto_1e

    :cond_3e
    move-object v6, v3

    goto/16 :goto_19

    :cond_3f
    move v15, v2

    goto/16 :goto_5

    :cond_40
    move v2, v4

    goto/16 :goto_16
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 758
    iput p1, p0, Lccc71/utils/ccc71_graph_view;->c:I

    .line 759
    iput p2, p0, Lccc71/utils/ccc71_graph_view;->d:I

    .line 760
    iget v0, p0, Lccc71/utils/ccc71_graph_view;->i:I

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->f:I

    .line 761
    iget v0, p0, Lccc71/utils/ccc71_graph_view;->c:I

    iget v1, p0, Lccc71/utils/ccc71_graph_view;->i:I

    sub-int/2addr v0, v1

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->g:I

    .line 762
    iget v0, p0, Lccc71/utils/ccc71_graph_view;->d:I

    iget v1, p0, Lccc71/utils/ccc71_graph_view;->i:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->h:I

    .line 764
    iget v0, p0, Lccc71/utils/ccc71_graph_view;->g:I

    iget v1, p0, Lccc71/utils/ccc71_graph_view;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lccc71/utils/ccc71_graph_view;->j:I

    .line 766
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 768
    iget-object v0, p0, Lccc71/utils/ccc71_graph_view;->I:Lccc71/utils/q;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lccc71/utils/ccc71_graph_view;->I:Lccc71/utils/q;

    invoke-interface {v0}, Lccc71/utils/q;->a()V

    .line 770
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 747
    sget-object v0, Lccc71/utils/ccc71_graph_view;->H:Lccc71/utils/r;

    invoke-virtual {v0, p0, p1, p0}, Lccc71/utils/r;->a(Landroid/view/View;Landroid/view/MotionEvent;Lccc71/utils/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    const/4 v0, 0x1

    .line 752
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCurves(Z)V
    .locals 0
    .parameter

    .prologue
    .line 774
    iput-boolean p1, p0, Lccc71/utils/ccc71_graph_view;->E:Z

    .line 775
    return-void
.end method

.method public setData(Lccc71/bmw/lib/ak;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/Date;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lccc71/utils/ccc71_graph_view;->t:Lccc71/bmw/lib/ak;

    .line 621
    iput p4, p0, Lccc71/utils/ccc71_graph_view;->q:I

    .line 622
    iget-object v0, p0, Lccc71/utils/ccc71_graph_view;->s:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lccc71/utils/ccc71_graph_view;->r:Z

    .line 624
    iget-object v0, p0, Lccc71/utils/ccc71_graph_view;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/utils/ccc71_graph_view;->x:Ljava/lang/String;

    iput-object v0, p0, Lccc71/utils/ccc71_graph_view;->w:Ljava/lang/String;

    .line 626
    iput-object p6, p0, Lccc71/utils/ccc71_graph_view;->y:Ljava/util/Date;

    .line 628
    iput-object p3, p0, Lccc71/utils/ccc71_graph_view;->B:Ljava/util/ArrayList;

    .line 629
    iput-object p2, p0, Lccc71/utils/ccc71_graph_view;->A:Ljava/util/ArrayList;

    .line 630
    invoke-direct {p0}, Lccc71/utils/ccc71_graph_view;->j()V

    .line 632
    invoke-virtual {p0}, Lccc71/utils/ccc71_graph_view;->invalidate()V

    .line 633
    return-void
.end method

.method public setMarkers([Lccc71/bmw/data/a/d;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 610
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 611
    iput-object p1, p0, Lccc71/utils/ccc71_graph_view;->G:[Lccc71/bmw/data/a/d;

    .line 615
    :goto_0
    iput-boolean p2, p0, Lccc71/utils/ccc71_graph_view;->F:Z

    .line 616
    return-void

    .line 613
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/utils/ccc71_graph_view;->G:[Lccc71/bmw/data/a/d;

    goto :goto_0
.end method

.method public setOnEvent(Lccc71/utils/q;)V
    .locals 0
    .parameter

    .prologue
    .line 779
    iput-object p1, p0, Lccc71/utils/ccc71_graph_view;->I:Lccc71/utils/q;

    .line 780
    return-void
.end method

.method public setRevertMA(Z)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-boolean p1, p0, Lccc71/utils/ccc71_graph_view;->p:Z

    .line 209
    return-void
.end method

.method public setStates(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 637
    iput-object p1, p0, Lccc71/utils/ccc71_graph_view;->C:Ljava/util/ArrayList;

    .line 638
    iput-object p2, p0, Lccc71/utils/ccc71_graph_view;->D:Ljava/util/ArrayList;

    .line 639
    return-void
.end method

.method public setTemperatureUnit(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lccc71/utils/ccc71_graph_view;->o:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setVGrid(I)V
    .locals 1
    .parameter

    .prologue
    .line 237
    iget v0, p0, Lccc71/utils/ccc71_graph_view;->n:I

    if-eq v0, p1, :cond_0

    .line 239
    iput p1, p0, Lccc71/utils/ccc71_graph_view;->n:I

    .line 240
    invoke-virtual {p0}, Lccc71/utils/ccc71_graph_view;->invalidate()V

    .line 242
    :cond_0
    return-void
.end method

.method public setVisibleMinMax(Z)V
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-boolean v0, p0, Lccc71/utils/ccc71_graph_view;->m:Z

    if-eq v0, p1, :cond_0

    .line 229
    iput-boolean p1, p0, Lccc71/utils/ccc71_graph_view;->m:Z

    .line 230
    invoke-direct {p0}, Lccc71/utils/ccc71_graph_view;->j()V

    .line 231
    invoke-virtual {p0}, Lccc71/utils/ccc71_graph_view;->invalidate()V

    .line 233
    :cond_0
    return-void
.end method

.method public setZoomFactor(F)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x4120

    const/high16 v2, 0x3f80

    .line 142
    iget v0, p0, Lccc71/utils/ccc71_graph_view;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 144
    iget v0, p0, Lccc71/utils/ccc71_graph_view;->j:I

    int-to-float v0, v0

    iget v1, p0, Lccc71/utils/ccc71_graph_view;->k:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 145
    iput p1, p0, Lccc71/utils/ccc71_graph_view;->k:F

    .line 146
    iget v1, p0, Lccc71/utils/ccc71_graph_view;->k:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 148
    iput v2, p0, Lccc71/utils/ccc71_graph_view;->k:F

    .line 155
    :cond_0
    :goto_0
    iget v1, p0, Lccc71/utils/ccc71_graph_view;->j:I

    int-to-float v1, v1

    iget v2, p0, Lccc71/utils/ccc71_graph_view;->k:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 156
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lccc71/utils/ccc71_graph_view;->b(F)F

    .line 158
    invoke-virtual {p0}, Lccc71/utils/ccc71_graph_view;->invalidate()V

    .line 160
    :cond_1
    return-void

    .line 150
    :cond_2
    iget v1, p0, Lccc71/utils/ccc71_graph_view;->k:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 152
    iput v3, p0, Lccc71/utils/ccc71_graph_view;->k:F

    goto :goto_0
.end method
