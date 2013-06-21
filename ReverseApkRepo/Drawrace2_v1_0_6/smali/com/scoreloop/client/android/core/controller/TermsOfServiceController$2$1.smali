.class final Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;->run()V
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
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2$1;->a:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 292
    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2$1;->a:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;

    iget-object v0, v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;->c:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    invoke-static {v0, p1}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->a(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;Landroid/app/Activity;)Landroid/app/Activity;

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2$1;->a:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;

    iget-object v0, v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;->c:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    new-instance v1, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2$1;->a:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;

    iget-object v2, v2, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;->c:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    invoke-static {v2}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->e(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2$1;->a:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;

    iget-object v3, v3, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2$1;->a:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;

    iget-object v4, v4, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;->b:Ljava/util/Map;

    iget-object v5, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2$1;->a:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;

    iget-object v5, v5, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;->c:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog$Delegate;)V

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->a(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;)Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2$1;->a:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;

    iget-object v0, v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;->c:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->d(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;)Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->show()V

    return-void
.end method
