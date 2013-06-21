.class public Lorg/cocos2d/l/o;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F


# direct methods
.method public constructor <init>()V
    .locals 13

    const/4 v1, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, v1

    move v10, v1

    move v11, v1

    move v12, v1

    invoke-direct/range {v0 .. v12}, Lorg/cocos2d/l/o;-><init>(FFFFFFFFFFFF)V

    return-void
.end method

.method public constructor <init>(FFFFFFFFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/cocos2d/l/o;->a:F

    iput p2, p0, Lorg/cocos2d/l/o;->b:F

    iput p3, p0, Lorg/cocos2d/l/o;->c:F

    iput p4, p0, Lorg/cocos2d/l/o;->d:F

    iput p5, p0, Lorg/cocos2d/l/o;->e:F

    iput p6, p0, Lorg/cocos2d/l/o;->f:F

    iput p7, p0, Lorg/cocos2d/l/o;->g:F

    iput p8, p0, Lorg/cocos2d/l/o;->h:F

    iput p9, p0, Lorg/cocos2d/l/o;->i:F

    iput p10, p0, Lorg/cocos2d/l/o;->j:F

    iput p11, p0, Lorg/cocos2d/l/o;->k:F

    iput p12, p0, Lorg/cocos2d/l/o;->l:F

    return-void
.end method

.method public constructor <init>([F)V
    .locals 13

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v0, 0x1

    aget v2, p1, v0

    const/4 v0, 0x2

    aget v3, p1, v0

    const/4 v0, 0x3

    aget v4, p1, v0

    const/4 v0, 0x4

    aget v5, p1, v0

    const/4 v0, 0x5

    aget v6, p1, v0

    const/4 v0, 0x6

    aget v7, p1, v0

    const/4 v0, 0x7

    aget v8, p1, v0

    const/16 v0, 0x8

    aget v9, p1, v0

    const/16 v0, 0x9

    aget v10, p1, v0

    const/16 v0, 0xa

    aget v11, p1, v0

    const/16 v0, 0xb

    aget v12, p1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lorg/cocos2d/l/o;-><init>(FFFFFFFFFFFF)V

    return-void
.end method


# virtual methods
.method public final a()[F
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lorg/cocos2d/l/o;->a:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lorg/cocos2d/l/o;->b:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lorg/cocos2d/l/o;->c:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lorg/cocos2d/l/o;->d:F

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lorg/cocos2d/l/o;->e:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lorg/cocos2d/l/o;->f:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lorg/cocos2d/l/o;->g:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lorg/cocos2d/l/o;->h:F

    aput v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lorg/cocos2d/l/o;->i:F

    aput v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lorg/cocos2d/l/o;->j:F

    aput v2, v0, v1

    const/16 v1, 0xa

    iget v2, p0, Lorg/cocos2d/l/o;->k:F

    aput v2, v0, v1

    const/16 v1, 0xb

    iget v2, p0, Lorg/cocos2d/l/o;->l:F

    aput v2, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CCQuad3: ( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/cocos2d/l/o;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/l/o;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/l/o;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/l/o;->j:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/l/o;->k:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/l/o;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/l/o;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/l/o;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/l/o;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/l/o;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/l/o;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/l/o;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
