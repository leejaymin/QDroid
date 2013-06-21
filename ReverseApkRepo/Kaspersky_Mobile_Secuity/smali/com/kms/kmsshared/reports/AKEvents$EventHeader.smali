.class public Lcom/kms/kmsshared/reports/AKEvents$EventHeader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private description:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private ordinal:I

.field private severity:I

.field private sync:Z

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->ordinal:I

    return v0
.end method

.method public getSeverity()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->severity:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->time:J

    return-wide v0
.end method

.method public isSync()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->sync:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->description:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setID(I)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->id:I

    .line 33
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->name:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setOrdinal(I)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput p1, p0, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->ordinal:I

    .line 63
    return-void
.end method

.method public setSeverity(I)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput p1, p0, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->severity:I

    .line 93
    return-void
.end method

.method public setSync(Z)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->sync:Z

    .line 43
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->time:J

    .line 53
    return-void
.end method
