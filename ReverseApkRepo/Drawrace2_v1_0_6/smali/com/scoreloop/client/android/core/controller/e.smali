.class final Lcom/scoreloop/client/android/core/controller/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/scoreloop/client/android/core/controller/e$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/e$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/e;->a:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/e;->b:Lcom/scoreloop/client/android/core/controller/e$a;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/e;->b:Lcom/scoreloop/client/android/core/controller/e$a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
