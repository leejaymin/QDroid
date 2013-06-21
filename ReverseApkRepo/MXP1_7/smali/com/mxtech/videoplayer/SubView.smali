.class public final Lcom/mxtech/videoplayer/SubView;
.super Landroid/widget/ViewSwitcher;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lod;


# static fields
.field public static final 癤욱븳援:Ljava/lang/String;

.field public static 궗:F


# instance fields
.field private final ㅼ꽑嫄:Ljava/util/ArrayList;

.field private final 弱밧:Landroid/os/Handler;

.field private 洹:I

.field private 꾨뱾:Landroid/view/animation/Animation;

.field private 대쫫:Lcom/mxtech/videoplayer/SubtitleOverlay;

.field private 뚮Ц:Landroid/view/animation/Animation;

.field private 뚮젮議뚮떎怨:I

.field private 먮:I

.field private 먯껜蹂대떎:Landroid/view/animation/Animation;

.field private 먯꽌:I

.field private 몃Ъ:Landroid/view/animation/Animation;

.field private 붿슧:Landroid/view/animation/Animation;

.field private 쇰뒗:Lly;

.field private 留먰븷:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lhg;->ㅼ꽑嫄:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".View"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mxtech/videoplayer/SubView;->癤욱븳援:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/SubView;->弱밧:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/mxtech/videoplayer/SubView;->먮:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/mxtech/videoplayer/SubView;->뚮젮議뚮떎怨:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/SubView;->弱밧:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/mxtech/videoplayer/SubView;->먮:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/mxtech/videoplayer/SubView;->뚮젮議뚮떎怨:I

    return-void
.end method

.method private getNextPosition()I
    .locals 4

    const v0, 0x7fffffff

    iget-object v1, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loa;

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Loa;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Loa;->癤욱븳援:Lhg;

    invoke-interface {v0}, Lhg;->next()I

    move-result v0

    if-ge v0, v1, :cond_0

    move v1, v0

    goto :goto_0
.end method

.method private 癤욱븳援(Landroid/text/SpannableStringBuilder;Loa;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1

    iget-boolean v0, p0, Lcom/mxtech/videoplayer/SubView;->留먰븷:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Loa;->癤욱븳援:Lhg;

    invoke-interface {v0}, Lhg;->癤욱븳援()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-static {v0}, Lcom/mxtech/subtitle/PolishStylizer;->癤욱븳援(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    if-nez p1, :cond_1

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    :cond_1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p1}, Leo;->癤욱븳援(Landroid/text/Spannable;)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_2
    invoke-virtual {p1, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    return-object p1
.end method

.method private 癤욱븳援(Lcom/mxtech/widget/StrokeView;Ljava/lang/CharSequence;)V
    .locals 7

    invoke-virtual {p1}, Lcom/mxtech/widget/StrokeView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p1}, Lcom/mxtech/widget/StrokeView;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getPaddingRight()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Lcom/mxtech/widget/StrokeView;Ljava/lang/CharSequence;IIII)V

    return-void
.end method

