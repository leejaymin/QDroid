.class public final Ldu;
.super Ldt;


# instance fields
.field final synthetic ㅼ꽑嫄:Ldr;


# direct methods
.method public constructor <init>(Ldr;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Ldu;->ㅼ꽑嫄:Ldr;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ldt;-><init>(Ldr;Ljava/lang/String;Ljava/lang/Object;Lds;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ldt;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (!)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 癤욱븳援()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldu;->癤욱븳援:Ljava/lang/Object;

    return-object v0
.end method
