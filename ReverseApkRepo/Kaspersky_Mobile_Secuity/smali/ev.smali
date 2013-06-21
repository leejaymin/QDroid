.class public Lev;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Z

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lev;->a:Z

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 10
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lev;->a:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lev;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lev;->c:Ljava/lang/String;

    return-object v0
.end method
