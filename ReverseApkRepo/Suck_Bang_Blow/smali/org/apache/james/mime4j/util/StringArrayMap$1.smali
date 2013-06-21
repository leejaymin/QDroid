.class final Lorg/apache/james/mime4j/util/StringArrayMap$1;
.super Ljava/lang/Object;
.source "StringArrayMap.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/james/mime4j/util/StringArrayMap;->asStringEnum(Ljava/lang/Object;)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pValue:Ljava/lang/Object;

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->val$pValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->val$pValue:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 112
    .local v0, s:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->value:Ljava/lang/Object;

    .line 113
    return-object v0
.end method