.method private 癤욱븳援(Lcom/mxtech/widget/StrokeView;Ljava/lang/CharSequence;IIII)V
    .locals 6

    const/4 v1, 0x0

    const/high16 v3, -0x8000

    instance-of v0, p2, Landroid/text/Spanned;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v0, p2

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v4, Liq;

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Liq;

    array-length v4, v0

    move v2, v1

    move v1, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/mxtech/videoplayer/SubView;->쇰뒗:Lly;

    invoke-interface {v1}, Lly;->뚮벏()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p3

    sub-int/2addr v1, p4

    sub-int/2addr v1, p5

    sub-int/2addr v1, p6

    :cond_2
    invoke-virtual {v5, v1}, Liq;->癤욱븳援(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private 癤욱븳援(Lcom/mxtech/widget/StrokeView;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Lcom/mxtech/widget/StrokeView;Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2, p3}, Lcom/mxtech/widget/StrokeView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method private 癤욱븳援(Loa;Z)V
    .locals 1

    iget-boolean v0, p1, Loa;->궗:Z

    if-eq v0, p2, :cond_0

    iput-boolean p2, p1, Loa;->궗:Z

    iget-object v0, p1, Loa;->癤욱븳援:Lhg;

    invoke-interface {v0, p2}, Lhg;->癤욱븳援(Z)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->洹()V

    :cond_0
    return-void
.end method

.method private 癤욱븳援(IIZZ)Z
    .locals 11

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_6

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move v1, v4

    :cond_1
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->弱밧:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v5

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_f

    move v7, v3

    :goto_2
    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->대쫫:Lcom/mxtech/videoplayer/SubtitleOverlay;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->쇰뒗:Lly;

    invoke-interface {v0}, Lly;->弱밧()Lcom/mxtech/videoplayer/SubtitleOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/SubView;->대쫫:Lcom/mxtech/videoplayer/SubtitleOverlay;

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->대쫫:Lcom/mxtech/videoplayer/SubtitleOverlay;

    invoke-virtual {v0, p0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->setListener(Lod;)V

    :cond_3
    if-nez p2, :cond_16

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->대쫫:Lcom/mxtech/videoplayer/SubtitleOverlay;

    if-eqz v0, :cond_1c

    if-nez v6, :cond_10

    if-eqz p4, :cond_10

    add-int/lit16 v0, p1, 0x3e8

    invoke-direct {p0}, Lcom/mxtech/videoplayer/SubView;->getNextPosition()I

    move-result v1

    if-ge v0, v1, :cond_10

    move v0, v4

    :goto_3
    iget-object v1, p0, Lcom/mxtech/videoplayer/SubView;->대쫫:Lcom/mxtech/videoplayer/SubtitleOverlay;

    invoke-virtual {v1, v6, v0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->癤욱븳援(Ljava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v3

    :goto_4
    move v1, v0

    :goto_5
    if-eqz v7, :cond_14

    if-eqz p4, :cond_12

    add-int/lit16 v0, p1, 0x3e8

    invoke-direct {p0}, Lcom/mxtech/videoplayer/SubView;->getNextPosition()I

    move-result v2

    if-ge v0, v2, :cond_12

    move v0, v4

    :goto_6
    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v5, v2, v0}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;I)Z

    move-result v0

    if-nez v0, :cond_13

    if-nez v1, :cond_13

    :cond_4
    :goto_7
    return v3

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loa;

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Loa;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Loa;->癤욱븳援:Lhg;

    invoke-interface {v0, p1}, Lhg;->癤욱븳援(I)Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v3

    :cond_7
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loa;

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Loa;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v0, v0, Loa;->癤욱븳援:Lhg;

    invoke-interface {v0, p1}, Lhg;->癤욱븳援(I)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez v1, :cond_8

    move v0, v3

    :goto_9
    move v1, v0

    goto :goto_8

    :cond_8
    move v0, v4

    goto :goto_9

    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Loa;

    invoke-direct {p0, v1}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Loa;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Loa;->癤욱븳援:Lhg;

    iget v2, p0, Lcom/mxtech/videoplayer/SubView;->뚮젮議뚮떎怨:I

    invoke-interface {v0, v2}, Lhg;->궗(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_a

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p0, v5, v1, v0}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Landroid/text/SpannableStringBuilder;Loa;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    goto/16 :goto_1

    :cond_a
    instance-of v2, v0, Lhe;

    if-eqz v2, :cond_c

    if-nez v6, :cond_b

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    check-cast v0, Lhe;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    array-length v9, v2

    move v7, v3

    :goto_a
    if-ge v7, v9, :cond_2

    aget-object v0, v2, v7

    instance-of v10, v0, Ljava/lang/CharSequence;

    if-eqz v10, :cond_d

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p0, v5, v1, v0}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Landroid/text/SpannableStringBuilder;Loa;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    move-object v5, v6

    :goto_b
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move-object v6, v5

    move-object v5, v0

    goto :goto_a

    :cond_d
    if-nez v6, :cond_e

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_e
    check-cast v0, Lhe;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    move-object v5, v6

    goto :goto_b

    :cond_f
    move v7, v4

    goto/16 :goto_2

    :cond_10
    move v0, v3

    goto/16 :goto_3

    :cond_11
    move v0, v4

    goto/16 :goto_4

    :cond_12
    move v0, v3

    goto/16 :goto_6

    :cond_13
    move v3, v4

    goto/16 :goto_7

    :cond_14
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v5, v0, v3}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;I)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz v1, :cond_4

    :cond_15
    move v3, v4

    goto/16 :goto_7

    :cond_16
    if-gez p2, :cond_18

    const/4 v0, 0x3

    :goto_c
    iget-object v1, p0, Lcom/mxtech/videoplayer/SubView;->대쫫:Lcom/mxtech/videoplayer/SubtitleOverlay;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/mxtech/videoplayer/SubView;->대쫫:Lcom/mxtech/videoplayer/SubtitleOverlay;

    invoke-virtual {v1, v6, v0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->癤욱븳援(Ljava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_19

    move v1, v3

    :goto_d
    move v2, v1

    :goto_e
    if-eqz v7, :cond_1a

    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    :goto_f
    invoke-direct {p0, v5, v1, v0}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;I)Z

    move-result v0

    if-nez v0, :cond_17

    if-eqz v2, :cond_4

    :cond_17
    move v3, v4

    goto/16 :goto_7

    :cond_18
    const/4 v0, 0x2

    goto :goto_c

    :cond_19
    move v1, v4

    goto :goto_d

    :cond_1a
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto :goto_f

    :cond_1b
    move v2, v3

    goto :goto_e

    :cond_1c
    move v1, v3

    goto/16 :goto_5
.end method

.method private 癤욱븳援(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;I)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/StrokeView;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/mxtech/widget/StrokeView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    packed-switch p3, :pswitch_data_0

    sget-object v0, Lcom/mxtech/videoplayer/SubView;->癤욱븳援:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown animation code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v0, p1, p2}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Lcom/mxtech/widget/StrokeView;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/StrokeView;

    invoke-direct {p0, v0, p1, p2}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Lcom/mxtech/widget/StrokeView;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->showNext()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/StrokeView;

    invoke-direct {p0, v0, p1, p2}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Lcom/mxtech/widget/StrokeView;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->꾨뱾:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lni;->slide_in_right:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/SubView;->꾨뱾:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->꾨뱾:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->뚮Ц:Landroid/view/animation/Animation;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lni;->slide_out_left:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/SubView;->뚮Ц:Landroid/view/animation/Animation;

    :cond_3
    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->꾨뱾:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubView;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->뚮Ц:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubView;->setOutAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->showNext()V

    invoke-virtual {p0, v3}, Lcom/mxtech/videoplayer/SubView;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->몃Ъ:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubView;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/StrokeView;

    invoke-direct {p0, v0, p1, p2}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Lcom/mxtech/widget/StrokeView;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->먯껜蹂대떎:Landroid/view/animation/Animation;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lni;->slide_in_left:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/SubView;->먯껜蹂대떎:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->먯껜蹂대떎:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_4
    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->붿슧:Landroid/view/animation/Animation;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lni;->slide_out_right:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/SubView;->붿슧:Landroid/view/animation/Animation;

    :cond_5
    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->먯껜蹂대떎:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubView;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->붿슧:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubView;->setOutAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->showNext()V

    invoke-virtual {p0, v3}, Lcom/mxtech/videoplayer/SubView;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->몃Ъ:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubView;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private 癤욱븳援(Loa;)Z
    .locals 1

    iget-boolean v0, p1, Loa;->궗:Z

    return v0
