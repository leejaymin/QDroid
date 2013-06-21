.class final Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/Exception;

.field private synthetic b:Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1$2;->b:Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1$2;->b:Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1;

    iget-object v0, v0, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1;->a:Lcom/scoreloop/client/android/core/socialprovider/AuthRequest;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1$2;->a:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest;->a(Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method
