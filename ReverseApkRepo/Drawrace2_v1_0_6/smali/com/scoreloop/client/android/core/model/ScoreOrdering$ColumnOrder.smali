.class public Lcom/scoreloop/client/android/core/model/ScoreOrdering$ColumnOrder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/model/ScoreOrdering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColumnOrder"
.end annotation


# instance fields
.field final a:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

.field final b:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$ColumnOrder;->a:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    .line 60
    iput-object p2, p0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$ColumnOrder;->b:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;

    .line 61
    return-void
.end method
