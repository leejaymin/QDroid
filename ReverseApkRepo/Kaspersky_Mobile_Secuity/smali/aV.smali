.class public final LaV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaZ;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(I)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput p1, p0, LaV;->a:I

    .line 19
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, LaV;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, LaV;->b(I)V

    .line 11
    return-void
.end method