.end method

.method private 먯껜蹂대떎()V
    .locals 3

    iget v0, p0, Lcom/mxtech/videoplayer/SubView;->먮:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->쇰뒗:Lly;

    invoke-interface {v0}, Lly;->몃Ъ()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->쇰뒗:Lly;

    iget v1, p0, Lcom/mxtech/videoplayer/SubView;->먮:I

    iget v2, p0, Lcom/mxtech/videoplayer/SubView;->洹:I

    add-int/2addr v1, v2

    const/16 v2, 0x1770

    invoke-interface {v0, v1, v2}, Lly;->궗(II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mxtech/videoplayer/SubView;->먮:I

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄()V

    :cond_0
    return-void
.end method

.method private 몃Ъ()V
    .locals 2

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/StrokeView;

    invoke-virtual {v0}, Lcom/mxtech/widget/StrokeView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Lcom/mxtech/widget/StrokeView;Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/StrokeView;

    invoke-virtual {v0}, Lcom/mxtech/widget/StrokeView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Lcom/mxtech/widget/StrokeView;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getEnabledSubtitleCount()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loa;

    iget-boolean v0, v0, Loa;->궗:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getEnabledSubtitles()[I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getEnabledSubtitleCount()I

    move-result v1

    new-array v3, v1, [I

    if-lez v1, :cond_0

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    return-object v3

    :cond_1
    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loa;

    iget-boolean v0, v0, Loa;->궗:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    aput v1, v3, v2

    move v2, v0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getPositionModifier()I
    .locals 1

    iget v0, p0, Lcom/mxtech/videoplayer/SubView;->洹:I

    return v0
.end method

.method public getSubtitleCount()I
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/StrokeView;

    invoke-virtual {v0}, Lcom/mxtech/widget/StrokeView;->getTextSize()F

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/mxtech/videoplayer/SubView;->쇰뒗:Lly;

    invoke-interface {v2}, Lly;->紐낆옱()I

    move-result v2

    iget v3, p0, Lcom/mxtech/videoplayer/SubView;->洹:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2, v1, v0, v0}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(IIZZ)Z

    :goto_0
    return v0

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/mxtech/videoplayer/SubView;->먯껜蹂대떎()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public makeView()Landroid/view/View;
    .locals 9

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/mxtech/videoplayer/SubText;

    invoke-direct {v6, v5}, Lcom/mxtech/videoplayer/SubText;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v7, "subtitle_border_thickness"

    const v8, 0x3da3d70a

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {}, Lms;->먯껜蹂대떎()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/mxtech/videoplayer/SubText;->궗(Z)V

    sget v7, Lms;->洹:I

    invoke-virtual {v6, v7}, Lcom/mxtech/videoplayer/SubText;->setBorderColor(I)V

    invoke-virtual {v6, v0, v0}, Lcom/mxtech/videoplayer/SubText;->setBorderThickness(FF)V

    sget v0, Lms;->몃Ъ:I

    or-int/lit8 v0, v0, 0x50

    invoke-virtual {v6, v0}, Lcom/mxtech/videoplayer/SubText;->setGravity(I)V

    const/16 v0, 0xb

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v7, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-ge v0, v7, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v6, v0}, Lcom/mxtech/videoplayer/SubText;->setMinLines(I)V

    invoke-virtual {v6, v3}, Lcom/mxtech/videoplayer/SubText;->setFocusable(Z)V

    invoke-static {}, Lms;->弱밧()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/mxtech/videoplayer/SubText;->setTypeface(Landroid/graphics/Typeface;)V

    sget v0, Lms;->대쫫:I

    invoke-virtual {v6, v0}, Lcom/mxtech/videoplayer/SubText;->setTextColor(I)V

    invoke-static {v5}, Lms;->궗(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v6, v2, v0}, Lcom/mxtech/videoplayer/SubText;->setTextSize(IF)V

    sget v0, Lms;->쇰뒗:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {v6, v0}, Lcom/mxtech/videoplayer/SubText;->setBold(Z)V

    invoke-static {}, Lms;->꾨뱾()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/mxtech/videoplayer/SubText;->癤욱븳援(Z)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getNextFocusUpId()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/mxtech/videoplayer/SubText;->setNextFocusUpId(I)V

    const/high16 v0, 0x4210

    invoke-static {v0}, Lee;->먯꽌(F)F

    move-result v0

    float-to-int v2, v0

    sget v0, Lms;->몃Ъ:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, v1, :cond_3

    move v0, v4

    :goto_2
    sget v1, Lms;->몃Ъ:I

    and-int/lit8 v1, v1, 0x7

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    move v2, v4

    :cond_0
    invoke-virtual {v6, v0, v4, v2, v4}, Lcom/mxtech/videoplayer/SubText;->setPadding(IIII)V

    return-object v6

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/StrokeView;

    const-string v1, ""

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v0, v1, v2}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Lcom/mxtech/widget/StrokeView;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Lcom/mxtech/videoplayer/SubtitleOverlay;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onFinishInflate()V

    const v0, 0x3bc49ba6

    invoke-static {v0}, Lee;->癤욱븳援(F)F

    move-result v0

    sput v0, Lcom/mxtech/videoplayer/SubView;->궗:F

    sget-boolean v0, Lms;->먯껜蹂대떎:Z

    if-eqz v0, :cond_0

    sget v0, Lms;->꾨뱾:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubView;->setBackgroundColor(I)V

    :cond_0
    sget v0, Lms;->뚮벏:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getPaddingRight()I

    move-result v2

    sget v3, Lms;->뚮벏:I

    int-to-float v3, v3

    invoke-static {v3}, Lee;->먯꽌(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mxtech/videoplayer/SubView;->setPadding(IIII)V

    :cond_1
    invoke-static {}, Lms;->寃껋씠()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubView;->setEnableFadeOut(Z)V

    invoke-virtual {p0, p0}, Lcom/mxtech/videoplayer/SubView;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    return-void
.end method

.method public final setBorderColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/SubView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/StrokeView;

    invoke-virtual {v0, p1}, Lcom/mxtech/widget/StrokeView;->setBorderColor(I)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public final setBorderThickness(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/SubView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/StrokeView;

    invoke-virtual {v0, p1, p2}, Lcom/mxtech/widget/StrokeView;->setBorderThickness(FF)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public setEnableFadeOut(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/SubView;->몃Ъ:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->몃Ъ:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->몃Ъ:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubView;->setOutAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mxtech/videoplayer/SubView;->몃Ъ:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method public final setGravity(I)V
    .locals 10

    const/4 v7, 0x0

    const/high16 v0, 0x4210

    invoke-static {v0}, Lee;->먯꽌(F)F

    move-result v0

    float-to-int v8, v0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v9, v0

    :goto_0
    if-gez v9, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v9}, Lcom/mxtech/videoplayer/SubView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mxtech/widget/StrokeView;

    invoke-virtual {v1, p1}, Lcom/mxtech/widget/StrokeView;->setGravity(I)V

    and-int/lit8 v0, p1, 0x7

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    move v3, v7

    :goto_1
    and-int/lit8 v0, p1, 0x7

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    move v4, v7

    :goto_2
    invoke-virtual {v1}, Lcom/mxtech/widget/StrokeView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getPaddingRight()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Lcom/mxtech/widget/StrokeView;Ljava/lang/CharSequence;IIII)V

    invoke-virtual {v1, v3, v7, v4, v7}, Lcom/mxtech/widget/StrokeView;->setPadding(IIII)V

    add-int/lit8 v0, v9, -0x1

    move v9, v0

    goto :goto_0

    :cond_1
    move v3, v8

    goto :goto_1

    :cond_2
    move v4, v8

    goto :goto_2
.end method

.method public setPadding(IIII)V
    .locals 8

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-gez v7, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ViewSwitcher;->setPadding(IIII)V

    return-void

    :cond_0
    invoke-virtual {p0, v7}, Lcom/mxtech/videoplayer/SubView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mxtech/widget/StrokeView;

    invoke-virtual {v1}, Lcom/mxtech/widget/StrokeView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mxtech/widget/StrokeView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v1}, Lcom/mxtech/widget/StrokeView;->getPaddingRight()I

    move-result v4

    move-object v0, p0

    move v5, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Lcom/mxtech/widget/StrokeView;Ljava/lang/CharSequence;IIII)V

    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0
