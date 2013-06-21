.class final Lcom/scoreloop/client/android/core/addon/RSSFeed$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lcom/scoreloop/client/android/core/model/Continuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/scoreloop/client/android/core/model/Continuation",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/model/Continuation;

.field private synthetic b:Lcom/scoreloop/client/android/core/addon/RSSFeed;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 668
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$4;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$4;->a:Lcom/scoreloop/client/android/core/model/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 668
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$4;->a:Lcom/scoreloop/client/android/core/model/Continuation;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$4;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$4;->a:Lcom/scoreloop/client/android/core/model/Continuation;

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lcom/scoreloop/client/android/core/model/Continuation;)V

    goto :goto_0
.end method
