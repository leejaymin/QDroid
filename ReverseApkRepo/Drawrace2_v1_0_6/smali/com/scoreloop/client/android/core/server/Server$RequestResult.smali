.class public Lcom/scoreloop/client/android/core/server/Server$RequestResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/server/Server;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestResult"
.end annotation


# instance fields
.field public a:Ljava/lang/Exception;

.field public b:Lcom/scoreloop/client/android/core/server/Request;

.field public c:Lcom/scoreloop/client/android/core/server/Response;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/scoreloop/client/android/core/server/Server$RequestResult;->b:Lcom/scoreloop/client/android/core/server/Request;

    .line 107
    iput-object p2, p0, Lcom/scoreloop/client/android/core/server/Server$RequestResult;->c:Lcom/scoreloop/client/android/core/server/Response;

    .line 108
    iput-object p3, p0, Lcom/scoreloop/client/android/core/server/Server$RequestResult;->a:Ljava/lang/Exception;

    .line 109
    return-void
.end method
