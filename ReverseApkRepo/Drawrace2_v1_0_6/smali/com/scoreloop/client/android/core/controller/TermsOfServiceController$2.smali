.class final Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->a(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;->c:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 288
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;->c:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->c(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;->c:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    new-instance v1, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;->c:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    invoke-static {v2}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->c(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;->b:Ljava/util/Map;

    iget-object v5, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;->c:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog$Delegate;)V

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->a(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;)Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;

    .line 290
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;->c:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->d(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;)Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->show()V

    .line 301
    :goto_0
    return-void

    .line 292
    :cond_0
    new-instance v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2$1;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2$1;-><init>(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;)V

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;->c:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->a(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;)Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;->c:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    invoke-static {v0, v1, v2}, Lcom/scoreloop/client/android/core/ui/ProxyActivity;->a(Lcom/scoreloop/client/android/core/model/Continuation;Landroid/content/Context;Lcom/scoreloop/client/android/core/ui/ProxyActivity$Delegate;)V

    goto :goto_0
.end method
