.class public Ll;
.super Ljava/lang/Object;


# static fields
.field public static final ㅼ꽑嫄:Ll;

.field public static final 弱밧:Ll;

.field public static final 癤욱븳援:Ll;

.field public static final 궗:Ll;

.field public static final 먯꽌:Ll;

.field public static final 쇰뒗:Ll;


# instance fields
.field private 洹:I

.field private 꾨뱾:Z

.field private 대쫫:I

.field private 뚮Ц:Ljava/lang/String;

.field private 먯껜蹂대떎:Z

.field private 몃Ъ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ll;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const-string v3, "mb"

    invoke-direct {v0, v1, v2, v3}, Ll;-><init>(IILjava/lang/String;)V

    sput-object v0, Ll;->癤욱븳援:Ll;

    new-instance v0, Ll;

    const/16 v1, 0x140

    const/16 v2, 0x32

    const-string v3, "mb"

    invoke-direct {v0, v1, v2, v3}, Ll;-><init>(IILjava/lang/String;)V

    sput-object v0, Ll;->궗:Ll;

    new-instance v0, Ll;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    const-string v3, "as"

    invoke-direct {v0, v1, v2, v3}, Ll;-><init>(IILjava/lang/String;)V

    sput-object v0, Ll;->먯꽌:Ll;

    new-instance v0, Ll;

    const/16 v1, 0x1d4

    const/16 v2, 0x3c

    const-string v3, "as"

    invoke-direct {v0, v1, v2, v3}, Ll;-><init>(IILjava/lang/String;)V

    sput-object v0, Ll;->ㅼ꽑嫄:Ll;

    new-instance v0, Ll;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    const-string v3, "as"

    invoke-direct {v0, v1, v2, v3}, Ll;-><init>(IILjava/lang/String;)V

    sput-object v0, Ll;->弱밧:Ll;

    new-instance v0, Ll;

    const/16 v1, 0xa0

    const/16 v2, 0x258

    const-string v3, "as"

    invoke-direct {v0, v1, v2, v3}, Ll;-><init>(IILjava/lang/String;)V

    sput-object v0, Ll;->쇰뒗:Ll;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ll;-><init>(IILjava/lang/String;)V

    invoke-direct {p0}, Ll;->쇰뒗()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ll;->꾨뱾:Z

    const-string v0, "mb"

    iput-object v0, p0, Ll;->뚮Ц:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ll;->꾨뱾:Z

    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ll;->대쫫:I

    iput p2, p0, Ll;->洹:I

    iput-object p3, p0, Ll;->뚮Ц:Ljava/lang/String;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Ll;->몃Ъ:Z

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Ll;->먯껜蹂대떎:Z

    iput-boolean v2, p0, Ll;->꾨뱾:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static 癤욱븳援(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v1, v0

    float-to-int v0, v0

    return v0
.end method

.method public static 癤욱븳援(Ll;Landroid/content/Context;)Ll;
    .locals 4

    if-eqz p1, :cond_0

    invoke-direct {p0}, Ll;->쇰뒗()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0}, Ll;->쇰뒗()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Ll;->궗:Ll;

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    iget-boolean v0, p0, Ll;->몃Ъ:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Ll;->癤욱븳援(Landroid/content/Context;)I

    move-result v0

    :goto_1
    iget-boolean v1, p0, Ll;->먯껜蹂대떎:Z

    if-eqz v1, :cond_4

    invoke-static {p1}, Ll;->궗(Landroid/content/Context;)I

    move-result v1

    :goto_2
    new-instance v2, Ll;

    iget-object v3, p0, Ll;->뚮Ц:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Ll;-><init>(IILjava/lang/String;)V

    iget-boolean v0, p0, Ll;->먯껜蹂대떎:Z

    iput-boolean v0, v2, Ll;->먯껜蹂대떎:Z

    iget-boolean v0, p0, Ll;->몃Ъ:Z

    iput-boolean v0, v2, Ll;->몃Ъ:Z

    iget-boolean v0, p0, Ll;->꾨뱾:Z

    iput-boolean v0, v2, Ll;->꾨뱾:Z

    move-object p0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ll;->癤욱븳援()I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ll;->궗()I

    move-result v1

    goto :goto_2
.end method

.method private static 궗(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v1, v0

    float-to-int v0, v0

    const/16 v1, 0x190

    if-gt v0, v1, :cond_0

    const/16 v0, 0x20

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x2d0

    if-gt v0, v1, :cond_1

    const/16 v0, 0x32

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    goto :goto_0
.end method

.method private 쇰뒗()Z
    .locals 1

    iget v0, p0, Ll;->대쫫:I

    if-ltz v0, :cond_0

    iget v0, p0, Ll;->洹:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Ll;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Ll;

    iget v1, p0, Ll;->대쫫:I

    iget v2, p1, Ll;->대쫫:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Ll;->洹:I

    iget v2, p1, Ll;->洹:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Ll;->대쫫:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Ll;->洹:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ll;->癤욱븳援()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ll;->궗()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ll;->뚮Ц:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ll;->뚮Ц:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public ㅼ꽑嫄()Z
    .locals 1

    iget-boolean v0, p0, Ll;->먯껜蹂대떎:Z

    return v0
.end method

.method public 弱밧()Z
    .locals 1

    iget-boolean v0, p0, Ll;->꾨뱾:Z

    return v0
.end method

.method public 癤욱븳援()I
    .locals 2

    iget v0, p0, Ll;->대쫫:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Ad size was not set before getWidth() was called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Ll;->대쫫:I

    return v0
.end method

.method public 궗()I
    .locals 2

    iget v0, p0, Ll;->洹:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Ad size was not set before getHeight() was called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Ll;->洹:I

    return v0
.end method

.method public 먯꽌()Z
    .locals 1

    iget-boolean v0, p0, Ll;->몃Ъ:Z

    return v0
.end method
