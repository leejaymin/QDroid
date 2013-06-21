.class public abstract Lcom/kms/kmsshared/reports/Event;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _arguments:[Ljava/io/Serializable;

.field private _header:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;


# direct methods
.method public constructor <init>(I[Ljava/io/Serializable;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    invoke-direct {v0}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/reports/Event;->_header:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    .line 41
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->_header:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    invoke-virtual {v0, p1}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->setID(I)V

    .line 42
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->_header:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->setTime(J)V

    .line 43
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->_header:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->setSync(Z)V

    .line 44
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->_header:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    invoke-virtual {v0, p3}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->setOrdinal(I)V

    .line 45
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->_header:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    invoke-virtual {p0}, Lcom/kms/kmsshared/reports/Event;->getSeverity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->setSeverity(I)V

    .line 46
    iput-object p2, p0, Lcom/kms/kmsshared/reports/Event;->_arguments:[Ljava/io/Serializable;

    .line 47
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 36
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 32
    return-void
.end method


# virtual methods
.method public getDetails()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/kms/kmsshared/reports/Event;->_header:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    invoke-virtual {v1}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->getID()I

    move-result v1

    invoke-static {v1}, LfP;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->_arguments:[Ljava/io/Serializable;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->_header:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->getID()I

    move-result v0

    return v0
.end method

.method public abstract getSeverity()I
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->_header:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/kms/kmsshared/reports/Event;->_header:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    invoke-virtual {v1}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->getID()I

    move-result v1

    invoke-static {v1}, LfP;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public param(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->_arguments:[Ljava/io/Serializable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->_arguments:[Ljava/io/Serializable;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->_arguments:[Ljava/io/Serializable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->_arguments:[Ljava/io/Serializable;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
