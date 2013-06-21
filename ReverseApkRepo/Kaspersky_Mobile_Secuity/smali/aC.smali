.class public final LaC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaG;


# instance fields
.field private a:LaD;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(LaD;)V
    .locals 1
    .parameter

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, LaC;->b:I

    .line 23
    const/4 v0, 0x2

    iput v0, p0, LaC;->c:I

    .line 28
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, LaC;->d:Ljava/lang/String;

    .line 10
    iput-object p1, p0, LaC;->a:LaD;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, LaC;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x3

    iput v0, p0, LaC;->c:I

    .line 47
    invoke-virtual {p0}, LaC;->e()V

    .line 49
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, LaC;->c:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, LaC;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 39
    const/4 v0, 0x0

    iput v0, p0, LaC;->b:I

    .line 40
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, LaC;->d:Ljava/lang/String;

    .line 41
    iget-object v0, p0, LaC;->a:LaD;

    iget v1, p0, LaC;->b:I

    iget v2, p0, LaC;->c:I

    iget-object v3, p0, LaC;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, LaD;->a(IILjava/lang/String;)V

    .line 43
    return-void
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 52
    const/4 v0, 0x1

    iput v0, p0, LaC;->b:I

    .line 53
    iget-object v0, p0, LaC;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, LaC;->d:Ljava/lang/String;

    .line 56
    :cond_0
    iget-object v0, p0, LaC;->a:LaD;

    iget v1, p0, LaC;->b:I

    iget v2, p0, LaC;->c:I

    iget-object v3, p0, LaC;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, LaD;->a(IILjava/lang/String;)V

    .line 58
    return-void
.end method

.method public final f()V
    .locals 4

    .prologue
    .line 61
    const/4 v0, 0x2

    iput v0, p0, LaC;->b:I

    .line 62
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, LaC;->d:Ljava/lang/String;

    .line 63
    iget-object v0, p0, LaC;->a:LaD;

    iget v1, p0, LaC;->b:I

    iget v2, p0, LaC;->c:I

    iget-object v3, p0, LaC;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, LaD;->a(IILjava/lang/String;)V

    .line 65
    return-void
.end method
