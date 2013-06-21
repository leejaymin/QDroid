.class public Lcom/kms/kmsshared/reports/Event$GPSFindInfo;
.super Lcom/kms/kmsshared/reports/Event$Info;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(I[Ljava/io/Serializable;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/kms/kmsshared/reports/Event$Info;-><init>(I[Ljava/io/Serializable;I)V

    .line 155
    return-void
.end method


# virtual methods
.method public getDetails()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event$GPSFindInfo;->_arguments:[Ljava/io/Serializable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event$GPSFindInfo;->_arguments:[Ljava/io/Serializable;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event$GPSFindInfo;->_arguments:[Ljava/io/Serializable;

    aget-object v0, v0, v1

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event$GPSFindInfo;->_arguments:[Ljava/io/Serializable;

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 175
    :cond_0
    invoke-super {p0}, Lcom/kms/kmsshared/reports/Event$Info;->getDetails()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
