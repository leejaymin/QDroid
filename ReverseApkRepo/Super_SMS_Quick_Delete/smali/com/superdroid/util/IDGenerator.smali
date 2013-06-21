.class public Lcom/superdroid/util/IDGenerator;
.super Ljava/lang/Object;
.source "IDGenerator.java"


# static fields
.field private static _seed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x1

    sput v0, Lcom/superdroid/util/IDGenerator;->_seed:I

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static next()I
    .locals 1

    .prologue
    .line 11
    sget v0, Lcom/superdroid/util/IDGenerator;->_seed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/superdroid/util/IDGenerator;->_seed:I

    return v0
.end method

.method public static setSeed(I)V
    .locals 0
    .parameter "seed"

    .prologue
    .line 7
    sput p0, Lcom/superdroid/util/IDGenerator;->_seed:I

    .line 8
    return-void
.end method
