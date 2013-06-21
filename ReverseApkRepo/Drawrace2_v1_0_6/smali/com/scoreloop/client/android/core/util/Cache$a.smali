.class final Lcom/scoreloop/client/android/core/util/Cache$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/util/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/scoreloop/client/android/core/util/Cache$a;->c:Ljava/lang/Object;

    .line 27
    iput-wide p2, p0, Lcom/scoreloop/client/android/core/util/Cache$a;->a:J

    .line 28
    iput-wide p4, p0, Lcom/scoreloop/client/android/core/util/Cache$a;->b:J

    .line 29
    return-void
.end method


# virtual methods
.method final a()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/scoreloop/client/android/core/util/Cache$a;->a:J

    return-wide v0
.end method

.method final b()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/scoreloop/client/android/core/util/Cache$a;->b:J

    return-wide v0
.end method

.method final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/Cache$a;->c:Ljava/lang/Object;

    return-object v0
.end method