.end method

.method public setPlayer(Lly;Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Lcom/mxtech/videoplayer/SubView;->쇰뒗:Lly;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubView;->setNextFocusUpId(I)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setNextFocusUpId(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public setPositionModifier(I)V
    .locals 1

    iput p1, p0, Lcom/mxtech/videoplayer/SubView;->洹:I

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->쇰뒗:Lly;

    invoke-interface {v0}, Lly;->紐낆옱()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/StrokeView;

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/mxtech/widget/StrokeView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/StrokeView;

    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v0, p1, v1}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Lcom/mxtech/widget/StrokeView;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->showNext()V

    :goto_0
    return-void

    :cond_1
    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v0, p1, v1}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Lcom/mxtech/widget/StrokeView;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method

.method public final setTextColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/SubView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/StrokeView;

    invoke-virtual {v0, p1}, Lcom/mxtech/widget/StrokeView;->setTextColor(I)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public setTextSize(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/SubView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/StrokeView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Lcom/mxtech/widget/StrokeView;->setTextSize(IF)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public final setTypeface(Landroid/graphics/Typeface;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/mxtech/videoplayer/SubView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/StrokeView;

    invoke-virtual {v0, p1}, Lcom/mxtech/widget/StrokeView;->setTypeface(Landroid/graphics/Typeface;)V

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/mxtech/widget/StrokeView;->setBold(Z)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public showNext()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ViewSwitcher;->showNext()V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubView;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public ㅼ꽑嫄()V
    .locals 1

    iget v0, p0, Lcom/mxtech/videoplayer/SubView;->먯꽌:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mxtech/videoplayer/SubView;->먯꽌:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/mxtech/videoplayer/SubView;->먯꽌:I

    :cond_0
    return-void
.end method

.method public ㅼ꽑嫄(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(IZZ)V

    return-void
.end method

.method public 弱밧()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mxtech/videoplayer/SubView;->먯꽌:I

    return-void
.end method

.method public 弱밧(I)V
    .locals 6

    const v2, 0x7fffffff

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->쇰뒗:Lly;

    invoke-interface {v0}, Lly;->먯껜蹂대떎()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gez p1, :cond_6

    const/high16 v0, -0x8000

    iget-object v1, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    if-ltz v1, :cond_0

    if-eq v1, v2, :cond_0

    invoke-direct {p0, v1, p1, v5, v5}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(IIZZ)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/mxtech/videoplayer/SubView;->먮:I

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->먯꽌()V

    :cond_4
    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->쇰뒗:Lly;

    invoke-interface {v0, v1}, Lly;->ㅼ꽑嫄(I)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->쇰뒗:Lly;

    const/4 v2, 0x7

    invoke-interface {v0, v2}, Lly;->먯꽌(I)V

    iput v1, p0, Lcom/mxtech/videoplayer/SubView;->먮:I

    goto :goto_0

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loa;

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Loa;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v0, Loa;->癤욱븳援:Lhg;

    invoke-interface {v0}, Lhg;->previous()I

    move-result v0

    if-ge v1, v0, :cond_2

    move v1, v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loa;

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Loa;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v0, v0, Loa;->癤욱븳援:Lhg;

    invoke-interface {v0}, Lhg;->next()I

    move-result v0

    if-ge v0, v1, :cond_7

    move v1, v0

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->쇰뒗:Lly;

    iget v2, p0, Lcom/mxtech/videoplayer/SubView;->洹:I

    add-int/2addr v1, v2

    const/16 v2, 0x1770

    invoke-interface {v0, v1, v2}, Lly;->궗(II)V

    goto :goto_0
.end method

.method public 洹()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->대쫫()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->弱밧:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->弱밧:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public 癤욱븳援()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mxtech/videoplayer/SubView;->洹:I

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->弱밧()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mxtech/videoplayer/SubView;->대쫫:Lcom/mxtech/videoplayer/SubtitleOverlay;

    return-void
.end method

.method public 癤욱븳援(I)V
    .locals 0

    invoke-direct {p0}, Lcom/mxtech/videoplayer/SubView;->몃Ъ()V

    return-void
.end method

.method public 癤욱븳援(IZ)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loa;

    invoke-direct {p0, v0, p2}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Loa;Z)V

    return-void
.end method

.method public 癤욱븳援(IZZ)V
    .locals 2

    iget v0, p0, Lcom/mxtech/videoplayer/SubView;->먯꽌:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mxtech/videoplayer/SubView;->洹:I

    sub-int v0, p1, v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(IIZZ)Z

    :cond_0
    return-void
.end method

.method public 癤욱븳援(Lcom/mxtech/videoplayer/SubtitleOverlay;)V
    .locals 2

    const/4 v1, 0x2

    iget v0, p0, Lcom/mxtech/videoplayer/SubView;->먮:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->弱밧:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->弱밧:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public 癤욱븳援(Lcom/mxtech/videoplayer/SubtitleOverlay;II)V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->쇰뒗:Lly;

    invoke-interface {v0, p2, p3}, Lly;->弱밧(II)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->洹()V

    return-void
.end method

.method public 癤욱븳援(Lhg;)V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->洹()V

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loa;

    iget-object v0, v0, Loa;->癤욱븳援:Lhg;

    if-ne v0, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public 癤욱븳援(Lhg;Z)V
    .locals 2

    invoke-interface {p1, p2}, Lhg;->癤욱븳援(Z)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    new-instance v1, Loa;

    invoke-direct {v1, p1, p2}, Loa;-><init>(Lhg;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->洹()V

    return-void
.end method

.method public 癤욱븳援(Ljava/util/List;)V
    .locals 5

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->洹()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhg;

    invoke-interface {v0, v4}, Lhg;->癤욱븳援(Z)V

    iget-object v2, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    new-instance v3, Loa;

    invoke-direct {v3, v0, v4}, Loa;-><init>(Lhg;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final 癤욱븳援(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/SubView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/StrokeView;

    invoke-virtual {v0, p1}, Lcom/mxtech/widget/StrokeView;->癤욱븳援(Z)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public 궗(I)Lhg;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loa;

    iget-object v0, v0, Loa;->癤욱븳援:Lhg;

    return-object v0
.end method

.method public 궗(Lhg;Z)V
    .locals 3

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loa;

    iget-object v2, v0, Loa;->癤욱븳援:Lhg;

    if-ne v2, p1, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Loa;Z)V

    goto :goto_0
.end method

.method public final 궗(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/SubView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/StrokeView;

    invoke-virtual {v0, p1}, Lcom/mxtech/widget/StrokeView;->궗(Z)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public 궗()Z
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loa;

    iget-boolean v0, v0, Loa;->궗:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public 대쫫()V
    .locals 7

    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getEnabledSubtitleCount()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v1

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v4, v1

    :goto_2
    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/mxtech/videoplayer/SubView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_3
    if-gez v2, :cond_4

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loa;

    iget-boolean v6, v0, Loa;->궗:Z

    if-eqz v6, :cond_0

    iget-object v0, v0, Loa;->癤욱븳援:Lhg;

    invoke-interface {v0}, Lhg;->궗()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    move v3, v4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v2}, Lcom/mxtech/videoplayer/SubView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v4, :cond_5

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x4

    goto :goto_4

    :cond_6
    move v3, v4

    goto :goto_1
.end method

.method public 먯꽌()V
    .locals 1

    iget v0, p0, Lcom/mxtech/videoplayer/SubView;->먯꽌:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mxtech/videoplayer/SubView;->먯꽌:I

    return-void
.end method

.method public 먯꽌(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mxtech/videoplayer/SubView;->留먰븷:Z

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubView;->洹()V

    return-void
.end method

.method public 먯꽌(I)Z
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loa;

    iget-boolean v0, v0, Loa;->궗:Z

    return v0
.end method

.method public 쇰뒗()Z
    .locals 3

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubView;->ㅼ꽑嫄:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loa;

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(Loa;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Loa;->癤욱븳援:Lhg;

    invoke-interface {v0}, Lhg;->궗()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
