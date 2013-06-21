.class public final Lcom/google/ads/internal/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/ads/internal/u;


# instance fields
.field private b:Lcom/google/ads/g;

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/google/ads/internal/u;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/ads/internal/u;-><init>(Lcom/google/ads/g;Z)V

    sput-object v0, Lcom/google/ads/internal/u;->a:Lcom/google/ads/internal/u;

    return-void
.end method

.method private constructor <init>(Lcom/google/ads/g;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/ads/internal/u;->b:Lcom/google/ads/g;

    .line 28
    iput-boolean p2, p0, Lcom/google/ads/internal/u;->c:Z

    .line 29
    return-void
.end method

.method public static a(Lcom/google/ads/g;)Lcom/google/ads/internal/u;
    .locals 1
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/ads/internal/u;->a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/internal/u;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/internal/u;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 41
    new-instance v0, Lcom/google/ads/internal/u;

    invoke-static {p0, p1}, Lcom/google/ads/g;->a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/ads/internal/u;-><init>(Lcom/google/ads/g;Z)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/ads/internal/u;->c:Z

    return v0
.end method

.method public final b()Lcom/google/ads/g;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/ads/internal/u;->b:Lcom/google/ads/g;

    return-object v0
.end method

.method public final b(Lcom/google/ads/g;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/ads/internal/u;->b:Lcom/google/ads/g;

    .line 74
    return-void
.end method
