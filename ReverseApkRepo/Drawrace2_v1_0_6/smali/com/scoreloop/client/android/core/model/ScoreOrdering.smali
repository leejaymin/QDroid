.class public Lcom/scoreloop/client/android/core/model/ScoreOrdering;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/model/ScoreOrdering$ColumnOrder;,
        Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;,
        Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/ScoreOrdering$ColumnOrder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/model/ScoreOrdering;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "result=desc;minorResult=desc;level=desc"

    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/ScoreOrdering;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/ScoreOrdering;->a:Ljava/util/List;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p1}, Lcom/scoreloop/client/android/core/model/ScoreOrdering;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 81
    const-string v0, "result=desc;minorResult=desc;level=desc"

    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/ScoreOrdering;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/ScoreOrdering;->a:Ljava/util/List;

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/ScoreOrdering;->a:Ljava/util/List;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/ScoreOrdering$ColumnOrder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    if-eqz p0, :cond_1

    .line 90
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 91
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 92
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 93
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 94
    aget-object v6, v5, v1

    invoke-static {v6}, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;->a(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    move-result-object v6

    .line 95
    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-static {v5}, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;->a(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;

    move-result-object v5

    .line 96
    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    .line 97
    new-instance v7, Lcom/scoreloop/client/android/core/model/ScoreOrdering$ColumnOrder;

    invoke-direct {v7, v6, v5}, Lcom/scoreloop/client/android/core/model/ScoreOrdering$ColumnOrder;-><init>(Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 111
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/ScoreOrdering;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$ColumnOrder;

    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 113
    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    :cond_0
    iget-object v1, v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$ColumnOrder;->a:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    iget-object v0, v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$ColumnOrder;->b:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;->asSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
