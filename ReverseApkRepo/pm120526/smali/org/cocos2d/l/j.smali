.class public final Lorg/cocos2d/l/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lorg/cocos2d/l/j;

.field public static final b:Lorg/cocos2d/l/j;

.field public static final c:Lorg/cocos2d/l/j;

.field public static final d:Lorg/cocos2d/l/j;

.field public static final e:Lorg/cocos2d/l/j;

.field public static final f:Lorg/cocos2d/l/j;

.field public static final g:Lorg/cocos2d/l/j;

.field public static final h:Lorg/cocos2d/l/j;

.field public static final i:Lorg/cocos2d/l/j;


# instance fields
.field public j:I

.field public k:I

.field public l:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xa6

    const/16 v2, 0xff

    const/4 v1, 0x0

    invoke-static {v2, v2, v2}, Lorg/cocos2d/l/j;->a(III)Lorg/cocos2d/l/j;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/l/j;->a:Lorg/cocos2d/l/j;

    invoke-static {v2, v2, v1}, Lorg/cocos2d/l/j;->a(III)Lorg/cocos2d/l/j;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/l/j;->b:Lorg/cocos2d/l/j;

    invoke-static {v1, v1, v2}, Lorg/cocos2d/l/j;->a(III)Lorg/cocos2d/l/j;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/l/j;->c:Lorg/cocos2d/l/j;

    invoke-static {v1, v2, v1}, Lorg/cocos2d/l/j;->a(III)Lorg/cocos2d/l/j;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/l/j;->d:Lorg/cocos2d/l/j;

    invoke-static {v2, v1, v1}, Lorg/cocos2d/l/j;->a(III)Lorg/cocos2d/l/j;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/l/j;->e:Lorg/cocos2d/l/j;

    invoke-static {v2, v1, v2}, Lorg/cocos2d/l/j;->a(III)Lorg/cocos2d/l/j;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/l/j;->f:Lorg/cocos2d/l/j;

    invoke-static {v1, v1, v1}, Lorg/cocos2d/l/j;->a(III)Lorg/cocos2d/l/j;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/l/j;->g:Lorg/cocos2d/l/j;

    const/16 v0, 0x7f

    invoke-static {v2, v0, v1}, Lorg/cocos2d/l/j;->a(III)Lorg/cocos2d/l/j;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/l/j;->h:Lorg/cocos2d/l/j;

    invoke-static {v3, v3, v3}, Lorg/cocos2d/l/j;->a(III)Lorg/cocos2d/l/j;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/l/j;->i:Lorg/cocos2d/l/j;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/cocos2d/l/j;->j:I

    iput p2, p0, Lorg/cocos2d/l/j;->k:I

    iput p3, p0, Lorg/cocos2d/l/j;->l:I

    return-void
.end method

.method public constructor <init>(Lorg/cocos2d/l/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/cocos2d/l/j;->j:I

    iput v0, p0, Lorg/cocos2d/l/j;->j:I

    iget v0, p1, Lorg/cocos2d/l/j;->k:I

    iput v0, p0, Lorg/cocos2d/l/j;->k:I

    iget v0, p1, Lorg/cocos2d/l/j;->l:I

    iput v0, p0, Lorg/cocos2d/l/j;->l:I

    return-void
.end method

.method public static a(III)Lorg/cocos2d/l/j;
    .locals 1

    new-instance v0, Lorg/cocos2d/l/j;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/l/j;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/l/j;)V
    .locals 1

    iget v0, p1, Lorg/cocos2d/l/j;->j:I

    iput v0, p0, Lorg/cocos2d/l/j;->j:I

    iget v0, p1, Lorg/cocos2d/l/j;->k:I

    iput v0, p0, Lorg/cocos2d/l/j;->k:I

    iget v0, p1, Lorg/cocos2d/l/j;->l:I

    iput v0, p0, Lorg/cocos2d/l/j;->l:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "< r="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/cocos2d/l/j;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", g="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/l/j;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/l/j;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
