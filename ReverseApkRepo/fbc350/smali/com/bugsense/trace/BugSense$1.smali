.class final Lcom/bugsense/trace/BugSense$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bugsense/trace/BugSense$Processor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsense/trace/BugSense;->submitError(Landroid/content/Context;ILjava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginSubmit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handlerInstalled()V
    .locals 0

    return-void
.end method

.method public submitDone()V
    .locals 0

    return-void
.end method
