.class public abstract Lcom/sphericbox/syb/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static at:I


# instance fields
.field private final au:I

.field private final iconId:I

.field private final id:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget v0, Lcom/sphericbox/syb/ui/b;->at:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sphericbox/syb/ui/b;->at:I

    iput v0, p0, Lcom/sphericbox/syb/ui/b;->id:I

    .line 13
    iput p1, p0, Lcom/sphericbox/syb/ui/b;->au:I

    .line 14
    iput p2, p0, Lcom/sphericbox/syb/ui/b;->iconId:I

    .line 15
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/sphericbox/syb/ui/b;->id:I

    return v0
.end method

.method public abstract isEnabled()Z
.end method

.method public release()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public abstract run()V
.end method

.method public s()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/sphericbox/syb/ui/b;->au:I

    return v0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/sphericbox/syb/ui/b;->iconId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    const-string v1, "Action["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sphericbox/syb/ui/b;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "textId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sphericbox/syb/ui/b;->au:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
