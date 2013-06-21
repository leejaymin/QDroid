.class public Lorg/jibx/runtime/impl/BackFillArray;
.super Ljava/lang/Object;
.source "BackFillArray.java"

# interfaces
.implements Lorg/jibx/runtime/impl/BackFillReference;


# instance fields
.field private m_array:[Ljava/lang/Object;

.field private m_index:I


# direct methods
.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 0
    .parameter "index"
    .parameter "array"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lorg/jibx/runtime/impl/BackFillArray;->m_index:I

    .line 58
    iput-object p2, p0, Lorg/jibx/runtime/impl/BackFillArray;->m_array:[Ljava/lang/Object;

    .line 59
    return-void
.end method


# virtual methods
.method public backfill(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 69
    iget-object v0, p0, Lorg/jibx/runtime/impl/BackFillArray;->m_array:[Ljava/lang/Object;

    iget v1, p0, Lorg/jibx/runtime/impl/BackFillArray;->m_index:I

    aput-object p1, v0, v1

    .line 70
    return-void
.end method
