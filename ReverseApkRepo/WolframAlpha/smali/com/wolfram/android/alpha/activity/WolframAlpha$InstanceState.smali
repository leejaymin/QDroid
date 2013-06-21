.class Lcom/wolfram/android/alpha/activity/WolframAlpha$InstanceState;
.super Ljava/lang/Object;
.source "WolframAlpha.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wolfram/android/alpha/activity/WolframAlpha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceState"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3ecaf07652b733dL


# instance fields
.field query:Lcom/wolfram/alpha/WAQuery;

.field queryResult:Lcom/wolfram/alpha/WAQueryResult;


# direct methods
.method constructor <init>(Lcom/wolfram/alpha/WAQuery;Lcom/wolfram/alpha/WAQueryResult;)V
    .locals 0
    .parameter "query"
    .parameter "queryResult"

    .prologue
    .line 3433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3435
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$InstanceState;->query:Lcom/wolfram/alpha/WAQuery;

    .line 3437
    iput-object p2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$InstanceState;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    .line 3439
    return-void
.end method
