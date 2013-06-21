.class public interface abstract Lhg;
.super Ljava/lang/Object;


# static fields
.field public static final ㅼ꽑嫄:Ljava/lang/String;

.field public static final 弱밧:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".Subtitle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhg;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v0, Lhh;

    invoke-direct {v0}, Lhh;-><init>()V

    sput-object v0, Lhg;->弱밧:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public abstract next()I
.end method

.method public abstract previous()I
.end method

.method public abstract ㅼ꽑嫄()Z
.end method

.method public abstract 弱밧()Z
.end method

.method public abstract 洹()Ljava/util/Locale;
.end method

.method public abstract 癤욱븳援()I
.end method

.method public abstract 癤욱븳援(Z)V
.end method

.method public abstract 癤욱븳援(I)Z
.end method

.method public abstract 궗()I
.end method

.method public abstract 궗(I)Ljava/lang/Object;
.end method

.method public abstract 대쫫()Ljava/lang/String;
.end method

.method public abstract 먯꽌()I
.end method

.method public abstract 쇰뒗()Landroid/net/Uri;
.end method
